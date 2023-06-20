class PlantsController < ApplicationController
    
    def create 
        plants = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plants, status: :created
    end

    def index 
        render json: Plant.all
    end 

    def show 
        render json: Plant.find_by(id: params[:id])
    end 
end

