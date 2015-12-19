class GamePrompt
  puts "Enter your name"
  name = gets.chomp
  puts "Welcome #{name}"
  random = rand(100) + 1
  no_of_guesses = 1
  max_no_of_guesses = 7
  puts "Guess the number"
  guess = gets.chomp.to_i
  guessed_right = false
  # basically until is a real life eg of de-moivres :D
  # not (a OR b) == (not a) AND (not b)
  # so until a || b == while !a and !b
  until guessed_right || no_of_guesses > max_no_of_guesses
    if guess == random
      guessed_right = true
      break
    end
    if guess < random
      puts "Too low"
    else
      puts "Too high"
    end
    puts "You have #{max_no_of_guesses - no_of_guesses} left"
    no_of_guesses += 1
    guess = gets.chomp.to_i
  end
  if guessed_right
    puts "Congrats #{name} you got it right in #{no_of_guesses} guesses"
  else
    puts "Too bad, you couldnt guess my number", random
  end
end