class Problem5

  def smallest_multiple
    i = 2
    n = 1
    ary = Array.new
    while i <= 20
      if i % n = 0 && i = 20
        return ary
      elsif i % n = 0
        ary.push(n)
        i += 1
        n += 1
      end
    end
  end

end
