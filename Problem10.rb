class Problem10
  require 'prime'

  def find_primes
    ary = Prime.take_while { |i| i < 2000000 }
    ary.inject(:+)
  end
end
