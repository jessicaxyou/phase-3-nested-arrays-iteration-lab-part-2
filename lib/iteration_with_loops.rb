def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  smallest_numbers = []
  src.each {|nested_arrays|
    #now accessing arrays within array
    min_value = nil
    nested_arrays.each { |number|
      if min_value == nil || number < min_value
        min_value = number
      end
    }
    smallest_numbers << min_value
  }
  smallest_numbers
end
