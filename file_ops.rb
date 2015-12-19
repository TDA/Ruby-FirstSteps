file_contents = []
File.open("file_ops.rb") do |file|
  file_contents = file.readlines
end
puts file_contents

puts "Now only puts:"
puts_statements = file_contents.find_all {|line| line.include?("puts\ ")}

puts puts_statements
