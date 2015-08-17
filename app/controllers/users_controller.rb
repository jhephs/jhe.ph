class UsersController < ApplicationController
  def show
    @account = params[:username].present? ? Account.find(params[:username]) : current_account

    respond_with @account
  end
end
