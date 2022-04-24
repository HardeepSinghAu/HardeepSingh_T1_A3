require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
require_relative("./calorie.rb")
require_relative("./bmi.rb")


# puts "What did you eat for breakfast today?"
# breakfast = gets.chomp

# puts "What did you eat for lunch today?"
# lunch = gets.chomp

# puts "What did you eat for dinner today?"
# dinner = gets.chomp

# puts "Which snacks did you eat today?"
# snacks = gets.chomp

# puts "What did you drink today?"
# drinks = gets.chomp

# meals = ["#{breakfast}", "#{lunch}", "#{dinner}", "#{snacks}", "#{drinks}"]

# puts "today you ate:" 
# puts meals

# class meals
#     def initialize(food, amount)
#         @food = food
#         @amount = amount
#     end

class Intake
    def initialize(days,day, meal_data, meal_names)
        @days = Day.all
        @day = Day.new
        @meal_data = []
        @meal_names = []
        @days.each do |a|
            @meals
    end
end

