require 'rails_helper'

RSpec.describe "Articles", type: :request do
  context "GET /articles" do
    it "tests URL path for articles#index when user is not signed in" do
      get articles_path
      expect(response).to redirect_to(new_user_session_path)
    end

    it "tests URL path for articles#index when user is signed in" do
      user = User.create(email: "test1@example.com", name: 'test1', password: '12345678', password_confirmation: '12345678')
      sign_in user
      get articles_path
      expect(response).to have_http_status(200)
      expect(response.body).to include('ANALYTICS PAGE')
    end
      
  end
end