class UsersController < ApplicationController
  before_action :find_user, only: [:show, :destroy]

  def index
    @users = User.all
  end

  def show; end

  def destroy
    @user.destroy

    redirect_back(fallback_location: root_path)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end  
end  