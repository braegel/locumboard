class UsersController < ApplicationController
  skip_before_filter :authorize, :only => [:create, :new, :emailvalidation]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save

      emailvalidation=Emailvalidation.new
      @emailvalidation = Emailvalidation.new
      @emailvalidation.user_id = @user.id
      @emailvalidation.key = (0...63).map{ ('a'..'z').to_a[rand(26)] }.join

      logger.debug "Emailvalidation created: #{@emailvalidation.inspect}"

      while Emailvalidation.where("user_id = #{@user.id}").exists? do
        Emailvalidation.where("user_id = #{@user.id}").first.destroy
      end

      if @emailvalidation.save
        UserMailer.welcome_email(@user).deliver
        redirect_to root_url, :notice => "User created. A validation email has been sent to #{@user.email}!"
      else
        render "new", :notice => "Validation key could not be created"
      end
    else
      render "new", :notice => "User could not be saved"
    end

  end
end
