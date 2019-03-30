# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_key = []
  keys = name_hash.collect { |key, value| key }
  values = name_hash.collect { |key, value| value }
  last_value = values.last

  values.each do |num|
    if num > last_value
      current_min = last_value
    end
    last_value = num
    min_key.shift(keys[values.index(num)])
    min_key.pop()
  end
  
  min_key[0]
end