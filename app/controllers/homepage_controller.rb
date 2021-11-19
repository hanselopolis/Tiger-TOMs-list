class HomepageController < ApplicationController
    def home
        @categories = Category.all
        # logger"-----#{params[:category_id]}---"
        @category = Category.find(params[:category_id])
        @ads = @category.ads.all
        @ad = @category.ads.find(params[:id])
        render :home
    end
    
end
