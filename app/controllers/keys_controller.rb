class KeysController < ApplicationController
  def index
    @keys = Key.all
  end

  # def show
  #   @key = Key.find(params[:id])
  # end

  # def new
  #   @key = Key.new
  # end

  # def create
  #   @key = Key.new(key_params)
  #   if @key.save
  #     redirect_to @key
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @key = Key.find(params[:id])
  # end

  # def update
  #   @key = Key.find(params[:id])
  #   if @key.update(key_params)
  #     redirect_to @key
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @key = Key.find(params[:id])
  #   @key.destroy
  #   redirect_to keys_path
  # end

  # private

  # def key_params
  #   params.require(:key).permit(:title, :description, :type_of_key, :property_id)
  # end
end
