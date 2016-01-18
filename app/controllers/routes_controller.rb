class RoutesController < ApplicationController
  def index
  end

  def show
  	@jobs=Job.all
  	@user=current_user
  	@route=Route.find(params[:id])
  	@trip=Trip.last
  	@route.trips.push(@trip)
  end
end
