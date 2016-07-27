class AdminController < ApplicationController
  before_action :authenticate_user!, only: :Show

  def show
    @user = User.find(params[:id])
    render 'users/show'
  end
end
