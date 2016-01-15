class HomeController < ApplicationController
  def index
  	if current_user != nil
  		redirect_to users_path
  	end
  	@user=User.new
  	@users=User.all
  end
end
