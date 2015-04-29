module Api
  class SmoothiesController < ApplicationController
    def index
      @smoothies = Smoothie.all
      render :index
    end

    def show
      @smoothie = Smoothie.find(params[:id])
      render :show
      #render json: smoothie.to_json( only: [:name, :id, :calories, :total_fat, :sugar, :fiber], :include => {:fruits => { :only => :name }})
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
      params.permit(:name, :id, :calories, :total_fat, :sugar, :fiber)
    end

  end
end
