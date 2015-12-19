file_contents = []
File.open("miller_indices.rb") do |file|
  file_contents = file.readlines
end
#puts file_contents
# remove short lines
file_contents = file_contents.reject {|line| line.chop == "" }

numbered_lines = file_contents.map { |line| line.length}
puts numbered_lines

max_length_line = file_contents.max_by { |line| line.length}
puts max_length_line

min_length_line = file_contents.min_by { |line| line.length}
puts min_length_line

partitions = file_contents.partition { |line| line.length > 15}
p partitions[0]
p partitions[1]

p partitions[1].any? { |line| line.length > 5 }
p partitions[1].all? { |line| line.length > 5 }
p partitions[1].none? { |line| line.length < 0 }

partitions_bools = file_contents.map { |line| line.length > 15}
p partitions_bools