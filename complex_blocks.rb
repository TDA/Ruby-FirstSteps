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
# blocks, first difference from methods, to do this with methods,
# we would have had to add the extra method calls to the original
# method as well (and i still suspect inlining)

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
  sum - x * x
end
# this is also a block
a_method { |sum, x| sum - x }

def b_method
  puts "this is a method that calls a method"
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
