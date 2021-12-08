class PurchasesController < ApplicationController


    def index
      @purchase = Purchase.all
      render :index
    end

    def new
        @category = Category.all
        @ad = Ad.find(params[:ad_id])
        @purchase = Purchase.new
        render :buy
    end

    def create
        @category = Category.all
        @ad = Ad.find(params[:ad_id])
        @purchase = Purchase.new(params.require(:purchase).permit(:ship_name,:ship_company,:ship_address1,:ship_address2,:ship_address3,
                :ship_city,:ship_state,:ship_country,:ship_postal,:ship_email,:ship_phone,:bill_name,:bill_company,:bill_address1,:bill_address2,:bill_address3,:bill_city,
                :bill_state,:bill_country,:bill_postal,:bill_phone,:bill_email,:card_number,:card_exp_date,:card_type,:card_cvv,:user))  
        @purchase.user = current_user
        @ad.purchase = @purchase

        if @purchase.save
          @ad.update(status: 'SOLD')
          @ad.update(purchaser: current_user[:id])
          flash[:success] = "ITEM PURCHASED!"
          render :complete
        else
          flash.now[:error] = "PURCHASE FAILED - Please fill out all required fields in the required format"
          render :buy
        end
      end

      def complete
        @category = Category.find(params[:category_id])
        @ad = Ad.find(params[:ad_id])
        @purchase = Purchase.find(params[:purchase_id])
        render :complete
    end

end
