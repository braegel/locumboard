class UserMailer < ActionMailer::Base
  default from: "bernd@braegelmann.de"

  def welcome_email(user)
    @user = user
    @url  = "http://www.locumboard.org/users/#{user.id}/emailvalidation"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
end
