class Dog
  # ruby doesnt like declaring variables inside a class,
  # in fact, it actually counts as a CLASS VARIABLE and NOT INSTANCE VARIABLE :O
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