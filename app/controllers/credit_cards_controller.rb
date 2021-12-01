class CreditCardsController < ApplicationController

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
end
