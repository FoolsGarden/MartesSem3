def do_this_block(number)
  start = Time.now
  yield (number)
  sleep 2
  finish = Time.now
  result = (start - finish)
  print "Time taken to execute block: #{result} seconds"
  puts
end




dictionary = {
  "M" => 1000,
  "CM" => 900, "D" => 500, "CD" => 400, "C" => 100,
  "XC" => 90,  "L" => 50,  "XL" => 40,  "X" => 10,
  "IX" => 9,   "V" => 5,   "IV" => 4,   "I" => 1
}

do_this_block(10) do |number| 
  roman = ""
  dictionary.map do |letter, value| 
     roman << letter * (number / value)
     number = number % value
  end
  roman
end
 
