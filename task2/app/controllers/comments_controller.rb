class CommentsController < ApplicationController
 def create
  #debugger
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

def show
 @post = Post.find(params[:post_id])
 @comments = @post.comments.all
end 

def destroy
  @comment= Comment.find(params[:id])
  @comment.destroy

  redirect_to root_path, status: :see_other

end

private
def comment_params
  params.require(:comment).permit(:id,:post_id,:user,:comment)
end

end
