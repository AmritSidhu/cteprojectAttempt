class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to '/'
      flash[:danger] = 'You have succesfully created your account'
    else
      render 'new'
      flash[:danger] = 'There was an error creating your account'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
