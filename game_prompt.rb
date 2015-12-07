class GamePrompt
  puts "Enter your name"
  name = gets
  puts "Welcome #{name}"
  random = rand(100) + 1
  no_of_guesses = 0
  max_no_of_guesses = 7
  puts "Guess the number"
  guess = gets.chomp
  p guess
  while guess != random
    if (guess < random) then
      puts "Too low"
    else
      puts "Too high"
    end

    no_of_guesses += 1
    if no_of_guesses >= max_no_of_guesses
      puts "too bad, you couldnt guess my number", random
      break
    end


  end
  if (no_of_guesses < max_no_of_guesses) then
    puts "Congrats you got it right"
  end

end