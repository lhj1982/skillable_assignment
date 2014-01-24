class UsersController < ApplicationController
  #before_filter :require_authentication, only: [:show]
  before_filter :authenticate,
                :only => [:index, :edit, :update, :destroy,
                          :followers, :following]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => :destroy
  def new
    @user  = User.new
    @title = "Sign up"
  end
  
  def index
    
  end
  

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      redirect_to @user, :flash => { :success => "Welcome to the Sample App!" }
    else
      @title = "Sign up"
      render 'new'
    end
  end
  
  def login

  end
  def show
    @user = User.where(id: params[:id]).first
  end
end
