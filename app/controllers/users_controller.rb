class UsersController < ApplicationController
  skip_before_filter :authorize, :only => [:create, :new, :emailvalidation]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      Emailvalidation.create
      redirect_to root_url, :notice => "User created. A validation email has been sent to #{@user.email}!"
    else
      render "new"
    end
  end
end
