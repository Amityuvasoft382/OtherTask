class UsersController < ApplicationController
  def index
    @users = User.all
    @user= User.find_by(id: current_user.id)    
  end
   def destroy
    @user = User.find(params[:id])
    @user.destroy
    if @user.destroy
      redirect_to root_url, notice: "User deleted."
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
     params.require(:user).permit(:username, :email, :unique_id, :password, :password_confirmation, :remember_me)
   end

  
end
