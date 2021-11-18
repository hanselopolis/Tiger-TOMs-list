class CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render :index
    end

    def show 
        @category = Category.find(params[:id])
        @ads = @category.ads.all
        render :show
    end

end
