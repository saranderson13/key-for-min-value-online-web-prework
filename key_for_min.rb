# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  keys = name_hash.collect { |key, value| key }
  values = name_hash.collect { |key, value| value }
  last_value = values.last
  puts "Comparing first with: #{last_value}"
  
  values.each do |num|
    if num > last_value
      puts "Deleted #{keys[values.index(num)]}"
      keys.delete_at(values.index(num))
    elsif num < last_value
      puts "Deleted #{keys[values.index(num)]}"
      keys.pop()
    end
    last_value = num
    puts "Comparing next with: #{last_value}."
  end
  
  keys[0]
end