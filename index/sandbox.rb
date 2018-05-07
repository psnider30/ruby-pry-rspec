require 'pry'

def factorial(num)
  if num < 0
    'please put in a positive integer'
  elsif num == 0
    1
  else
    num * factorial(num - 1)
  end
end
puts factorial(4) #=> 24
