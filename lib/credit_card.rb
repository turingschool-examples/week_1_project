class CreditCard
  attr_reader :card_number, :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def last_four
    @card_number[-4..-1]
  end

  def is_valid?
    digits = get_digits(@card_number)
    doubled_every_other = double_every_other(digits)
    summed = sum_over_ten(doubled_every_other)
    sum = sum_digits(summed)
    check_validity(sum)
  end

  def get_digits(card_number)
    digit_array = []
    characters = card_number.chars
    characters.each do |character|
      digit_array << character.to_i
    end
    digit_array
  end

  def double_every_other(array_of_digits)
    doubled = []
    array_of_digits.each.with_index do |digit, index|
      if index.even?
        doubled << digit * 2
      else
        doubled << digit
      end
    end
    doubled
  end

  def sum_over_ten(digits)
    summed_over_ten = []
    digits.each do |digit|
      if digit > 9
        summed_over_ten << digit - 9
      else
        summed_over_ten << digit
      end
    end
    summed_over_ten
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
end
