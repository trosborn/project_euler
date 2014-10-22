class Problem12

  def triangular_number num
    n = num
    x = n*(n+1)/2
    factors(x)
  end

  def factors num
    x = num
    (1..x).select { |n| (x % n).zero? }
  end

  def check_divisors
    x = 50
    q = 10
    until q == 50
      x += 1
      q = triangular_number(x)
    end
  end

end
