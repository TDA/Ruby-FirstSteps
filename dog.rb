class Dog
  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def age=(age)
    @age = age
  end

  def age
    @age
  end

end

dog = Dog.new
dog.name = "rookie"
dog.age = 1
puts "#{dog.name} name"
puts "#{dog.age} age"