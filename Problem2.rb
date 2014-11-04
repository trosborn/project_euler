class Problem2

  def generate_fibonacci
    fibonacci = [1, 1]
    while fibonacci.last < 4_000_000 do
      n = fibonacci.last + fibonacci[-2]
      fibonacci.push(n)
    end
    fibonacci.pop
    fibonacci.delete_if &:odd?
    fibonacci.inject(:+)
  end

end
