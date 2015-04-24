class CarsController < ApplicationController
  #http_basic_authenticate_with name: "cars", password: "cars"
  def index
    cars = Car.all
    render :json => cars.as_json
  end

  def view
    params.require(:id)
    render :json => Car.find(params[:id]).as_json
  end

  def destroy
    if car = Car.find_by_id(params[:id])
      car.destroy
      redirect_to "http://localhost:3000/"
      #render :json => JSON("deleted" => params[:id])
    else
      render :json => JSON("error" => "Not found"), :status => 404
    end
  end

  def create
    car = Car.new
    car.model=params[:model]
    car.year = params[:year]
    car.brand_id = params[:brand_id]
    car.color = params[:color]
    car.image = params[:image]
    car.save
    redirect_to "http://localhost:3000/"
    #render :json => JSON("status" => 'ok')
  end



end
