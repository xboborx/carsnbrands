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
      render :json => JSON("deleted" => params[:id])
    else
      render :json => JSON("error" => "Not found"), :status => 404
    end
  end



end
