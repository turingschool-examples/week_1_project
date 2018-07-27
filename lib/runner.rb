require './lib/credit_card'
require './lib/bank'

card = CreditCard.new("5541808923795240", 15000)
bank = Bank.new("Wells Fargo")
purchase_price = 14000
valid = bank.valid_transaction? purchase_price, card
if valid
  puts "The purchase of #{purchase_price} dollars with card ending in #{card.last_four} was successful"
else
  puts "The purchase of #{purchase_price} dollars with card ending in #{card.last_four} was unsuccessful"
end
