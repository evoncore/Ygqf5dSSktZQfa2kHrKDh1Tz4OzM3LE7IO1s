class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy, :following, :followers]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  WillPaginate.per_page = 12

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
<<<<<<< HEAD
      render 'edit'
=======
      redirect_to @user
>>>>>>> fd807bd2050b2487d2564e3900c5f67e7f02f16c
    else
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Capybara Studio"
<<<<<<< HEAD
      UserMailer.welcome_email(@user).deliver_now
=======
>>>>>>> fd807bd2050b2487d2564e3900c5f67e7f02f16c
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

  def following
    WillPaginate.per_page = 20
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  def microposts
  end

  private

    def user_params
<<<<<<< HEAD
      params.require(:user).permit(:login, :name, :email, :password, :password_confirmation, :avatar)
=======
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
>>>>>>> fd807bd2050b2487d2564e3900c5f67e7f02f16c
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end
