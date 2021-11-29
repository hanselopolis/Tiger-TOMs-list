class UsersController < ApplicationController
    before_action :authenticate_user!, except: [:show, :new, :create]
    before_action :require_permission, except: [:show, :new, :create]


    def require_permission
        if User.find(params[:id]) != current_user
          redirect_to user_path, flash: { error: "You do not have permission to do that." }
        end
    end

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
            render :new
        end
    end


    def edit
        @user = User.find(params[:id])
        render :edit
    end

    def update
        @user = User.find(params[:id])
        if @user.update(params.require(:user).permit(:email,:first_name, :last_name, :email, :address1, :address2, :address3, :city, :state, :country, :zip, :bio))
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

    def show_ads
        @user = User.find(params[:id])
        @ads = @user.ads

        render :my_posts
    end



end
