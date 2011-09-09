class UserMailer < ActionMailer::Base
  default :from => "notifications@example.com"
 
  def send_email(user)
    @user = user
    mail(:to => user, :subject => "Welcome to My Awesome Site")
  end
end
