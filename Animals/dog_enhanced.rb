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
  # age= is the name of the function/method :D
  def age=(age)
    super
    @age = @age * 4
  end

  def to_s
    # multiline print statements are so cool :D
    # here we are using the accessors to get value of name and age :)
    # can also use the @name @age :)
    "Dog : {
      Name : #{name},
      Dog Age : #{age}
    }"
  end


end

dog = DogEnhanced.new
puts "Instance variables #{dog.instance_variables}"
#puts "Instance methods #{dog.methods}"
dog.name = "rookie"
dog.age = 1
puts "Instance variables #{dog.instance_variables}"
puts dog.greet("woof woof")


# Looks like u can redefine/reuse the same object :\
# dont really like this feature, but yeah lets see
dog = DogEnhanced.new
dog.name = "as"
dog.age = 0
puts dog.greet
puts dog