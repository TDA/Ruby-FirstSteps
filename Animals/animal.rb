class Animal
  # love these auto-getter/setter types :D
  # notice the difference, we use symbols here, NOT instance var names
  attr_reader :age, :name
  # adding validation
  def name=(name)
    if name == ""
      raise "Name cant be empty mister"
    else
      # instance vars start with @
      @name = name
    end
  end

  def age=(age)
    if !age or age < 0
      raise "Age cant be #{age} mister"
    else
      @age = age
    end
  end
end