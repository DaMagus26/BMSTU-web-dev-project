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

  def posts_create
    post_params = params.require(:post).permit(:postHeader, :postContent)
    Post.create!(header: post_params[:postHeader], content: post_params[:postContent], author: current_user.id)
  end

  def posts_delete
  end
end
