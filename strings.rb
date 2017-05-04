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