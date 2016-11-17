
def prime_factors(number)
prime_array = []
small_prime = 2

  if number < 2 
    return small_prime
  end

  while small_prime < number
    if number % small_prime == 0
      prime_array.push(small_prime)
      number = number / small_prime
    end
    small_prime +=1 
  end
  prime_array << number
  prime_array.sort

end
#test
p prime_factors(4) == [2, 2]
p prime_factors(9) == [3, 3]
p prime_factors(12) == [2, 2, 3] 
p prime_factors(34) == [2, 17]