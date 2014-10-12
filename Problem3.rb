class Problem3

  def find_smallest_prime num
    @num = num
    @n = 2
    until @num % @n == 0
      @n += 1
    end
    return @num / @n
  end
end
