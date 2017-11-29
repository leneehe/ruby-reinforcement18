def ordinal(number)
  if (number.digits.first == 1 && number.digits[1] == 1) || (number.digits.first == 2 && number.digits[1] == 1) || (number.digits.first == 3 && number.digits[1] == 1)
    return number.to_s + 'th'
  else
    if number.digits.first == 1
      return number.to_s + 'st'
    elsif number.digits.first == 2
      return number.to_s + 'nd'
    elsif number.digits.first == 3
      return number.to_s + 'rd'
    else
      return number.to_s + 'th'
    end
  end
end

(0..50).each do |n|
  puts ordinal(n)
end
