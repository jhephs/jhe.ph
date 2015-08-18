class UsersController < ApplicationController
  def index
    @users = User.all

    respond_with @users
  end

  def show
    @user = current_user

    respond_with @user
  end

  def new
    @user = User.new

    respond_with @user
  end
end
