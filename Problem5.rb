class Problem5

  def smallest_multiple
    n = 1
    while n < 200000000 do
      n += 1
      i = 2
      while i <= 20 do
        if n % i == 0 && i == 20
          return n
        elsif n % i == 0
          i += 1
        else
          break
        end
      end
    end
  end

end
