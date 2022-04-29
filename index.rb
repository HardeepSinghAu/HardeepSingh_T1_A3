require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'

# require_relative("./counter.rb")
# require_relative("./calories_required.rb")
# require_relative("./bmi.rb")

prompt = TTY::Prompt.new
food_array = []

def show_options
    puts "1. Calculate BMI"
    puts "2. Calculate minimum required calories per day"
    puts "3. Calculate my calorie intake for today"
    puts "4. Finished"
    
    print "Enter your option: "
    opt =gets.chomp
    return opt
end

def print_intake(array)
    puts "Today you ate: "
  array.each do |product|
    puts "#{product}"
  end
end

def add_calories(array)
    print "What did you eat today? "
    food_item = gets.chomp
    if array.include?(food_item)
        puts "you have already added #{food_item} please add a new food item "
    else array.push(food_item)
    print "how many calories is in one #{"food_item"}? "
    food_item_calories = gets.chomp.to_i
    print "how many #{food_item} did you eat today? "
    quantity = gets.chomp.to_i
    cal_per_food = food_item_calories * quantity
    print "your calorie intake for #{food_item} was #{cal_per_food}."
    end
end


option = ""
while option != "4"
 option = show_options

 case option
 when "1"
    require_relative "bmi.rb"
 when "2"
    require_relative "calories_required.rb"
 when "3"
    require_relative "counter.rb"
    
 when "4"
    next
 else
 puts  "Invalid entry"
 end
 print "Press ENTER to continue..."

 gets
end

puts "Thank you! see you next time"
