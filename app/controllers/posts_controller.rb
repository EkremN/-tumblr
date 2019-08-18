class PostsController < ApplicationController

  def index
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params_post)
    @post.save

    redirect_to @post
  end

  private

  def params_post
    params.require(:post).permit(:title, :body)
  end
end
