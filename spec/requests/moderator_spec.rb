require 'rails_helper'

RSpec.describe "Moderators", type: :request do
  describe "GET /users" do
    it "returns http success" do
      get "/moderator/users"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /teams" do
    it "returns http success" do
      get "/moderator/teams"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /posts" do
    it "returns http success" do
      get "/moderator/posts"
      expect(response).to have_http_status(:success)
    end
  end

end
