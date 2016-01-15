class UsersController < ApplicationController
  def index
  	@user=current_user
  end

  def new
  end

  def show
  end

  def edit
  end
  def create

  	@user=User.new(user_params)
  	if @user.save()
  		flash[:alert] = "Saved #{@user.fname}'s Profile!"
  	else
		flash[:alert] = "Could Not Save User"
  	end 
  	redirect_to root_path
  end

  private

  def user_params
  	params.require(:user).permit(:fname, :lname, :email, :company, :password, :password_confirmation)
  end
end
