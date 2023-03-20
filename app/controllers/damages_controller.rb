class DamagesController < ApplicationController
  def index
    @damages = Damage.all
  end

  def new
    @damage = Damage.new
  end

  def create
    @damage = Damage.new(damage_params)
    @damage.room = Room.find(params[:room_id])
    if @damage.save!
      redirect_to room_path(@damage.room)
    else
      render :new
    end
  end

  def show
    @damage = Damage.find(params[:id])
  end

  private

  def damage_params
    params.require(:damage).permit(:description, :room_id, :title, :photo)
  end
end
