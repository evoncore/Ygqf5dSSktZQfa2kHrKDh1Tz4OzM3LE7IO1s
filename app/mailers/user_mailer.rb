class UserMailer < ApplicationMailer
  default from: 'sentyurin@cosy-network.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://cosy-network.herokuapp.com/sign_in'
    mail(to: @user.email, subject: 'Welcome to Cosy-Network!')
  end

end