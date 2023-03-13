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
      redirect_to room_damage_path(@damage.room, @damage)
    else
      render :new
    end
  end

  def show
    @damage = Damage.find(params[:id])
  end

  private

  def damage_params
    params.require(:damage).permit(:description, :room_id, :photo)
  end
end
