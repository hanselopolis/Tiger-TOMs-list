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

    def destroy 
        @user = User.find(params[:id])
        @credit_card = @user.credit_cards

        @credit_card.destroy
        flash[:success] = "Credit Card deleted successfully"
        redirect_to user_url(@user)
    end
end
