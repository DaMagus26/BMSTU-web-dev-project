require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get new_post_path
      expect(response).to have_http_status(302)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get posts_path
      expect(response).to have_http_status(302)
    end
  end

end
