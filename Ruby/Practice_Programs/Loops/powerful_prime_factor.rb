def powerful_prime_factor(num)
  factors_hash = Hash.new
  number = num
  for i in 2..num
    while (number % i == 0 && number > 1)
      if factors_hash.key?(i)
        factors_hash[i] += 1
      else
        factors_hash[i] = 1
      end
      number /= i
    end
    if number <= 1
      break
    end
  end
  primes = factors_hash.keys
  primes = primes.sort
  res = ""
  primes.each do |x|
    freq = factors_hash[x]
    res += x.to_s
    if freq > 1
      res += "^#{freq.to_s} x "
    elsif freq == 1
      res += " x "
    end
  end

  return res.slice(0, res.length - 3)
end

print "Enter a number:"
num = gets.chomp.to_i

puts powerful_prime_factor(num)
