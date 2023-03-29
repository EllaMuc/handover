class RoomsController < ApplicationController
  # before_action :set_room, only: :show

  def new
    @property = Property.find(params[:property_id])

    @room = Room.new
    @room.property = @property
  end

  def index
    @property = Property.find(params[:property_id])
    @rooms = @property.rooms
  end

  def show
    set_room
    @damage = Damage.new
  end

  def create
    @room = Room.new(room_params)

    @property = Property.find(params[:property_id]) # Setze die `@property`-Variable
    @room.property = @property # Verwende die `@property`-Variable, um die Beziehung zu erstellen
    if @room.save
      redirect_to room_path(@room) # Verwende die `@room`-Variable, um die Umleitung durchzuführen
    else
      render :new
    end

  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to property_path(@room.property)

  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:name, :description)
  end
end
