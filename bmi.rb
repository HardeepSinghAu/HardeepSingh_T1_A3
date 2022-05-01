require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
prompt = TTY::Prompt.new



begin
mass = prompt.ask("We are now going to calculate your body mass index (BMI). Please enter your weight in kilograms: ", required: true)

puts "Please enter your height in metres: "
height = gets.chomp.to_f

BMI = (mass.to_f/height ** 2)
puts "================================================================"
puts "Your BMI is #{BMI.to_i}"
rescue ZeroDivisionError
    puts "height cannot be zero"
    retry
rescue TypeError
    puts "cannot divide with a string"
    retry
rescue FloatDomainError
        "please enter a valid number"
    retry
end

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

ideal_weight_lower = ((height ** 2) * 18.5)
ideal_weight_upper = ((height ** 2) * 24.9) 
puts "Your healthy weight range is #{ideal_weight_lower.to_i} to #{ideal_weight_upper.to_i}kg"

sleep 1
puts "BMI is not an accurate indicator of health as it does not account for body fat percentage and distribution. For serious concerns regarding your health, always see your General Practioner.".red 
