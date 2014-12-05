class Problem14

  def iterate
    i = 2
    b = 1
    while i < 1_000_000
      n = i
      chain_length = 1
      a = 1
      until n == 1
        if n.odd?
          n = 3*n + 1
          chain_length += 1
        elsif n.even?
          n = n/2
          chain_length += 1
        end
      end
      if chain_length > b
        b = chain_length
        print i
        print ' '
      end
      i += 1
    end
  end

end
