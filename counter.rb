require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
prompt = TTY::Prompt.new


begin

    def cal_count

    calories = []
    eats = []
    prompt = TTY::Prompt.new
    food_item = prompt.ask("What did you eat today? ")
    
    if eats.include?(food_item)
        puts "you have already added #{food_item} please add a new food item"
    else 
        eats.push(food_item)
    end
    food_item_calories =  prompt.ask("how many calories is in one #{food_item}? ")
    print "how many #{food_item} did you eat today? "
    quantity = gets.chomp.to_i

    cal_per_food = food_item_calories.to_i * quantity
    calories.push(cal_per_food) 

    puts "You ate #{quantity} lots of #{food_item} which is a total of #{cal_per_food} calories  "
    
    puts "would you like to add another food item? (y/n)"
    ans = gets.chomp
    if ans == "y"
        cal_count
    else
        require_relative "options.rb"
    end
end
end
cal_count