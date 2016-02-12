class Variables_Strings
  hello = "ss"
  puts hello, "\n\n" # puts seems to put a newline after the sentence by def
  print hello.upcase # print doesnt
  puts
  hello = 'Ahoy '
  hello = hello.upcase
  puts hello
  puts hello + " welcome aboard ".reverse
  puts "#{hello} welcome aboard "
  puts hello.equal?(hello)

end