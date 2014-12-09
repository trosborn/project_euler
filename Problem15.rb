def binomial
  n = 20 + 20
  n = factor(n)
  x = factor(20)
  n / (x*x)
end

def factor x
  (1..x).inject(:*) || 1
end
