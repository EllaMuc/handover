class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.visible = true
    @property.user = current_user
    @property.save!
    redirect_to properties_path
  end

  private
    def property_params
      params.require(:property).permit(:address, :city, :postcode, :move_in, :move_out, :visible)
    end
end
