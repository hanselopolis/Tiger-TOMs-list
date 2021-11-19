class HomepageController < ApplicationController
    def home
        @category = Category.all
        @ad = Ad.all
        render :home
    end
end
