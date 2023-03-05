class ReadingsController < ApplicationController
  def index
    # code to retrieve all readings
    @readings = Reading.all
  end

  def show
    # code to retrieve a single reading
    @reading = Reading.find(params[:id])
  end

  def new
    # code to create a new reading
    @reading = Reading.new
  end

  def create
    # code to save a new reading
    @reading = Reading.new(reading_params)
    if @reading.save
      redirect_to @reading
    else
      render :new
    end
  end

  def edit
    # code to retrieve a reading for editing
    @reading = Reading.find(params[:id])
  end

  def update
    # code to update a reading
    @reading = Reading.find(params[:id])
    if @reading.update(reading_params)
      redirect_to @reading
    else
      render :edit
    end
  end

  def destroy
    # code to delete a reading
    @reading = Reading.find(params[:id])
    @reading.destroy
    redirect_to readings_path
  end

  private

  def reading_params
    params.require(:reading).permit(:value, :date, :property_id)
  end
end
