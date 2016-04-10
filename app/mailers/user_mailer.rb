class UserMailer < ApplicationMailer
  default from: 'sentyurin@cosy-network.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://dry-ridge-98550.herokuapp.com/sign_in'
    mail(to: @user.email, subject: 'Welcome to Cosy-Network!')
  end

end