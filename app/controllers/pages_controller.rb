class PagesController < ApplicationController
  def about
  end

  def index
    @properties = Property.all
  end

  def price
  end
end
