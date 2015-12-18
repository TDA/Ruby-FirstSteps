def a_method(&a_block)
  # this is apparently a method that takes in a block
  puts "in the method"
  # this call seems synchronous
  a_block.call
  # control returns to the method
  puts "end of the method"
end

a_method do
  # this is apparently a block
  puts "in the block"
end