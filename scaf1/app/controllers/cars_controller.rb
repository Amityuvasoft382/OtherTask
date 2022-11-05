class CarsController < ApplicationController
  def index
    @cars = Car.all
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.save
    @cars = Car.all
  end

  def show
    @car =Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end
  def update
    @car=Car.find(params[:id])
    if @car.update(car_params)
      redirect_to @car      
    else
      render :edit ,status: :unprocessable_entity
    end
  end

  def destroy
    @car= Car.find(params[:id])
    @car.destroy

    redirect_to root_path, status: :see_other

  end
  private
  def car_params
    params.require(:car).permit(:id,:m_name,:color,:c_name,:c_type,:speed,:ecofriendly)
  end
end
