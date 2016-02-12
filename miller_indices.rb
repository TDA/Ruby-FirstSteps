class MillerIndices
  print "x = "
  @x = gets.to_f
  puts @x
  print "y = "
  y = gets.to_f
  puts y
  print "z = "
  z = gets.to_f
  puts z

  reci_x = 1.0 / @x
  reci_y = 1.0 / y
  reci_z = 1.0 / z

  puts reci_x, reci_y, reci_z

  def get_x
    print @x
  end

end

# puts x
# p MillerIndices.new.get_x