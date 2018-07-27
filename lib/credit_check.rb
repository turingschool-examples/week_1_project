def get_digits(card_number)
  characters = card_number.chars
  characters.map do |character|
    character.to_i
  end
end

def double_every_other(array_of_digits)
  array_of_digits.map.with_index do |digit, index|
    if index.even?
      digit * 2
    else
      digit
    end
  end
end

def sum_over_ten(digits)
  digits.map do |digit|
    if digit > 9
      digit - 9
    else
      digit
    end
  end
end

def sum_digits(digits)
  sum = 0
  digits.each do |digit|
    sum += digit
  end
  sum
end

def check_validity(sum)
  if sum % 10 == 0
    true
  else
    false
  end
end

def is_valid?(card_number)
  digits = get_digits(card_number)
  doubled_every_other = double_every_other(digits)
  summed = sum_over_ten(doubled_every_other)
  sum = sum_digits(summed)
  validity = check_validity(sum)
  if validity
    puts "The number #{card_number} is valid"
  else
    puts "The number #{card_number} is invalid"
  end
end

card_number = "5541801923795240"
is_valid?(card_number)
