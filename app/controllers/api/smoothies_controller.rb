module Api
  class SmoothiesController < ApplicationController
    def index
      @smoothies = Smoothie.all
      render :index
    end

    def show
      @smoothie = Smoothie.find(params[:id])
      render :show
    end

    def create
      @smoothie = Smoothie.new(smoothie_params)
      if smoothie.save
        render :show
      else
        render json: {errors: @smoothie.errors}, status: 422
      end
    end

    private

    def smoothie_params
      params.permit(:name, :id, :calories, :total_fat, :sugar, :fiber)
    end

  end
end
