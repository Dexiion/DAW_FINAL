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
        @car = Car.new(car_params)
        @car.save
    end
    def outstandings
        
    end

    private
        def car_params
            params.require(:car).permit(:idusuario,:marca,:modelo,:matriculacion,:kilometros,:cilindrada,:combustible,:localizacion,:potencia,:color,:puertas,:cajadecambios,:descripcion,:precio,:destacado)
        end
end
