def run_three_times
  divide_by_smallest 600_851_475_143
  divide_by_smallest @x
  divide_by_smallest @x
end

def divide_by_smallest num
  input = num
  n = 2
  until input % n == 0
    n += 1
  end
  @x = input / n
end
