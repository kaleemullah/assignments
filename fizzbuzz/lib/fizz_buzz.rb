class FizzBuzz
  def initialize(range = 1..100)
    @numbers = range
    @word_for_three = 'Fizz'
    @word_for_five = 'Buzz'
    @word_for_three_and_five = 'FizzBuzz'
  end
    
  def output
    @numbers.each do |number|
      result = number

      result = @word_for_three if number % 3 == 0
      result = @word_for_five if number % 5 == 0
      result = @word_for_three_and_five if number % 3 == 0 && number % 5 == 0

      puts result
    end
  end
end

FizzBuzz.new.output