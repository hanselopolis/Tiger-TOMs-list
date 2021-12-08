class ConversationsController < ApplicationController
    
    before_action :authenticate_user!, except: [:index] 
    before_action :require_permission_viewing, except: [:new, :create, :index]
    before_action :require_permission_general, except: [:show]

    def require_permission_viewing
        if User.find(params[:user_id]) != Conversation.find(params[:id]).user
            if current_user.email != Conversation.find(params[:id]).listener 
                flash[:error] = "You do not have permission to do that"
                redirect_to user_path(current_user), flash: { error: "You do not have permission to do that" }
            end
        end
    end

    def require_permission_general
        if User.find(params[:id]) != current_user 
            flash[:error] = "You do not have permission to do that"
            redirect_to user_path(current_user), flash: { error: "You do not have permission to do that" }
        end
    end

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
