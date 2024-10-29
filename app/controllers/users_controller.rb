class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @posts = @user.posts
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to @user, notice: 'プロフィールが更新されました。'
    else
      render :edit
    end
  end
  
  def destroy
    current_user.destroy
    redirect_to new_user_registration_path, notice: 'アカウントが削除されました。'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
