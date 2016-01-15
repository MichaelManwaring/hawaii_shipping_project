class ShipsController < ApplicationController
  before_filter :authorize

  def index
  	@ships = Ship.all
  end

  def create
  	@current_user = current_user
  	@ship = Ship.new(ship_params)
  	@current_user.ships.push(@ship)
	  	if @ship.save()
	  		flash[:alert] = "Ship Saved!"
	  	else
			flash[:alert] = "Could Not Save Ship"
	  	end
	redirect_to root_path
  end

  def new
  	@ship = Ship.new
  	@current_user = current_user
  end

  def show
  	@ship = Ship.find(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  # this provdes additional security by only allowing the permitted variables to be accessed and changed.

  def ship_params
    params.require(:ship).permit(:ship_name, :container_space, :current_location)
  end
end
