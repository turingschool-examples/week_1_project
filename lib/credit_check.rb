card_number = "5541801923795240"

digits = card_number.chars
double_every_other = []
digits.each.with_index do |digit, index|
  if index.even?
    double_every_other << digit.to_i * 2
  else
    double_every_other << digit.to_i
  end
end

summed_over_ten = []
double_every_other.each do |digit|
  if digit > 9
    summed_over_ten << digit - 9
  else
    summed_over_ten << digit
  end
end

sum = 0
summed_over_ten.each do |digit|
  sum += digit
end

if sum % 10 == 0
  puts "The number #{card_number} is valid"
else
  puts "The number #{card_number} is invalid"
end
