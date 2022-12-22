class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize

  def authorize
    render file: 'public/422.html', layout: false, status: :unauthorized unless current_user.role == 'admin'
  end

  def control_panel
  end
end
