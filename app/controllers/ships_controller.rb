class ShipsController < ApplicationController
  before_filter :authorize

  def index
  	@ships = Ship.all
  	@user = current_user
  end

  def create
  	puts "USER IS: "
  	puts current_user
  	puts current_user.inspect
  	puts "*********************"
  	@current_user = current_user
  	@ship = Ship.new(ship_params)
  	@current_user.ships.push(@ship)
	  	if @ship.save()
	  		flash[:alert] = "Ship Saved!"
	  	else
			  flash[:alert] = "Could Not Save Ship"
	  	end
	 redirect_to users_path
  end

  def new
  	@ship = Ship.new
  	@user = current_user
  end

  def show
  	@ship = Ship.find(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
    @user = current_user
	  @a = params[:id]
	  association = Ship.where(id: @a)
	  association.delete_all
	  redirect_to (:back)  
  end

  private

  # this provdes additional security by only allowing the permitted variables to be accessed and changed.

  def ship_params
    params.require(:ship).permit(:ship_name, :container_space, :current_location, :photo)
  end
end
