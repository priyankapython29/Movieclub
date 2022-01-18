class UserMailer < ApplicationMailer

 def notify_user(user)
    @contact = params[:contactform]
    @user = user
    mail(to: @user.email, subject: "welcome to movieclub")

 end

 def current_user
  @user = User.find(sessions[:user_id])
 end

end