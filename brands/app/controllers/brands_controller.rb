class BrandsController < ApplicationController
  #http_basic_authenticate_with name: "brands", password: "brands"
  def index
    brands = Brand.all
    render :json => brands.as_json
  end

  def view
    params.require(:id)
    render :json => Brand.find(params[:id]).as_json
  end

  def destroy
    if brand = Brand.find_by_id(params[:id])
      brand.destroy
      #render :json => JSON("deleted" => params[:id])
      redirect_to "http://localhost:3000/"
    else
      render :json => JSON("error" => "Not found"), :status => 404
    end
  end

  def create
    brand = Brand.new
    brand.name=params[:name]
    brand.description = params[:description]
    brand.country = params[:country]
    brand.image = params[:image]
    brand.save
    redirect_to "http://localhost:3000/"
    #render :json => JSON("status" => 'ok')
  end

end
