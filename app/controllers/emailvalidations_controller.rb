class EmailvalidationsController < ApplicationController
  skip_before_filter :authorize

  def validate
    puts :key
    redirect_to root_url , :notice => "Account validated!"
  end

end
