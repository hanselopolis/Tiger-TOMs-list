class MessagesController < ApplicationController

    def new
        @user = User.find(params[:user_id]) 
        @conversation = Conversation.find(params[:id])
        @message = Message.new
        
        render :new
    end

    def create
        @user = User.find(params[:user_id]) 
        @conversation = Conversation.find(params[:id])
        @message = @conversation.messages.build(params.require(:message).permit(:body))
        @message.author = current_user.email

        if @message.save
            flash[:success] = "Message Sent"
            redirect_to conversation_url(@user, @conversation)
         else
            flash.now[:error] = "Failed to Send Message"
            render :new
         end 

    end
end
