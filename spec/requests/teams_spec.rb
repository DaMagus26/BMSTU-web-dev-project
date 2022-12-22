require 'rails_helper'

RSpec.describe "Teams", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get teams_path
      expect(response).to have_http_status(302)
    end
  end


  describe "GET /new" do
    it "returns http success" do
      get new_team_path
      expect(response).to have_http_status(302)
    end
  end

end
