require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_card'

class CreditCardTest < Minitest::Test
  def test_it_exists
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_instance_of CreditCard, credit_card
  end

  def test_it_has_a_card_number
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal "5541808923795240", credit_card.card_number
  end

  def test_it_has_a_limit
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal 15000, credit_card.limit
  end

  def test_it_can_get_last_four_digits
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal "5240", credit_card.last_four
  end

  def test_it_can_get_digits
    credit_card = CreditCard.new("5541808923795240", 15000)
    expected = [5, 5, 4, 1, 8, 0, 8, 9, 2, 3, 7, 9, 5, 2, 4, 0]
    assert_equal expected, credit_card.get_digits("5541808923795240")
  end

  def test_it_can_double_every_other_digit
    credit_card = CreditCard.new("5541808923795240", 15000)
    input = [5, 5, 4, 1, 8, 0, 8, 9, 2, 3, 7, 9, 5, 2, 4, 0]
    expected = [10, 5, 8, 1, 16, 0, 16, 9, 4, 3, 14, 9, 10, 2, 8, 0]
    actual = credit_card.double_every_other(input)
    assert_equal expected, actual
  end

  def test_it_can_sum_digits_over_ten
    credit_card = CreditCard.new("5541808923795240", 15000)
    input = [10, 5, 8, 1, 16, 0, 16, 9, 4, 3, 14, 9, 10, 2, 8, 0]
    expected = [1, 5, 8, 1, 7, 0, 7, 9, 4, 3, 5, 9, 1, 2, 8, 0]
    actual = credit_card.sum_over_ten(input)
    assert_equal expected, actual
  end

  def test_it_can_sum_digits
    credit_card = CreditCard.new("5541808923795240", 15000)
    input = [1, 5, 8, 1, 7, 0, 7, 9, 4, 3, 5, 9, 1, 2, 8, 0]
    expected = 70
    actual = credit_card.sum_digits(input)
    assert_equal expected, actual
  end

  def test_it_can_check_validity_for_valid_card
    credit_card = CreditCard.new("5541808923795240", 15000)
    expected = true
    actual = credit_card.check_validity(70)
    assert_equal expected, actual
  end

  def test_it_can_check_validity_for_invalid_card
    credit_card = CreditCard.new("5541808923795240", 15000)
    expected = false
    actual = credit_card.check_validity(63)
    assert_equal expected, actual
  end

  def test_it_can_tell_when_a_card_is_valid
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal true, credit_card.is_valid?
  end

  def test_it_can_tell_when_a_card_is_invalid
    credit_card = CreditCard.new("4024007106512380", 15000)
    assert_equal false, credit_card.is_valid?
  end
end
