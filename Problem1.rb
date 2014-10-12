class Problem1
attr_accessor :filter

  def filter_multiples
    ary = Array(1..999)
    @filter = Array.new
    ary.each do |a|
      if a % 3 == 0 || a % 5 == 0
        @filter.push(a)
      end
    end
  end

  def add_multiples
    puts filter.inject(:+)
  end
end
