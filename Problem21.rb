require 'prime'

def compare_divisors
  a = 2
  amicable_numbers = []
  while a <= 10_000
    b = add_divisors(a)
    if (a == add_divisors(b)) && (a != b)
      amicable_numbers.push(a)
    end
    a += 1
  end
  amicable_numbers.inject(:+)
end

def add_divisors number
  proper_divisors(number).inject(:+)
end

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
