def lcm_of_two_numbers(num1, num2)
  return num1.lcm(num2)
end

def gcd_of_two_numbers(num1, num2)
  return num1.gcd(num2)
end

print "Enter first number:"
num1 = gets.chomp.to_i
print "Enter second number:"
num2 = gets.chomp.to_i

print "LCM:", lcm_of_two_numbers(num1, num2)
puts "\nGCD:", gcd_of_two_numbers(num1, num2)
