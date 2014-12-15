def generate_fibonacci
  fibonacci = [1, 1]
  while fibonacci.last.to_s.length < 1000 do
    n = fibonacci.last + fibonacci[-2]
    fibonacci.push(n)
  end
  fibonacci.length
end
