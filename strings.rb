str = "with ♥!"
print("My String's encoding: ", str.encoding.name)
print("\nMy String's size: ", str.size)
print("\nMy String's bytesize: ", str.bytesize)
puts "\n", str.ascii_only?
puts "\n", str.capitalize
puts "".empty?, "".nil?

# equivalent to rails' blank :D
puts "".nil? || "".empty?

str = "Sa - ee - pee - cee"
str.encode(Encoding::UTF_8)
puts str.encoding.name

# non-destructive
puts str.encode(Encoding::ISO_8859_1).encoding.name
puts str.encoding.name

# destructive, notice the ! after method name
puts str.encode!(Encoding::ISO_8859_1).encoding.name
puts str.encoding.name

# string indexing
str = "Hello World!"
puts str[str.size-1] # first character from the end of the string
puts str[-1] # first character from the end of the string
puts str[-2] # second last character
puts str[0] # first character

# ruby also allows ranges
puts str[0, 7]
# negatives with length
puts str[-6, 6]


def serial_average(strings)
  serial = strings[0, 3]
  num1 = strings[4, 5]
  num2 = strings[-5, 5]
  avg = num1.to_f + num2.to_f
  avg /= 2
  avg = avg.round(2)
  puts "#{serial}-#{avg}"
end

serial_average('002-10.00-20.00')

# string changes in ruby 1.9
money = "¥1000"
puts "Each byte"
puts money.each_byte {|x| p x} # first char represented by two bytes

puts "Each char"
puts money.each_char {|x| p x} # prints each character

puts "Each codepoint"
puts money.each_codepoint {|x| p x} # prints each codepoint

puts "Each line"
puts money.each_line {|x| p x} # prints each line, for multiline strings

def count_multibyte_char(strings)
  count = 0
  strings.each_char do |x|
    count += 1 if x.bytesize > 1
  end
  count
end

puts count_multibyte_char('¥1000')