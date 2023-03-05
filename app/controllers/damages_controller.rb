class DamagesController < ApplicationController
  def index
    @damages = Damage.all
  end

  def new
    @damage = Damage.new
  end

  def create
    @damage = Damage.new(damage_params)

    if @damage.save
      redirect_to @damage
    else
      render 'new'
    end
  end

  def show
    @damage = Damage.find(params[:id])
  end

  private

  def damage_params
    params.require(:damage).permit(:description, :room_id)
  end
end
