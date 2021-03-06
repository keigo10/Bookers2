class UsersController < ApplicationController

 before_action :authenticate_user!
  def index
      @user= current_user
  	  @users =  User.all
      @book = Book.new
  end
  def show
  	  @user = User.find(params[:id])
      @book = Book.new
      @books = Book.all
  end

  def create
    user = User.new(user_params)
    user.save
  end

  def top
     @user = current_user
  end

  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
      redirect_to user_path(current_user.id)
    end
  end

 def update
  @user = User.find(params[:id])
   if @user.update(user_params)
     flash[:notice] = "successfully"
     redirect_to user_path(@user.id)
   else
     render :edit
  end
 end

 private
  def user_params
    params.require(:user).permit(:name, :email, :profile_image, :introduction)
  end

end
