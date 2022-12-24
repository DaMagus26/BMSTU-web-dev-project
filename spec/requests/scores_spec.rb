require 'rails_helper'

RSpec.describe "Scores", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/scores/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new_final" do
    it "returns http success" do
      get "/scores/new_final"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new_semi" do
    it "returns http success" do
      get "/scores/new_semi"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create_final" do
    it "returns http success" do
      get "/scores/create_final"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create_semi" do
    it "returns http success" do
      get "/scores/create_semi"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update_final" do
    it "returns http success" do
      get "/scores/update_final"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update_semi" do
    it "returns http success" do
      get "/scores/update_semi"
      expect(response).to have_http_status(:success)
    end
  end

end
