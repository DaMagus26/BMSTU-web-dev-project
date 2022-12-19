require 'rails_helper'

RSpec.describe "Admins", type: :request do
  describe "GET /control_panel" do
    it "returns http success" do
      get "/admin/control_panel"
      expect(response).to have_http_status(:success)
    end
  end

end
