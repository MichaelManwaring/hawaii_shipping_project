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
  	@trip.status=2
  	
  end

  def edit
  end
end
