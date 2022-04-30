require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
prompt = TTY::Prompt.new



# def 
#     print_intake(array)
#     puts "Today you ate: "
#   food_array.each do |product|
#     puts "#{product}"
#   end
# end

# make a hash to push user input onto



begin
    def cal_count
        
    eats = []


    prompt = TTY::Prompt.new

    food_item = prompt.ask("What did you eat today? ")
    
    if eats.include?(food_item)
        puts "you have already added #{food_item} please add a new food item"
    else 
    end

    food_item_calories =  prompt.ask("how many calories is in one #{food_item}? ")

    print "how many #{food_item} did you eat today? "
    quantity = gets.chomp.to_i
    cal_per_food = food_item_calories.to_i * quantity
    eats << {food_item => a, quantity => b, food_item_calories => c}

    eats.each do |a, b, c|
    puts "You ate #{a} lots of #{b} which is #{c} calories  "
    end
    puts "would you like to add another food item? (y/n)"
    ans = gets.chomp
    if ans == "y"
        cal_count
    else
        require_relative "index.rb"
    end

end
end
cal_count