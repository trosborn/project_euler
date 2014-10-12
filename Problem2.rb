class Problem2

  def generate_fibonacci
    fibonacci = [1, 1]
    while fibonacci.last < 4000000 do
      n = fibonacci.last + fibonacci[-2]
      fibonacci.push(n)
    end
    fibonacci.pop
    @fibonacci = fibonacci
  end

  def find_evens
    @fibonacci.delete_if &:odd?
  end

  def find_sum
    @fibonacci.inject(:+)
  end
end
