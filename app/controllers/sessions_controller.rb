class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find auth_params
    login(@user.email, @user.password)
    redirect_to root_path, notice: 'Login successfull'
  end

  def destroy
    logout
    redirect_to root_path, notice: 'Logout successfull'
  end

  private

  def auth_params
    params.require(:auth).permit(:email, :password)
  end
end
