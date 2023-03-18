class RoomsController < ApplicationController
  # before_action :set_room, only: :show

  def new
    @property = Property.find(params[:property_id])

    @room = Room.new
    @room.property = @property
  end

  def index
    @rooms = Room.all
  end

  def show
    set_room
    @damage = Damage.new
  end

  def create
    @room = Room.new(room_params)
    @room.property = Property.find(params[:property_id])
    redirect_to new_property_room_path if @room.save!
  end

  def destroy
    @room = Room.find(params[:id])
    @property = @room.property
    redirect_to new_property_room_path(@property) if @room.destroy!
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:name, :description)
  end
end
