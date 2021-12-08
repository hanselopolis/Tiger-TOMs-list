class HomepageController < ApplicationController
    def home
        @q = Ad.ransack(params[:q])
        @category = Category.all
        @ad = @q.result
        #@ad = Ad.all
        render :home
    end
    
end
