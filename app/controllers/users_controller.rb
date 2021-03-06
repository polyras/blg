class UsersController < ApplicationController
  before_filter :authenticate!
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to users_path, :notice => 'User created.'
    else
      render :action => 'new'
    end
  end
end
