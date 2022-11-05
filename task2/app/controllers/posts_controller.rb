class PostsController < ApplicationController
	 def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    @posts = Post.all
  end

  def show
    @post =Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post=Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post      
    else
      render :edit ,status: :unprocessable_entity
    end
  end

  def destroy
    @post= Post.find(params[:id])
    @post.destroy

    redirect_to root_path, status: :see_other

  end
  def like
    @post = Post.find(params[:id])
    Like.create(user_id:current_user.id, post_id:@post.id)

  end


  private
  def post_params
    params.require(:post).permit(:id,:user_id,:title,:detail)
  end
end
