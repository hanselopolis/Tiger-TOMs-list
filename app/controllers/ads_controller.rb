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

    # Flashes not working
    def create
        @category = Category.find(params[:ad][:category_id]) 
        @ad = current_user.ads.build(params.require(:ad).permit(:title, :description, :price, 
        :email, :phone, :category_id, :addr, :city, :state, :images, :zip))
        @ad.category = @category
        if @ad.save
          flash[:success] = "Ad saved successfully"
          redirect_to category_url(@category)
        else
          flash.now[:error] = "Ad could not be saved"
          render :new
        end
      end

end
