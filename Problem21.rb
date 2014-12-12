require 'prime'

def add_factors number
  proper_divisors(number).inject(:+)
end

def proper_divisors number
  primes, powers = number.prime_division.transpose
  exponents = powers.map{ |i| (0..i).to_a }
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{ |prime, power| prime ** power }.inject(:*)
  end
  half = divisors.length / 2
  divisors.sort.map{ |div| [div, number / div] }.take(half).flatten.keep_if{ |n| n != number }
end
