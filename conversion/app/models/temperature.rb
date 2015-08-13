class Temperature
  def initialize(value)
    @value = value.to_i
  end

  def celsius_to_fahrenheit
    @value * 9/5 + 32
  end

  def fahrenheit_to_celsius
    (@value - 32) * 5/9
  end
end