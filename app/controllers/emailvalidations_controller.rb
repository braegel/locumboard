class EmailvalidationsController < ApplicationController
  skip_before_filter :authorize

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
