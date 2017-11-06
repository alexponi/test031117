require 'rails_helper'

describe Message do
  it "is valid with a text" do
    message = Message.new(text: "Пробное сообщение")
    expect(message).to be_valid
  end

  it "is invalid without a text" do
    message = Message.new(text: nil)
    message.valid?
    expect(message.errors[:text]).not_to include("can't be blank")
  end

  it "return a message text as string" do
    message = Message.new(text: "Еще сообщение")
    expect(message.text).to eq 'Еще сообщение'
  end
end
