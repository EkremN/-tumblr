class CommentsController < ApplicationController

  def create
    #we first define post becouse there is no comment without post
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :body))
    redirect_to post_path(@post)
  end
end
