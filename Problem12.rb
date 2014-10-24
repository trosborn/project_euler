class Problem12

  def triangular_number num
    n = num
    x = n*(n+1)/2
    puts x
    factors(x)
  end

  def factors num
    x = num
    root = Math.sqrt(num).ceil
    (1..root).select { |n| (x % n).zero? }
  end

  def check_divisors
    x = 10
    q = 0
    until q > 250
      x += 1
      q = triangular_number(x).length
    end
  end

end
