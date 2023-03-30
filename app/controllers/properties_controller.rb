class PropertiesController < ApplicationController
  def index
    @properties = Property.where(user: current_user)
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.visible = true
    @property.user = current_user
    if @property.save
      redirect_to property_path(@property)
    else
      flash.now[:error] = "Please correct the following errors and try again."
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @property = Property.find(params[:id])
    user = User.first
    #UserMailer.welcome.deliver_now
  end

  private

  def property_params
    params.require(:property).permit(:street, :city, :postcode, :move_in, :move_out, :visible)
  end
end
