class CommentsController < ApplicationController
 
	def create
		@comment = Comment.create(comment_params)
		#@comments= Post.comments.all
		#debugger
		redirect_to post_path(params[:comment][:post_id])
	end

	def show
	 	@comment = Comment.find(params[:id])
	end 
	def destroy
		@comment= Comment.find(params[:id])
		@comment.destroy

		redirect_to posts_path, status: :see_other
	end
	private
	def comment_params
		params.require(:comment).permit(:id,:user,:com,:user_id,:post_id)		
	end
end
