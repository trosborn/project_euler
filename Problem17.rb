class Problem17

  def array
    n = 0
    ary = Array("1".."1000")
    ary.each do |a|
      n += spell_number(a).length
    end
    puts n
  end

  def spell_number num
    n = num
    if n.to_i >= 100
      bigcount(n)
    elsif n.to_i < 100
      count(n)
    end
  end

  def bigcount n
    if n[2].to_i != 0
      n = n[0]
      to_w(n) + " hundred and"
    else
      n = n[0]
      to_w(n) + " hundred"
    end
  end

  def count n
    if n.to_i < 20
      if n[0].to_i != 1
        n = n[0]
        to_bigw(n)
      else
        n = n[0] + n[1]
        to_w(n)
      end
    else
      b = n[0]
      x = n[1]
      to_bigw(b) + " " + to_w(x)
    end
  end

  def to_w n
    n = n.to_i
    spelling = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    spelling.slice(n)
  end

  def to_bigw n
    n = n.to_i
    spelling = ['zero', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    spelling.slice(n)
  end
end
