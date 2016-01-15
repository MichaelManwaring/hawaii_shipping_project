class UsersController < ApplicationController
  def index
  	@user=current_user
  end

  def new
  end

  def show
    @user = User.find(params[:id])
    @user = current_user
  end

  def edit
  	@user=current_user
  end
  def update
  	@user=current_user
  	if @user.type == 'Captain'
  		@user.update(capt_params)
  	else
  		@user.update(cust_params)
  	end
  	redirect_to root_path
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
  def capt_params
  	params.require(:captain).permit(:fname, :lname, :email, :company, :password, :password_confirmation)
  end
  def cust_params
  	params.require(:customer).permit(:fname, :lname, :email, :company, :password, :password_confirmation)
  end

end
