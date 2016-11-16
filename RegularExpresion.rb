=begin
*Regresa true si encuentra un numero de cuenta.
*Regresa un número de cuenta si existe dentro del string y nil en el caso contrario.
*Regresa un array con los números de cuenta que existen dentro del string
 y un array vacío en el caso contrario.
*Regresa un string donde si existen números de cuenta estos tendran remplazados 
por "X" los primeros siete numeros. ej. "XXXX-XXX-234"
*Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene 
puntos en vez de guiones lo regresa a su formato original donde usa guiones para dividir 
los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo.
=end

def number_of_acount(string)

  string.match(/\d{4}-\d{3}-\d{3}/) ? true : false 

end 

def find_number_acount(string)
  result = string.match(/\d{4}-\d{3}-\d{3}/)
  result ? result.to_s : nil
end



def find_acount_array(string)
  array_new = []
  result = string.match(/\d{4}-\d{3}-\d{3}/)
  if result
    array_new << result.to_s
  else
    array_new
  end
  array_new
end

def replace_number_acount(string)
  find = string.match(/\d{4}-\d{3}-\d{3}/)
  find1 = find.to_s.gsub!(/\d{4}-\d{3}/, 'XXXX-XXX')
   "cuenta1: cuenta2: #{find1}"
end

# Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos
# en vez de guiones lo regresa a su formato original donde usa guiones para
# dividir los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo.

def find_ten_numbers(string)
    if string.length == 10
    string.sub /(\d{4})(\d{3})(\d{3})/, '\1-\2-\3'
  elsif string.match(/\D/).to_s
    string.gsub!(/\D/, '-')
  else
    nil
  end
end

p number_of_acount("1234-234-456") == true
p find_number_acount("cuenta1: cuenta2: 1234-456-789") == "1234-456-789"
p find_acount_array("cuenta1: 1234-456-789") == ["1234-456-789"]
p replace_number_acount("cuenta1: cuenta2: 1234-456-789") == "cuenta1: cuenta2: XXXX-XXX-789"
p find_ten_numbers("1234456789") == "1234-456-789"
p find_ten_numbers("1234.456.678") == "1234-456-678"
p find_ten_numbers("12334554") == nil


# p number_of_acount("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")
# p find_number_acount("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")
# p find_number_acount("El Cliente con el número de cuenta 124-123-123 se encuentra en proceso de revisión de sus documentos")
# p find_acount_array("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")
# p find_acount_array("El Cliente con el número de cuenta 134-123-123 se encuentra en proceso de revisión de sus documentos")
# p replace_number_acount("El Cliente con el número de cuenta 1345-123-123 se encuentra en proceso de revisión de sus documentos")
# p find_ten_numbers ("Hay que transferir los fondos de la cuenta 1234123123 a la cuenta 4321.321.311")