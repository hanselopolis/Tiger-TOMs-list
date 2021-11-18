class HomepageController < ApplicationController
    def home
        @categories = Category.all

        render :home
    end
end
