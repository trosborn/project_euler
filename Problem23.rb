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
  half = divisors.length / 2
  divisors.sort.map{ |div| [div, number / div] }.take(half).flatten.keep_if{ |n| n != number }
end

def check_abundancy number
  if proper_divisors(number).inject(:+) > number
    number
  else
    false
  end
end

def ary
  @ary = []
  n = 2
  while n <= 20161
    abundance = check_abundancy(n)
    if abundance != false
      @ary << abundance
    end
    n += 1
  end
end

def add_abundants
  n = 0
  sum_ary = []
  ary
  until n == @ary.length - 1
    i = 0
    until i == @ary.length - 1
      sum_ary << @ary[n] + @ary[i]
      i += 1
    end
    n += 1
  end
  (1..20161).to_a - sum_ary
end

#Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

