puts "Global symbol store size: #{Symbol.all_symbols.size}"
puts "symbol_list: #{Symbol.all_symbols.last(5).inspect}"

symbol_array = []
(1..10000).each { |_| symbol_array << 'some_unique_symbol_that_dont_exist'.to_sym }

puts "Global symbol store size: #{Symbol.all_symbols.size}"
puts "symbol_list: #{Symbol.all_symbols.last(5).inspect}"

puts symbol_array[1].object_id
puts symbol_array[100].object_id
puts symbol_array[9999].object_id