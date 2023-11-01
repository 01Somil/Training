module Child_1
  def a1
    puts "This is Child1 module"
  end
end

module Child_2
  def a2
    puts "This is Child2 module"
  end
end

module Child_3
  def a3
    puts "This is Child3 module"
  end
end

class Parent
  include Child_1
  include Child_2
  include Child_3

  def print
    puts "This is Parent class function"
  end
end

obj = Parent.new
obj.print
obj.a1
obj.a2
obj.a3
