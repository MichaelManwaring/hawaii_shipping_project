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
  	# for some reason, ruby/rails doesnt want to allow creation of user sub-classes 
  	# without first creating an unrelated blank user.
  	@user=User.new
  	# Differentiating user types
  	if params[:commit] == "Sign Up as Captain!"
		@user=Captain.new(user_params)
  	else
  		@user=Customer.new(user_params)
  	end
  	# verifying save
  	if @user.save()
  		flash[:alert] = "Saved #{@user.fname}'s #{@user.type} Profile!"
  	else
		flash[:alert] = "Could Not Save User"
  	end 
  	redirect_to root_path
  end
  def destroy
  	@user=current_user
  	@user.delete
  	reset_session
  	redirect_to root_path
  end

  private

  def user_params
  	params.require(:user).permit(:fname, :lname, :email, :company, :password, :password_confirmation)
  end
end
