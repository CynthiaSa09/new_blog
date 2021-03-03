class PostsController < ApplicationController
  http_basic_authenticate_with name: "tunombre", password: "tupassword", only:
:dashboard
  def index
    @posts = Post.order(created_at: :desc)
  end

  def create
    content = params[:post][:content].gsub('spoiler',' ')
    @post = Post.new(content: content, title: params[:post][:title], image_url: params[:post][:image_url])
    if @post.save
      redirect_to success_path
      else
      render 'dashboard'
    end
  end

  def success
  end


  def dashboard
    @post = Post.new
  end
end
