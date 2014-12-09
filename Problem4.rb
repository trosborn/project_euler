def populate_array
  array = Array.new
  i = 99
  while i < 1000 do
    i += 1
    n = 99
    while n < 1000 do
      n += 1
      x = i * n
      array.push(x)
    end
  end
  find_palindromes array
end

def find_palindromes array
  ary = array
  palindromes = Array.new
  ary.each do |a|
    if a.to_s.reverse == a.to_s
      palindromes.push(a)
    end
  end
  return palindromes.sort.last
end
