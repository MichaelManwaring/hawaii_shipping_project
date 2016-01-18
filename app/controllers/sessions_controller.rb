class SessionsController < ApplicationController
  def new
  end
  def create
	user = User.find_by_email(params[:email])
	if user && user.authenticate(params[:password])
		puts "_________________BAHHHHHHH_______________________"
		session[:user_id] = user.id
		redirect_to root_path, :notice => "Welcome back, #{user.fname}"
	else
		puts "Didnt pass ++++++++++++++++++++++++++++"
		flash[:alert] = "Invalid email or password"
		redirect_to root_path
	end
  end
  def show
  end
  def destroy
  	session[:user_id] = nil
	redirect_to root_path, :notice => "Successfully Logged Out"
  end
end


