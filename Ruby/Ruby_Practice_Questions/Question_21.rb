def is_prime(num)
  _temp = num / 2
  for i in 2.._temp.round
    if num % i == 0
      return false
    end
  end

  return true
end

def arr_of_primes(n)
  if n < 2
    return []
  end
  primes = []
  for i in 2..n
    if is_prime(i)
      primes.push(i)
    end
  end

  return primes
end

print "Enter a number (less than 1000):"
n = gets.chomp.to_i

print arr_of_primes(n)
