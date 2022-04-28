require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
prompt = TTY::Prompt.new



# def 
   

#     print_intake(array)
#     puts "Today you ate: "
#   array.each do |product|
#     puts "#{product}"
#   end
# end



begin
    food_array = []
    prompt = TTY::Prompt.new

    food_item = prompt.ask("What did you eat today? ")
    # food_array << food_item
    if food_array.include?(food_item)
        puts "you have already added #{food_item} please add a new food item"
    else food_array.push(food_item)
    food_item_calories =  prompt.ask"how many calories is in one #{food_item}? "

    print "how many #{food_item} did you eat today? "
    quantity = gets.chomp.to_i
    cal_per_food = food_item_calories.to_i * quantity
    print "your calorie intake for #{food_item} was #{cal_per_food}  "
    end
end

more_food 