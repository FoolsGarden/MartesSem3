def factorial_iterative(number)
  (1..number).inject {|product, number| product * number}
end

p factorial_iterative(5)



def factorial_recursive(num)
  if num == 0
    1
  elsif num >= 1
    num * factorial_recursive(num - 1)
  end
end

p factorial_recursive(1)