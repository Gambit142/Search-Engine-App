require 'rails_helper'

RSpec.describe "Queries", type: :request do
  before (:each) do
    @user = User.create(email: "test1@example.com", name: 'test1', password: '12345678', password_confirmation: '12345678')
    sign_in @user
  end

  context "GET /queries" do
    it "tests URL path for queries#index when user is signed in" do
      get '/queries'
      expect(response).to have_http_status(200)
      expect(response.body).to include('Frequency')
    end

    it "tests URL path for queries#create when user is signed in" do
      post queries_path, params: { name: 'Hello World!!' } 
      expect(response).to have_http_status(204)
      get articles_path
      expect(response.body).to include("Query Successfully saved")
    end  
  end
end