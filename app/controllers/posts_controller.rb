class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize, except: [:index]

  def authorize
    render file: 'public/422.html', layout: false, status: :unauthorized unless %w[admin moderator].include? current_user.role
  end

  def create
    post_params = params.require(:post).permit(:postHeader, :postContent)
    Post.create!(header: post_params[:postHeader], content: post_params[:postContent], author: current_user.id)
    redirect_back(fallback_location: new_post_path)
  end

  def destroy
    Post.destroy(params[:id])
    redirect_back(fallback_location: new_post_path)
  end

  def new
    @posts = Post.all
  end

  def index
    @posts = Post.all
  end
end
