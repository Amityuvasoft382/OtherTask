class UsersController < ApplicationController
	def index
    @users = User.all
    @user= User.find_by(id: current_user.id)    
  end

  def show
    @user = User.find(params[:id])
  end
  #  def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #   if @user.destroy
  #     redirect_to root_url, notice: "User deleted."
  #   end
  # end
  def destroy
   @user = User.find(params[:id])
   @user.destroy
   
   respond_to do |format|
      format.html { redirect_to root_url, notice: "User deleted." }
      
      format.json { head :no_content }
      format.js   { render :layout => false }
   end
  end
  def edit
     @user = User.find(params[:id])
    
  end


   def update
     @user = User.find(params[:id])
     if @user.update(user_params)
       redirect_to root_path
     else
       render 'edit'
     end
   end

   private

   def user_params
     params.require(:user).permit(:username, :email,:un_id,:city,:ward, :password, :password_confirmation, :remember_me)
   end
   def set_user
    @User = User.find(params[:id])
   end

end
