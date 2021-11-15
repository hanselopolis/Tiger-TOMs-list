class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        render :show
    end

    def new
        @user = User.new
        render :new
    end


end
