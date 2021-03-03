class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
  end

  def create
    @post = Post.create(title: params[:title], image_url: params[:image_url], content: params[:content])
  end

  def dashboard
  end
end
