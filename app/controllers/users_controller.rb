class UsersController < ApplicationController
  def new
  	@user = User.new
  end

   def create
    @user = User.new(users_params)
    # @user.password = 'helloasdasdasdsa'
    byebug
    if @user.save
      flash[:success] = "Account registered!"
      redirect_to root_path
    else
      render :new
    end
  end
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to pages_users_path
  end
  def index
    @users = User.all? 
  end
  private

  def users_params
    byebug
    params.require(:user).permit(:name,:email, :password,:password_confirmation)
  end

end

