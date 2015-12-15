class DogEnhanced
  attr_accessor :age, :name
  @name = 'Sai'
  @age = 0
end

dog = DogEnhanced.new
dog.name = "rookie"
dog.age = 1
puts "#{dog.name} name"
puts "#{dog.age} age"