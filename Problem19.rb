def loop year
  total_days = 366
  sundays = 0
  while year <= 2000
    month = 1
    while month <= 12
      total_days += days_in_month(month, year)
      unless year == 2000 && month == 12
        if (total_days + 1) % 7 == 0
          sundays += 1
        end
      end
      month += 1
    end
    year += 1
  end
  sundays
end

def days_in_month month, year
  if month == 2
    num_days = 28 + leap_year(year)
  else
    num_days = 31 - (month - 1) % 7 % 2
  end
end

def leap_year year
  if year % 4 == 0 && year % 400 != 0
    1
  else
    0
  end
end
