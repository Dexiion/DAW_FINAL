class HomeController < ApplicationController
  def index
    @outstandingCars = Car.all.where(destacado: 1)
    @notOustandingCars = Car.all.where(destacado: nil )
    @firstOutstandingCars = @outstandingCars[0]
    @otherOutstandingCars = @outstandingCars[1..-1]

    @otherCars = @notOustandingCars[0..5]
  end

end
