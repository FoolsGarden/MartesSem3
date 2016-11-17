
def binary_search (target, array)  # a is the array and key is the value to be found
  first = 0
  last = array.length-1
  
  while (first<=last )
    middle = first+((last -first)/2)
    
    if array[middle] == target
      return middle
    elsif array[middle] < target
      first=middle+1
    else
      last =middle-1
    end
  end
  return -1
end


p binary_search(1, [1]) == 0
p binary_search(4, [1,2,3]) == -1
p binary_search(4, [1,2,3,4,5]) == 3
p binary_search(6, [1,2,3,4,5,6,7,8,9]) == 5
p binary_search(2, [1,2,3,5,6,7,8,9,10,11]) == 1
p binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 4