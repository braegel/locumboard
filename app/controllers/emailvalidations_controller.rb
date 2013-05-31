class EmailvalidationsController < ApplicationController
  skip_before_filter :authorize

  def new
    @emailvalidation = Emailvalidation.new
    @emailvalidation.key = (0...63).map{ ('a'..'z').to_a[rand(26)] }.join
  end

  def create(userid)
    @emailvalidation = Emailvalidation.new(user_id: userid)
    old = Emailvalidation.where("user_id = #{userid}")
    old.destroy
    if @emailvalidation.safe
      UserMailer.welcome_email(user).deliver
    end
  end

  def validate
    if Emailvalidations.where("key = #{params[:key]}").exists?
      emailvalidation = Emailvalidations.where("key = #{params[:key]}");
#todo: validate in user db
      redirect_to root_url , :notice => "Account validated!"
    else
      redirect_to root_url , :notice => "Key invalid!"
    end
  end

end
