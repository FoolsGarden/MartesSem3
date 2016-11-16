string = ["SAM_ULISES_96@hotmail.es"]

def down_case(string)
  string.map { |parragraph| parragraph.downcase  }
end

def down_case!(string)
 string.map { |parragraph| parragraph.downcase!  }
end

p down_case(string) == ["sam_ulises_96@hotmail.es"]

p string == ["SAM_ULISES_96@hotmail.es"]

p down_case!(string) == ["sam_ulises_96@hotmail.es"]

p string == ["sam_ulises_96@hotmail.es"]


