def power_up
  n = 2**1000
  f = n.to_s.split('')
  f.collect{|i| i.to_i}.inject(:+)
end
