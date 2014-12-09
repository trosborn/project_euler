def triplet
  n = 2
  while n < 50
    n += 1
    m = 1
    while m < 50
      m += 1
      a = n**2 - m**2
      b = 2*n*m
      c = n**2 + m**2
      y = a + b + c
      if y == 1000
        puts a * b * c
      end
    end
  end
end
