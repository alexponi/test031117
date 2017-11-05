class MessagesController < ApplicationController
  respond_to :js

  def index
    @message = Message.new
    @messages = Message.all
  end

  def create
    # @message = Message.new(message_params)
    @message = Message.create(message_params)
    # respond_to do |format|
    #   if @message.save
    #    format.html {render 'index'}
    #    format.js
    # # #   else
    # # #     format.html { render :new }
    # # #     format.json { render json: @message.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def destroy_all
    Message.destroy_all
  end

  private
    def message_params
      params.require(:message).permit(:text)
    end
end
