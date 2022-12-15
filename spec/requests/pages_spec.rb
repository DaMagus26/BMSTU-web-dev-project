require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /home" do
    it "returns http success" do
      get home_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /news" do
    it "returns http success" do
      get news_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /team" do
    it "returns http success" do
      get team_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /tasks" do
    it "returns http success" do
      get tasks_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /account" do
    it "returns http success" do
      get account_path
      expect(response).to have_http_status(:success)
    end
  end

end
