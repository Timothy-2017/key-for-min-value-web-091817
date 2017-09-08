# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

#def key_for_min_value(name_hash)
#  if name_hash.size == 0
#    return nil
#  end
#  minimum_item = ""
#  minimum_number = 1000000000
#  name_hash.each do |item, number|
#    if number < minimum_number
#      minimum_item = item
#      minimum_number = number
#    end
#  end
#  minimum_item
#end

def key_for_min_value(name_hash)
  if name_hash.size == 0
    return nil
  end
  minimum_item = ""
  minimum_number = 0
  name_hash.each do |item, number|
    if minimum_item == ""
      minimum_item = item
      minimum_number = number
    elsif number < minimum_number
      minimum_item = item
      minimum_number = number
    end
  end
  minimum_item
end
