# def linear_search(num, array)
#   i = 0
#   while i < array.length
#     if array[i] == num
#       return i
#   else
#      nil
#   end
#   i +=1
# end
# end
# random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
# p linear_search(20, random_numbers)
# p linear_search(29, random_numbers)

def global_linear_search(letter, array)
 i = 0
 array_index = []
  while i < array.length
    if array[i] == letter
    array_index << i
  else
     []
  end
  i +=1
end 
  array_index
end
arr = "entretenerse".split('')

p global_linear_search("e", arr)
# => [0, 4, 6, 8, 11]