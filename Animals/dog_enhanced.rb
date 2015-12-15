require './animal'
class DogEnhanced < Animal
  # notice default params/args
  def greet(message = "hello")
    # checking if overloads are possible
    # overloads ARE NOT possible, the last one
    # overrides all other definitions

    # notice no parantheses cuz no params/args :D
    # notice no return, this is an implicit return, the last
    # statement is ALWAYS returned by Ruby
    # notice the # followed by @ as well for instance vars
    "#{@name} says #{message}, and is #{@age} year(s) old"
  end

  # override the base class
  def age=(age)
    if !age or age < 0
      raise "Age cant be #{age} mister"
    else
      @age = age * 4
    end
  end

end

dog = DogEnhanced.new
dog.name = "rookie"
dog.age = 1
puts dog.greet("woof woof")


# Looks like u can redefine/reuse the same object :\
# dont really like this feature, but yeah lets see
dog = DogEnhanced.new
dog.name = "as"
dog.age = 0
puts dog.greet