module Api
  class SmoothiesController < ApplicationController
    def index
      smoothies = Smoothie.all
      render json: smoothies.to_json( only: [:name, :id, :calories])
    end

    def show
      smoothie = Smoothie.find(params[:id])
      render json: smoothie.to_json( only: [:name, :id, :calories, :total_fat, :sugar, :fiber], :include => {:fruits => { :only => :name }})
    end

    def create
      smoothie = Smoothie.new(smoothie_params)
      if smoothie.save
        render json: smoothie, status: 201
      else
        render json: {errors: smoothie.errors}, status: 422
      end
    end

    private

    def smoothie_params
      params.require(:smoothie).permit(:name, :id, :calories, :total_fat, :sugar, :fibar)
    end

  end
end
