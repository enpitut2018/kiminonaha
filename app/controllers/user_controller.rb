class UserController < ApplicationController
  def show
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end
end
