class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        render :show
    end

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(params.require(:user).permit(:email, :password, :first_name, :last_name, :address1, :address2, :address3, :city, :state, :country, :zip, :bio))
        if @user.save
            flash[:success] = "User account creation successful!"
            redirect_to user_path(@user)
        else
            flash.now[:error] = @errors = "Account creation failed, please try again"
            @user.errors.messages
            render :new
        end
    end


    def edit
        @user = User.find(params[:id])
        render :edit
    end

    def update
        @user = User.find(params[:id])
        if @user.update(params.require(:user).permit(:email,:password, :first_name, :last_name, :email, :address1, :address2, :address3, :city, :state, :country, :zip, :bio))
            flash[:success] = "User account successfully updated!"
            redirect_to user_url(@user)
        else
            flash.now[:error] = "Account update failed, please try again"
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        flash[:success] = "User Profile Deleted"
        #redirect_to
    end



end
