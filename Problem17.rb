class Problem17

  def array
    n = 0
    ary = Array(1..999)
    ary.each do |a|
      n += number_count(a).length
    end
    remove_ands_from_pure_100s_and_add_1000 = "onethousand".length - 27
    puts n + remove_ands_from_pure_100s_and_add_1000
  end

  def number_count n
    num = n
    if n > 99
      triple_digits(n)
    elsif n > 9 && n < 100
      double_digits(n)
    else
      to_w(n)
    end
  end

  def triple_digits n
    num = n
    third_digit = num.to_s[0]
    hundred = to_w(third_digit) + "hundredand"
    last_two_digits = num.to_s[1, 2].to_i
    doubles = double_digits(last_two_digits)
    hundred + doubles
  end

  def double_digits n
    num = n
    if num <= 20
      to_w(num)
    else
      double = num.to_s[0].to_i + 18
      single = num.to_s[1]
      to_w(double) + to_w(single)
    end
  end

  def to_w n
    n = n.to_i
    spelling = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety', 'hundred']
    spelling.slice(n)
  end
end
