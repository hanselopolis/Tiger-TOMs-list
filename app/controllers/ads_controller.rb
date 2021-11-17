class AdsController < ApplicationController

    before_action :authenticate_user!, except: [:index]

    def show
        @category = Category.find(params[:category_id])
        @ad = @category.ads.find(params[:id])
        render :show
    end

    def new
        @category = Category.find(params[:category_id])
        @ad = Ad.new
        render :new
        
    end

end
