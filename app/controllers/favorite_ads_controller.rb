class FavoriteAdsController < ApplicationController
    #before_action :set_ad

    def create
        @category = Category.all
        @ad = Ad.find(params[:ad_id])
        if Favorite.create(favorited: @ad, user: current_user)
            flash[:success] = "Added to favorites!"
            redirect_to favorites_path
        else
            flash[:error] = "Failed favorite... wamp wamp"
            redirect_to ad_path(@ad)
        end
    end

    def show
        @fav_ad = Favorite.find(params[:id])
        render :show
    end


  def destroy   
    @ad = Ad.find(params[:ad_id] || params[:id])
    Favorite.where(favorited_id: @ad.id, user_id: current_user.id).first.destroy
    flash[:success]= "Ad is no longer in favorites"
    redirect_to ad_path(@ad)
  end

    def index
        @category = Category.all
        @ad = Ad.all
        @favorite = current_user.favorite_ads
        render :index
    end

    def show
        @fav_ad = Ad.find(params[:id])
        render :show
    end
  
#   private
  
#     def set_ad
#         @ad = Ad.find(params[:ad_id] || params[:id]) 
#     end
 
end
