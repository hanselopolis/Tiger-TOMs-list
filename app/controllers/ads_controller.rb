class AdsController < ApplicationController

    before_action :authenticate_user!, except: [:index]
    before_action :require_permission, except: [:show, :new, :create]
    add_flash_types :info, :error, :warning, :success

    def require_permission
      if Ad.find(params[:id]).user != current_user
        redirect_to categories_path, flash: { error: "You do not have permission to do that" }
      end
    end

    def show
        @category = Category.find(params[:category_id])
        @ad = Ad.find(params[:id])
        render :show
    end

    def new
        @category = Category.find(params[:category_id])
        @ad = Ad.new
        render :new
        
    end

    def create
        @category = Category.find(params[:ad][:category_id]) 
        @ad = current_user.ads.build(params.require(:ad).permit(:title, :description, :price, 
        :email, :phone, :category_id, :addr, :city, :state, :zip, images: []))
        @ad.category = @category
        @ad.status = "ACTIVE"
        if @ad.save
          flash[:success] = "Ad posted successfully"
          redirect_to category_url(@category)
        else
          flash.now[:error] = "Ad could not be posted"
          render :new
        end
    end

    def edit
      @category = Category.find(params[:category_id])
      @ad = Ad.find(params[:id])
      render :edit  
    end

    def update 
      @category = Category.find(params[:category_id]) 
      @ad = @category.ads.find(params[:id])
      if @ad.update(params.require(:ad).permit(:title, :description, :price, :email, :phone, :category_id, :addr, :city, :state, :zip, images: []))
        flash[:success] = "Ad updated successfully"
        redirect_to ad_url(@category, @ad)
      else
        flash.now.alert = "Ad could not be updated"
        render :new
      end
    end

    def destroy 
      @category = Category.find(params[:category_id])
      @ad = @category.ads.find(params[:id])

      @ad.destroy
      flash[:success] = "Ad deleted successfully"
      redirect_to category_url(@category)

    end
end
