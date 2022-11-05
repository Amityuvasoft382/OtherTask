class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  def create
    #@user = User.find(params[:id])
    @department = Department.new(department_params)  

    #@department = Car.new( id: params[:id],m_name: params[:m_name],company_name: params[:company_name],car_type: params[:car_type],description: params[:description],price: params[:price],r_year: params[:r_year],warrenty_period: params[:warrenty_period],ecofriendly: params[:ecofriendly])
    if @department.save
      redirect_to @department      
    else
      render new ,status: :unprocessable_entity
    end
  end

  def show
    @department =Department.find(params[:id])
    @user= User.find_by(id: @department.user_id) 
  end

  def edit
    @department = Department.find(params[:id])
  end

  def update
    @department=Department.find(params[:id])    
     if @department.update(department_params)
      redirect_to @department      
    else
      render :edit ,status: :unprocessable_entity
    end
  end

   def destroy
    @department= Department.find(params[:id])
      @department.destroy

      redirect_to departments_path, status: :see_other
     
   end
private
def department_params
    params.require(:department).permit(:id,:clock_in,:clock_out,:user_id,:name,:date)
end
end
