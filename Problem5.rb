class Problem5

  def smallest_multiple
    n = 1
    while n < 1000000000
      if n % 1 == 0 && n % 2 == 0 && n % 3 == 0 && n % 4 == 0 && n % 5 == 0 && n % 6 == 0 && n % 7 == 0 && n % 8 == 0 && n % 9 == 0 && n % 10 == 0 && n % 11 == 0 && n % 12 == 0 && n % 13 == 0 && n % 14 == 0 && n % 15 == 0 && n % 16 == 0 && n % 17 == 0 && n % 18 == 0 && n % 19 == 0 && n % 20 == 0
        return n
        break
      else
        n += 1
      end
    end
  end

end
