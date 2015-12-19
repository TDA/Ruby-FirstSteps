def a_method
  x = 0
  sum = 0
  while x < 5
    # yield is a block call, auto finds and
    # calls the block defined for this method
    # no need for the reference or for the explicit call
    sum = yield sum, x
    puts sum
    x = x + 1
  end
  puts "end of the method"
end

a_method do |sum, x|
  # this is a block
  sum + x
end

# still not sure about the difference
# between this and the following

def b_method
  # this is apparently a method that takes in a block
  x = 0
  sum = 0
  while x < 5
    sum = b_block(sum, x)
    puts sum
    x = x + 1
  end
  puts "end of the method"
end

def b_block(sum, x)
  # just a normal method
  sum + x
end

b_method
