class DogEnhanced
  attr_reader :age, :name
  # adding validation
  def name=(name)
    if name == ""
      raise "Name cant be empty mister"
    else
      @name = name
    end
  end

  def age=(age)
    if age < 0
      raise "Age cant be #{age} mister"
    else
      @age = age
    end
  end

end

dog = DogEnhanced.new
dog.name = "rookie"
dog.age = 1
puts "#{dog.name} name"
puts "#{dog.age} age"


# Looks like u can redefine/reuse the same object :\
dog = DogEnhanced.new
dog.name = "as"
dog.age = 0
puts "#{dog.name} name"
puts "#{dog.age} age"