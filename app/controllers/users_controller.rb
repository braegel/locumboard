class UsersController < ApplicationController
  skip_before_filter :authorize, :only => [:create, :new, :emailvalidation]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.welcome_email(@user).deliver
      redirect_to root_url, :notice => "User created. A validation email has been sent to #{@user.email}!"
    else
      render "new"
    end
  end

  def emailvalidation
#todo
      redirect_to root_url , :notice => "Account validated!"

  end

end
