class Problem6

  def sum_square_difference
    ary = Array(1..100)
    sum_square = ary.map{|x| x**2}.inject(0, &:+)
    square_sum = ary.inject(:+)
    square_sum**2 - sum_square
  end

end
