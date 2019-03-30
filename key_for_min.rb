# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  keys = name_hash.collect { |key, value| key }
  values = name_hash.collect { |key, value| value }
  min_key = [keys[0]]

  values.each do |num|
    if values.index(num) < (values.length - 1)
      compare = values[values.index(num) + 1]
      puts "#{compare}"
      
      puts "Comparing #{keys[values.index(num)]} and #{keys[values.index(compare)]}"
      num > compare ? min_key.unshift(keys[values.index(compare)]) : min_key.unshift(keys[values.index(num)])
      
      puts "#{min_key}"
      values[keys.index(min_key[0])] < values[keys.index(min_key[1])] ? min_key.pop() : min_key.shift()
      puts "#{min_key}"
  end
  
  min_key[0]
end