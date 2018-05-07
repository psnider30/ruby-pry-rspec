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

def group_by_owners(files)
  by_owners = {};
  files.each do |file, owner|
    by_owners[owner] = by_owners[owner] || []
    by_owners[owner].push(file)
    end
  by_owners
end

histogram = {'1': 'bat', '2': 'cat', '3': 'hat', '4': 'rat', '5': 'sat'}

histogram.transform_keys { |k| k.to_s.to_i }
