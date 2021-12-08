class ConversationsController < ApplicationController
    
    def index
        @user = User.find(params[:id])
        @conversations = Conversation.all

        render :index
    end

    def show
        @user = User.find(params[:user_id]) 
        @conversation = Conversation.find(params[:id])
        @messages = @conversation.messages.order(:created_at)

        render :show
    end
    
    def new
        @ad = Ad.find(params[:id])
        @user = User.find(params[:id])
        @conversation = Conversation.new

        render :new 
    end

    def create
        @user = User.find(params[:id])
        @conversation = Conversation.new(params.require(:conversation).permit(:listener, :initial_msg, :subject))
        @conversation.starter = current_user.email
        @conversation.user = current_user 

        if @conversation.save
           flash[:success] = "Message Sent"
           redirect_to conversations_url
        else
           flash.now[:error] = "Failed to Send Message"
           render :new
        end
    end

    end
