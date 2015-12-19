def a_method(&a_block)
  x = 0
  sum = 0
  rum = 0
  while x < 5
    # yield is a block call, auto finds and
    # calls the block defined for this method
    # no need for the reference or for the explicit call
    rum = a_block.call(sum, x)
    sum = yield sum, x
    puts sum, rum
    x = x + 1
  end
  puts "end of the method"
end

# looks like each 'block' is called when you add additional
# blocks, first difference from methods
a_method do |sum, x|
  # this is a block
  sum + x
end

a_method do |sum, x|
  # this is a block
  sum + x * x
end

a_method do |sum, x|
  # this is a block
  sum - x
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
