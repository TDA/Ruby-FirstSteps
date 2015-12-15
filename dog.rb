class Dog
  @name = ""
  @age = 0

  def name=(name)
    @name = name
  end

  def name
    @name
  end

end

dog = Dog.new
dog.name = "rookie"
puts dog.name