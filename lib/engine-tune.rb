require 'rubygems'

$LOAD_PATH.unshift(File.dirname(__FILE__))

require "engine-tune/calculations"
require "engine-tune/calculator"

#
# An engine's efficiency can be impacted by environmental factors such as 
# altitude and temperature. EngineForecast first collects environmental data 
# based on the supplied latitude and longitude and then returns a set of calculations
# to determine how great that impact is. 
#
module EngineTune
  
  def self.calculate(observations)
    EngineTune::Calculations.new(observations)
  end
  
end
