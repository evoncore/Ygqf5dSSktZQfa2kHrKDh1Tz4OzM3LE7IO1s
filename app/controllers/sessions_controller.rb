class SessionsController < ApplicationController

  def new
  end

  def create
<<<<<<< HEAD
    user = User.find_by(login: params[:session][:login])
=======
    user = User.find_by(email: params[:session][:email].downcase)
>>>>>>> fd807bd2050b2487d2564e3900c5f67e7f02f16c
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
<<<<<<< HEAD
      @error_auth = "* Invalid Login or Password"
=======
      @error_auth = "* Invalid Email or Password"
>>>>>>> fd807bd2050b2487d2564e3900c5f67e7f02f16c
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end