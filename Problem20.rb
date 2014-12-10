def array
  factor(100).to_s.split('').map(&:to_i).inject(:+)
end

def factor x
  (1..x).inject(:*) || 1
end
