class PurchasesController < ApplicationController

    def new
        @category = Category.find(params[category_id])
        @ad = Ad.find(params[:ad_id])
        @purchase = Purchase.new
        render :buy
    end

end
