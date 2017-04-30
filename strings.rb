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

