class Variables_Strings
  hello = "ss"
  puts hello, "\n\n" # puts seems to put a newline after the sentence by def
  print hello.upcase # print doesnt
  puts
  hello = ' ahoy '
  hello = hello.upcase
  puts hello
  puts hello + " welcome aboard ".reverse
  puts hello.equal?(hello)

end