require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/posts/create"
      expect(response).to have_http_status(302)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/posts/delete"
      expect(response).to have_http_status(302)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/posts/new"
      expect(response).to have_http_status(302)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/posts/index"
      expect(response).to have_http_status(302)
    end
  end

end
