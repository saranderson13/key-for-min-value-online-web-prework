# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  keys = name_hash.collect { |key, value| key }
  values = name_hash.collect { |key, value| value }
  last_value = values.last
  current_min = values.first
  min_key = [keys[0]]

  values.each do |num|
    num > last_value ? current_min = last_value : current_min = num
    
    min_key.unshift(keys[values.index(current_min)])
    puts "#{min_key} stop"
    min_key.pop()
    
    last_value = num
  end
  
  min_key[0]
end