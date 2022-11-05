class CommentsController < ApplicationController

	def create
         # debugger
		@comment = Comment.create(comment_params)
		redirect_to post_path(params[:comment][:post_id])
	end
	def destroy
		@comment= Comment.find(params[:id])
		@post_id= @comment.post_id
		@comment.destroy
	# respond_to do |format|
 #      format.html { redirect_to post_url }
 #      format.json { head :no_content }
 #      format.js   { render :layout => false }
 #   end

		redirect_to post_path(@post_id), status: :see_other
	end
	private
	def comment_params
		params.require(:comment).permit(:id,:user,:com,:user_id,:post_id)		
	end
end
