# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  keys = name_hash.collect { |key, value| key }
  values = name_hash.collect { |key, value| value }
  last_value = keys.first
  current_min = keys.first
  min_key = [keys[0]]

  values.each do |num|
    # puts "Comparing #{keys[values.index(current_min)]} and #{keys[values.index(last_value)]}"
    num > last_value ? current_min = last_value : current_min = num
    
    min_key.unshift(keys[values.index(current_min)])
    puts "#{min_key}"
    min_key.pop()
    puts "#{min_key}"
    
    last_value = num
  end
  
  min_key[0]
end