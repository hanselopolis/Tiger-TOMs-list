class PurchasesController < ApplicationController

    def new
        @category = Category.find(params[:category_id])
        @ad = Ad.find(params[:ad_id])
        @purchase = Purchase.new
        render :buy
    end

    def create
        @category = Category.find(params[:category_id])
        @ad = Ad.find(params[:ad_id])
        @purchase = @category.ad.purchase.build(params.require(:purchase).permit(:ship_name))
        if @purchase.save
          flash[:success] = "ITEM PURCHASED!"
          redirect_to home_url
        else
          flash[:error] = "Someone made a poopy!"
          render :home
        end
      end

end
