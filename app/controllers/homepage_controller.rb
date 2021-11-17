class HomepageController < ApplicationController
    def home
        @hpcategories = Category.all
        render :home
    end
end
