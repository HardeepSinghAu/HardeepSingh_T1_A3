require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'

# require_relative("./calorie.rb")

# class BMI
#     def initialize(mass, height)
#         @mass = mass
#         @height = height
#     end    
#     def to_s
#         return body = (#{@mass}/(#{@height}**2))
#     end
# end

# user1 = BMI.new(65, 1.5)
# puts user1

mass = 65
height = 1.52
BMI = (mass/height**2)
puts "Your BMI is #{BMI.to_i}"

case BMI
when 0..18.5
    puts "You are underweight".red
when 18.5..24.9 
    puts "You are normal weight".green
when 25..29.9
    puts "You are overweight".red
when 30..;
    puts "You are obese".red    
else 
    puts "Invalid input".red
end

ideal_weight_lower = height**2 * 18.5
ideal_weight_upper = height**2 * 24.9 
puts "Your healthy weight range is #{ideal_weight_lower.to_i} to #{ideal_weight_upper.to_i}kg"

sleep 2
puts "BMI is not an accurate indicator of health as it does not account for body fat percentage and distribution. For serious concerns regarding your health, always see your General Practioner.".red 
