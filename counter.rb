require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
prompt = TTY::Prompt.new





class Total_cal

    def initialize (food_item, calories_per_food, quantity)
        @food_item = food_item
        @calories_per_food = calories_per_food
        @quantity = quantity
    end

#     def add_food(food_item, calories_per_food, quantity)

#     eats = []
#     foods = []

#     prompt = TTY::Prompt.new

#     @food_item = prompt.ask("What did you eat today? ")
    
#     if foods.include?(food_item)
#         puts "you have already added #{food_item} please add a new food item"
#     else 
#     end
#     foods << food_item

#     food_item_calories =  prompt.ask("how many calories is in one #{food_item}? ")

#     print "how many #{food_item} did you eat today? "
#     quantity = gets.chomp.to_i
#     cal_per_food = food_item_calories.to_i * quantity

#     eats << cal_per_food


#     eats.each do |food_item, cal_per_food|
#         puts "you ate #{quantity} lots of #{row["food_item"]} which are #{row["cal_per_food"]} calories each "
#     end

#     puts "would you like to add another food item? (y/n)"
#     ans = gets.chomp
#     if ans == "y"
#         cal_count
#     else
#         require_relative "index.rb"
#     end

# end
# end


# ----------------------------------------------------------------



def add_food(food_item, calories_per_food, quantity)
    eats = []
    foods = []

    prompt = TTY::Prompt.new

    food_item = prompt.ask("What did you eat today? ")
    
    if foods.include?(food_item)
        puts "you have already added #{food_item} please add a new food item"
    else 
    end
    foods << food_item

    food_item_calories =  prompt.ask("how many calories is in one #{food_item}? ")

    print "how many #{food_item} did you eat today? "
    quantity = gets.chomp.to_i
    cal_per_food = food_item_calories.to_i * quantity

    eats << cal_per_food


    eats.each do |food_item, cal_per_food|
        puts "you ate #{quantity} lots of #{"food_item"} which are #{"cal_per_food"} calories each "
    end

    puts "would you like to add another food item? (y/n)"
    ans = gets.chomp
    if ans == "y"
        add_food
    else
        require_relative "index.rb"
    end
end
end

