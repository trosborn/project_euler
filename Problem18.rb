def tree
  @ary = Array.new
  f = File.open('Problem18.txt')
  file = f.read
  file.each_line do |line|
    @ary << line.split.map(&:to_i)
  end
end

def compare_sums
  if @ary[8][8] + @ary[9][9] > @ary[8][8] + @ary[9][8]
    return @ary[8][8] + @ary[9][9]
  else
    return @ary[8][8] + @ary[9][8]
  end
end
