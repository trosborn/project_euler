def tree
  ary = []
  f = File.open('Problem18.txt')
  file = f.read
  file.each_line do |line|
    ary << line.split.map(&:to_i)
  end
  compare_sums(ary)
end

def compare_sums array
  ary = array
  i = ary.length - 1
  while i > 0
    n = ary[i].length - 1
    while n > 0
      if ary[i][n] > ary[i][n-1]
        ary[i-1][n-1] = ary[i][n] + ary[i-1][n-1]
      else
        ary[i-1][n-1] = ary[i][n-1] + ary[i-1][n-1]
      end
      n -= 1
    end
    puts ary[0][0]
    i -= 1
  end
end
