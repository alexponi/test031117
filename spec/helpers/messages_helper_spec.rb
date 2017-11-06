require 'rails_helper'

describe MessagesHelper do
  it "request_num" do
    message = Message.create(text: "Пробное сообщение")
    expect(request_num).to eql "1"
  end

  it "number_of_requests for 1 message" do
    message = Message.create(text: "Пробное сообщение")
    expect(number_of_requests).to eql "01"
  end

  it "number_of_requests for 10 message" do
    (1..10).each do
      message = Message.create(text: "Пробное сообщение")
    end
    expect(number_of_requests).to eql "10"
  end

  it "request_string for 1 message" do
      message = Message.create(text: "Пробное сообщение")
    expect(request_string).to eql "запрос"
  end

  it "request_string for 2 messages" do
    (1..2).each do
      message = Message.create(text: "Пробное сообщение")
    end
    expect(request_string).to eql "запроса"
  end

  it "request_string for 3 messages" do
    (1..3).each do
      message = Message.create(text: "Пробное сообщение")
    end
    expect(request_string).to eql "запроса"
  end

  it "request_string for 4 messages" do
    (1..4).each do
      message = Message.create(text: "Пробное сообщение")
    end
    expect(request_string).to eql "запроса"
  end

  it "request_string for 5 messages" do
    (1..5).each do
      message = Message.create(text: "Пробное сообщение")
    end
    expect(request_string).to eql "запросов"
  end

  it "request_string for 11 message" do
    (1..11).each do
      message = Message.create(text: "Пробное сообщение")
    end
    expect(request_string).to eql "запросов"
  end

  it "request_string for 21 message" do
    (1..21).each do
      message = Message.create(text: "Пробное сообщение")
    end
    expect(request_string).to eql "запрос"
  end

  it "request_string for 22 message" do
    (1..22).each do
      message = Message.create(text: "Пробное сообщение")
    end
    expect(request_string).to eql "запроса"
  end
end
