# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  keys = name_hash.collect { |key, value| key }
  values = name_hash.collect { |key, value| value }
  last_value = values.last

  values.each do |num|
    if keys.length > 2
      if num > last_value
        puts "Comparing #{num} #{keys[values.index(num)]} with #{last_value} #{keys[values.index(last_value)]}."
        puts "Deleted #{keys[values.index(num)]}"
        keys.delete_at(values.index(num))
      end
    else
      puts "Comparing #{num} #{keys[values.index(num)]} with #{last_value} #{keys[values.index(last_value)]}."
      if num > values.last
        keys.unshift()
        puts "Deleted #{keys[values.index(num)]}"
      elsif num < values.last
        keys.pop()
        puts "Deleted #{keys[values.index(num)]}"
      end
    end
    last_value = num
  end
  
  puts keys.length
  
  keys[0]
end