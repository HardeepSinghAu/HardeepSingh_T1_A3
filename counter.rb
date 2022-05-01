require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
prompt = TTY::Prompt.new






begin
    def cal_count
        
    eats = []


    prompt = TTY::Prompt.new

    food_item = prompt.ask("What did you eat today? ")
    
    if eats.include? (food_item)
        puts "you have already added #{food_item} please add a new food item"
    else 
    end

    food_item_calories =  prompt.ask("how many calories is in one #{food_item}? ")

    print "how many #{food_item} did you eat today? "
    quantity = gets.chomp.to_i
    cal_per_food = food_item_calories.to_i * quantity

    eats << {"a" => food_item, "b" => quantity, "c" => food_item_calories, "d" => cal_per_food}


    eats.each do |row|
        puts "================================================================"
        puts "you ate #{row["b"]} lots of #{row["a"]} which are #{row["c"]} calories each "
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