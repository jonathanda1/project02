class UsersController < ApplicationController
   def new
    @user = User.new
  end

  def create
      user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        redirect_to root_path
        flash[:success] = 'You are registered!'
      else
        flash[:error] = 'Registration has failed!'
        redirect_to new_user_path
      end
  end

  def update
  end

  def show
  end

  private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :name)
    end
end
