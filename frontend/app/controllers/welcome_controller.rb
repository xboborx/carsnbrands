class WelcomeController < ApplicationController
  def index
    #car = Car.all
    brand = Brand.all

    # Car by id
    # Car.get(1)

    # Cars by array of id
    # car= Car.get(:byid, :id => [1, 3])

    # Delete

    #p car.as_json
    arr = [1,  3]
    #p brand= Brand.find(1)

    #brand.destroy

    @cars = getAllCars

    @brands = getAllBrands



    #render :json => brand.as_json

  end

  def car

  end

  def brand

  end

  def addBrand

  end

  def addCar
    @brandnames
  end

  private

  def getAllCars
    return Car.all
  end

  def getAllBrands
    return Brand.all
  end

  def getAllBrandNames
    return
  end

  def getBrandNameFromCar(car)
    return Brand.find_by_id(car.brand_id).name
  end
end
