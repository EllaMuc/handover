class KeysController < ApplicationController
  def index
    @keys = Key.all
  end

  def show
    @key = Key.find(params[:id])
  end

  def new
    @property = Property.find(params[:property_id])
    @key = Key.new
  end

  def create
    @key = Key.new(key_params)
    @key.property = Property.find(params[:property_id])
    if @key.save!
      redirect_to property_keys_path
    else
      render :new
    end
  end

  def edit
    @key = Key.find(params[:id])
  end

  def update
    @key = Key.find(params[:id])
    if @key.update(key_params)
      redirect_to @key
    else
      render :edit
    end
  end

  def destroy
    @key = Key.find(params[:id])
    @key.destroy
    redirect_to keys_path
  end

  private

  def key_params
    params.require(:key).permit(:title, :description, :type_of_key )
  end
end
