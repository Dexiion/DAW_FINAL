class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find_by(params[:id])
  end

  def updateProfilePhoto
    @user = helpers.current_user
    @user.image.purge
    @user.image.attach(params[:image])
    redirect_to "/profile"
  end

  private

  def user_params
    params.require(:user).permit(:fullname, :username, :email, :password, :location, :telephone, :zipcode, :borndate, :image)
  end
end
