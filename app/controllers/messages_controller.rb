class MessagesController < ApplicationController
  respond_to :js

  def index
    @message = Message.new
    @messages = Message.all
  end

  def create
    @message = Message.create(message_params)
  end

  def destroy_all
    Message.destroy_all
  end

  private
    def message_params
      params.require(:message).permit(:text)
    end
end
