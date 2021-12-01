class FavoritesController < ApplicationController

    def index
        @fav = Favorite.all
        @ad = Ad.all
        @user = User.all
        render :index
    end

   


end
