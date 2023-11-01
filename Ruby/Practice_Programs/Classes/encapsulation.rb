class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def details
    puts "Name of Person is:#{@name}"
    puts "Age of Person is:#{@age}"
  end
end

person = Person.new("John", 21)
person.details
