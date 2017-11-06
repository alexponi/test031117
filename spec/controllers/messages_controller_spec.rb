require 'rails_helper'

describe MessagesController do
  it "renders the :index template" do
    get :index
    expect(response).to render_template :index
  end

  it "has a 200 status code" do
    xhr :post, :create, message: {text: "Новое сообщение"}
    expect(response.code) == "200"
  end
end
