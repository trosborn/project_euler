require 'prime'

def proper_divisors number
  primes, powers = number.prime_division.transpose
  if powers == nil
    return ary = []
  end
  exponents = powers.map{ |i| (0..i).to_a }
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{ |prime, power| prime ** power }.inject(:*)
  end
  divisor_array = divisors.uniq - [number]
end

def check_abundancy number
  if proper_divisors(number).inject(:+) > number
    number
  else
    false
  end
end

def abundant_array
  ary = []
  n = 2
  while n <= 20161
    abundance = check_abundancy(n)
    if abundance != false
      ary << abundance
    end
    n += 1
  end
  ary
end

def add_abundant_array_to_self
  n = 0
  ary = abundant_array
  sum_ary = []
  until n == ary.length
    i = 0
    until i == ary.length
      sum_ary.push(ary[n] + ary[i])
      i += 1
    end
    n += 1
  end
  ((1..20161).to_a - sum_ary).inject(:+)
end

#Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

