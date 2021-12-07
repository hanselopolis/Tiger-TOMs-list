class ConversationsController < ApplicationController
    
    def index
        @user = User.find(params[:id])
        @conversations = Conversation.all

        render :index
    end

    def show
        @user = User.find(params[:user_id]) 
        @conversation = Conversation.find(params[:id])
        @messages = @conversation.messages

        render :show
    end
    
    def new
        @user = User.find(params[:id])
        @conversation = Conversation.new

        render :new 
    end

    def create
        @user = User.find(params[:id])
        @conversation = Conversation.new(params.require(:conversation).permit(:listener, :initial_msg))
        @conversation.starter = @user.email
        @conversation.user = @user 

        if @conversation.save
           flash[:success] = "Message Sent"
           redirect_to user_url(@user)
        else
           flash.now[:error] = "Failed to Send Message"
           render :new
        end
    end
end
