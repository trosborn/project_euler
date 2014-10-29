class Problem15
  def binomial n, k
    z = n-k
    factor(n)/factor(k)*factor(z)
  end

  def factor x
    x.downto(1).inject(:*)
  end
end
