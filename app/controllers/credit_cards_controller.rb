class CreditCardsController < ApplicationController
    before_action :authenticate_user!
    before_action :require_permission
    add_flash_types :info, :error, :warning, :success

    def require_permission
      if User.find(params[:id]) != current_user
        redirect_to home_path, flash: { error: "You do not have permission to do that" }
      end
    end

    def show
        @user = User.find(params[:id])
        @credit_card = @user.credit_cards
        
        # User's are not required a credit card, so need to handle here
        if @credit_card == nil
            render :no_show
        else
            render :show
        end
    end

    def new
        @user = User.find(params[:id])
        @credit_card = CreditCard.new

        render :new
    end

    def create
         @user = User.find(params[:id])
         @credit_card = CreditCard.new(params.require(:credit_card).permit(:name, :number, :cvv, :exp_date, :card_type, :company))
         @credit_card.user = @user 

         if @credit_card.save
            flash[:success] = "Credit Card Added Successfully"
            redirect_to credit_card_url(@user)
         else
            flash.now[:error] = "Failed to Add Credit Card - Make sure to follow all specified formats"
            render :new
         end
    end

    def destroy 
        @user = User.find(params[:id])
        @credit_card = @user.credit_cards

        @credit_card.destroy
        flash[:success] = "Credit Card deleted successfully"
        redirect_to user_url(@user)
    end

    def expired 
        @user = User.find(params[:id])
        @credit_card = @user.credit_cards

        @credit_card.destroy
        flash[:success] = "Expired Card Removed - Please Add A New Card"
        redirect_to new_credit_card_url(@user)
    end
end
