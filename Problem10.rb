class Problem10
  require 'prime'

  def find_primes
    ary = Prime.take_while { |i| i < 2_000_000 }
    ary.inject(:+)
  end
end
