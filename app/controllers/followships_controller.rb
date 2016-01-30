class FollowshipsController < ApplicationController
  def index
  end
  def create
    # creates a followship and attaches it to both captain and ship
    @followship=Followship.create()
    current_user.followships << (@followship)
    @ship = Ship.find(params[:ship_id]) 
    puts @ship
    @ship.followships << (@followship)
  end
end
