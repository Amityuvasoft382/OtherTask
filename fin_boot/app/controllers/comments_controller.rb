class CommentsController < ApplicationController
	def create
         # debugger
         @comment = Comment.create(comment_params)
         redirect_to root_path
         # respond_to do |format|
         #    format.js             
         # end
     end
     def destroy
     	@comment= Comment.find(params[:id])
     	@post_id= @comment.post_id
     	@comment.destroy
     	redirect_to root_path
        # respond_to do |format|
        #     format.js            
        # end
     end
     private
     def comment_params
     	params.require(:comment).permit(:id,:user,:com,:user_id,:post_id)		
     end
 end
