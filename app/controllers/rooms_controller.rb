class RoomsController < ApplicationController
  # before_action :set_room, only: :show

  def new
    @property = Property.find(params[:property_id])

    @room = Room.new
  end

  def index
    @rooms = Room.all
  end

  def show
    set_room
  end

  def create
    @room = Room.new(room_params)
    @room.property = Property.find(params[:property_id])
    @room.save!
    redirect_to room_path(@room)
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:name, :description)
  end
end
