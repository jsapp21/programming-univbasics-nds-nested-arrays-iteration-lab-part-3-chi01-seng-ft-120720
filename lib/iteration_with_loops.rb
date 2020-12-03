# src will be an Array of Arrays of Strings and Integers
# Combine all Strings present in the AoA into a single value and return it

# require 'pry'

def join_nested_strings(src)
  row_index = 0 
  single_string = []
  
  while row_index < src.count do
    element_index = 0
    string_element = ""
    while element_index < src[row_index].count do
      if src[row_index][element_index].class == String
         string_element = src[row_index][element_index]
         single_string << string_element
      end
      element_index += 1
    end 
    row_index += 1 
  end
  single_string.join(' ')
end


