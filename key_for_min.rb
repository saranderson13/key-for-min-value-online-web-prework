# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  keys = name_hash.collect { |key, value| key }
  values = name_hash.collect { |key, value| value }
  # last_value = values.last
  # current_min = values.first
  min_key = [keys[0]]

  values.each do |num|
    compare = values[values.index(num) + 1]
    puts "Comparing #{keys[values.index(num)]} and #{keys[values.index(compare)]}"
    num > compare ? min_key.unshift(keys[values.index(compare)]) : min_key.unshift(keys[values.index(num)])
    
    puts "#{min_key}"
    min_key.pop()
    puts "#{min_key}"
  end
  
  min_key[0]
end