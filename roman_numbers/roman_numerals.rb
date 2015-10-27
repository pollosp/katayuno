def arabic_to_roman (number)
  result=''

  if number == 0
    ''
  end

  if number <= 3
    result += 'I' * number
  elsif number == 10
    result = 'X'
  else
    if number < 5
      result = arabic_to_roman(5 - number) + 'V'
    else
      result = 'V' + arabic_to_roman(number-5)
    end
  end

  return result
end
