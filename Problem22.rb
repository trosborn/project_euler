def to_number string
  ary = []
  string.split('').each do |a|
    ary << a.gsub(/[A-Z]/) {|m| m.ord - 64}
  end
  ary
end

def names
  ary = []
  f = File.open('Problem22.txt')
  file = f.read.split('"')
  no_commas = file.reject{ |v| file.index(v).even?}.sort
  no_commas.each do |a|
    ary << to_number(a)
  end
  multiply_numbers(ary)
end

def multiply_numbers array
  num = 0
  array.each_with_index do |a, index|
    num += a.map{ |s| s.to_i }.inject{ |sum,x| sum + x } * (index + 1)
  end
  num
end


