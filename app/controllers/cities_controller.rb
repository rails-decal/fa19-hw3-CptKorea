class CitiesController < ApplicationController
  def create
  	@cityName = params[:city]
    if @cityName
        city = City.new(
        name: @cityName,
        landmark: params[:landmark],
        population: params[:population]
        )
        city.save
    end
    @cities = City.all.values()
    render 'view'
  end

  def view
    if params[:city].present? and City.all.has_key?(params[:city].to_sym)
      @city = params[:city]
      City.all[@city.to_sym]
    end
    @cities = City.all.values()
    render 'view'
  end

  def new
    render 'new'
  end

  def update
    if params[:city].present?
      @city = params[:city]
      @population = params[:population]
      @landmark = params[:landmark]
    else
      print "City does not exist yet"
    end
    render 'update'
  end

  def reset
    render 'reset'
  end

  def delete
    for city in City.all.values()
      City.delete(city)
    end
    @cities = City.all.values()
    render 'view'
  end
end
