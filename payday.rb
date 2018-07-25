require 'pry'

loop do # Activity 4. Looping is added at the end

  ## Activity 1
  cheap_restaurants = ["Taco Bell", "Chick-fil-A", "KFC"]
  inexpensive_restaurants = ["Shake Shack", "Snarfs", "Pho 96"]
  expensive_restaurants = ["Ruth's Chris", "Acorn", "The Kitchen"]
  puts "Hello, I am the computer! What is your name?"
  name = gets.chomp
  number_of_restaurants = cheap_restaurants.length + inexpensive_restaurants.length + expensive_restaurants.length
  puts "Hello #{name}! I am here to suggest you a restaurant! I will be choosing from these #{number_of_restaurants} restaurants:"
  cheap_list = cheap_restaurants.shuffle.join(", ")
  inexpensive_list = inexpensive_restaurants.shuffle.join(", ")
  expensive_list = expensive_restaurants.shuffle.join(", ")
  puts "Cheap options: #{cheap_list}"
  puts "Inexpensive options: #{inexpensive_list}"
  puts "Expensive options: #{expensive_list}"


  ## Activity 2
  puts "What is your daily pay?"
  daily_pay = gets.chomp.to_i
  weekly_pay = 0
  5.times do
    weekly_pay = weekly_pay + daily_pay
  end
  puts "Your weekly pay is #{weekly_pay} dollars"
  puts "What are your weekly expenses?"
  weekly_expenses = gets.chomp.to_i
  weekly_spending_money = weekly_pay - weekly_expenses
  puts "You have #{weekly_spending_money} dollars to spend"


  ## Activity 3
  if spending_money > 0 && spending_money <= 5
    restaurant = cheap_restaurants.sample
    puts "I suggest you eat at #{restaurant}"
  elsif spending_money > 5 && spending_money <= 15
    restaurant = inexpensive_restaurants.sample
    puts "I suggest you eat at #{restaurant}"
  elsif spending_money > 15
    restaurant = expensive_restaurants.sample
    puts "I suggest you eat at #{restaurant}"
  else
    puts "You have no money!"
  end
end


# Additional features:

  # Add a list of fancy_restaurants. The program
  # should suggest a fancy restaurant when the amount
  # of spending money is greater than 100

  # Instead of an infinite loop, the program should ask the user
  # if they want it to suggest another restaurant. Make this work
  # with a loop do and a while
