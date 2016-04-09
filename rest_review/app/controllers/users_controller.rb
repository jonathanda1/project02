class UsersController < ApplicationController
    def create
      user = User.new(user_params)
      if user.save
        flash[:success] = 'You are registered!'
        session[:user_id] = @user.id
        redirect_to root_path
      else
        flash[:error] = 'Registration has failed!'
        render 'new'
      end
    end

  def new
    @user = User.new
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
