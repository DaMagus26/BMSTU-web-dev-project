class ModeratorController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize

  def authorize
    render file: 'public/422.html', layout: false, status: :unauthorized unless %w[admin moderator].include? current_user.role
  end

  def users
  end

  def teams
  end

  def posts
  end
end
