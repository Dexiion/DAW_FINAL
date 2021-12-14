class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    params[:idusuario] = helpers.current_user.id
    @car = Car.new(car_params)
    @car.save
    # puts "FUNCIONAAAAAAAAAAAAAAAAAAA ASQUEROSOOOOOOOOOOOOOOOOOOOOOOOOOOOO"
    # puts "PARAMETRO:" + params[:idusuario]
    # puts "PORFAVOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOR"
    redirect_to "/"
  end

  private
  def car_params
    params.require(:car).permit(:idusuario,:marca,:modelo,:matriculacion,:kilometros,:cilindrada,:combustible,:localizacion,:potencia,:color,:puertas,:cajadecambios,:descripcion,:precio,:destacado, images: [])
  end
end
