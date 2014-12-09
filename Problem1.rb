def filter_multiples
  ary = Array(1..999)
  filter = Array.new
  ary.each do |a|
    if a % 3 == 0 || a % 5 == 0
      filter.push(a)
    end
  end
  puts filter.inject(:+)
end

