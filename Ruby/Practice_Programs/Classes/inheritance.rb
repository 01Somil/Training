class Animal
  def walk
    puts "Animal can walk"
  end

  def eat
    puts "Animal can eat"
  end
end

class Dog < Animal
  def voice
    puts "Dog can bark"
  end
end

d = Dog.new
d.walk
d.eat
d.voice
