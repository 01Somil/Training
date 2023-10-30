# Function for reversing the string 
def reverse(str)
  if str.length == 0
    return ""
  end
  return str[-1] + reverse(str.slice(0...-1))
end

# Taking the user input 
print "Enter the string:"
str = gets.chomp

puts reverse(str)
