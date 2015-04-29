module Api
  class SmoothiesController < ApplicationController
    def index
      smoothies = Smoothie.all
      render json: smoothies, only: [:name, :id, :calories]
    end
    def search
      search_term = params[:s]
      smoothies = Smoothie.where("name ILIKE ?","%#{search_term}%")
      render json: smoothies
    end

    def show
      smoothie = Smoothie.find(params[:id])
      render json: smoothie,except: [:created_at, :updated_at], include: {fruits: { only: :name }}
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
