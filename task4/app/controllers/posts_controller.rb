class PostsController < ApplicationController
	before_action :set_post, only: %i[ show edit update destroy ]
	def index 
		@posts = Post.all

		@post = Post.new
		time = Time.now
	end

	def approve
		# debugger
		@post= Post.find(params[:id])
		approve = true
		@post.update(approve:approve)
		redirect_to @post 
	end

	def deapprove
		@post= Post.find(params[:id])
		approve = false
		@post.update(approve:approve)
		redirect_to @post 
	end

	def lock
		@post= Post.find(params[:id])
		approve = false
		@post.update(lock_image:approve)
		redirect_to @post 
	end	
	def unlock
		@post= Post.find(params[:id])
		approve = true
		@post.update(lock_image:approve)
		redirect_to @post 
	end
	def create
		@post = Post.new(post_params)
		#debugger
		@post.save
		@posts = Post.all
	end

	def show
		@post =Post.find(params[:id])
		@comments = Comment.all.where(post_id:@post.id)
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

	private
	def post_params
		params.require(:post).permit(:id,:image,:lock_image,:user_id,:title,:detail)
	end
	def set_post
		@post = Post.find(params[:id])
	end
end
