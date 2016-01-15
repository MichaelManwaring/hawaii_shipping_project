class HomeController < ApplicationController
  def index
  	# this allows the root_path to be used for taking a signed in user back to their home screen.
  	if current_user != nil
  		redirect_to users_path
  	end
  	# for sign up form
  	@user=User.new
  	# for users list
  	@users=User.all
  end
end
