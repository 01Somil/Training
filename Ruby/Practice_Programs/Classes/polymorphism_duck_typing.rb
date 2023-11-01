class Hotel
  def enters
    puts "A customer entered in hotel:"
  end

  def type(customer)
    customer.type
  end

  def room(customer)
    customer.room
  end
end

class Single
  def type
    puts "Room is on fourth floor"
  end

  def room
    puts "Price of room is : 5K"
  end
end

class Couple
  def type
    puts "Room is on second floor"
  end

  def room
    puts "Price of room is : 10K"
  end
end

hotel = Hotel.new
puts "Single visitor enters:"
customer = Single.new
hotel.type(customer)
hotel.room(customer)

puts "\nCouple enters:"
customer = Couple.new
hotel.type(customer)
hotel.room(customer)
