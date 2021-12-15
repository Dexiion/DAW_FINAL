class CarsController < ApplicationController
  def index
    @cars = Car.all.page(params[:page])
  end

  def show
    @car = Car.find(params[:id])
    @user = User.find_by_id(@car.user_id)
    @otherCarImages = []
    if @car.images.size > 1
      @otherCarImages = @car.images[1..]
    end
  end

  def new
    @car = Car.new
  end

  def create
    @user = helpers.current_user
    @car = @user.cars.create(car_params)
    @car.save
    redirect_to @car
  end

  private
  def car_params
    params.require(:car).permit(:idusuario,:marca,:modelo,:matriculacion,:kilometros,:cilindrada,:combustible,:localizacion,:potencia,:color,:puertas,:cajadecambios,:descripcion,:precio,:destacado, images: [])
  end
end
