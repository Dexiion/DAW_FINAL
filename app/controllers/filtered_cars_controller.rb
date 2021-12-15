class FilteredCarsController < ApplicationController
  def index
    @cars = Car.all.page(params[:page])
    @filteredCars = @cars.where(parseCondition("localizacion",params[:location])).where(parseCondition("marca",params[:brand])).where(parseCondition("combustible",params[:fuel])).where(parseMinPrice("precio",params[:minprice])).where(parseMaxPrice("precio",params[:maxprice])).where(parseCondition("puertas",params[:doors]))

  end

  def parseCondition(paramName,paramValue)
    if (paramValue.eql?("Provincia") || paramValue.eql?("Marca") || paramValue.eql?("Combustible") || paramValue.eql?("Puertas") || paramValue.eql?(nil))
      return paramName + " <> " + "\"dmwaoidnawkodnawonfoiwan\""
    else
      return paramName + " = " +  "\"" + paramValue + "\""
    end
  end

  def parseMinPrice(paramName,paramValue)
    if (paramValue.eql?("Min.") || paramValue.eql?(nil))
      return paramName + " <> " + "\"fawiodfnawionfawiofwafaw\""
    else
      return paramName + " > " +  "\"" + paramValue + "\""
    end
  end

  def parseMaxPrice(paramName,paramValue)
    if (paramValue.eql?("Max.") || paramValue.eql?(nil))
      return paramName + " <> " + "\"fawlpmfawmfawopfmawopmd\""
    else
      return paramName + " < " + "\"" + paramValue + "\""
    end
  end
end
