module Api
  class SmoothiesController < ApplicationController
    def index
      smoothies = Smoothie.all
      render json: smoothies.to_json( only: [:name, :id])
    end

    def show
      smoothie = Smoothie.find(params[:id])
      render json: smoothie.to_json( only: [:name, :id, :calories, :total_fat, :sugar, :fiber], :include => {:fruits => { :only => :name }})
    end
  end

end
