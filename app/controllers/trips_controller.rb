class TripsController < ApplicationController
  before_filter :authorize
  def create
  	
  end

  def index
  end

  def new

  end

  def show
  	@trip=Trip.find(params[:id])
  	@trip.status=1
  	@trip.save
  	@user=current_user
  end

  def edit
  end
end
