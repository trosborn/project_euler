def tree
  @ary = Array.new
  f = File.open('Problem18.txt')
  file = f.read
  file.each_line do |line|
    @ary << line.split.map(&:to_i)
  end
end

def compare_sums
  i = @ary.length -1
  while i > 0
    n = @ary[i].length

  end
end
