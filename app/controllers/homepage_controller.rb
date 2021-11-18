class HomepageController < ApplicationController
    def home
        @hpcategories = Category.all
        # logger"-----#{params[:category_id]}---"
        # @hpcategory = Category.find(params[:category_id])
        # @hpads = @hpcategory.ads.all
        # @hpad = @hpcategory.ads.find(params[:id])
        render :home
    end
end
