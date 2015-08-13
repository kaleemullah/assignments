require_relative 'temperature'

class UnitConverter
  def initialize(unit, from, value, to)
    @unit = unit
    @from = from
    @value = value
    @to = to
  end

  def result
    temperature = Temperature.new(@value)
    temperature.method("#{@from}_to_#{@to}").call
  end  
end