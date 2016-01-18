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
  	@ship.user_id = @current_user.id
	  	if @ship.save()
	  		flash[:alert] = "Ship Saved!"
	  	else
			  flash[:alert] = "Could Not Save Ship"
	  	end
	 redirect_to root_path
  end

  def new
  	@ship = Ship.new
  	@user = current_user
  end

  def show
    @ship = Ship.find(params[:id])
    @routes = []
    Route.all.each do |r| 
      if r.origin == @ship.current_location
        @routes.push(r)
      end
    end
    @jobs=Job.all
    @trip=Trip.create(status: 0)
    @ship.trips.push(@trip)
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
  # Method to allow user to follow another user.

  def follow
    puts "_________________BAHHHHHHH_______________________"
    @followship=Followship.create(ship_id: :ship_id)
    current_user.followships << (@followship)
  end

  private

  # this provdes additional security by only allowing the permitted variables to be accessed and changed.

  def ship_params
    params.require(:ship).permit(:ship_name, :container_space, :current_location, :photo)
  end
end
