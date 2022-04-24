require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
require_relative("./bmi.rb")

# Men: BMR = 88.362 + (13.397 x weight in kg) + (4.799 x height in cm) – (5.677 x age in years)
# Women: BMR = 447.593 + (9.247 x weight in kg) + (3.098 x height in cm) – (4.330 x age in years)

# welcome message
    puts "Welcome to Calorie Counter".green
    sleep 1 
    puts "Please enter your name: ".yellow
    name = gets.chomp

    puts "Hello #{name}! Please enter your weight in kg: ".yellow
    weight = gets.chomp.to_f

    puts "Please enter your height in cm: ".yellow
    height = gets.chomp.to_f
    
    puts "Please enter your age in years: ".yellow
    age = gets.chomp.to_i

    puts "are you male or female? (m/f): ".yellow.strip 
    gender = gets.chomp
    MaleBMR = ((88.362 + (13.397 * weight)) + ((4.799 * height)) - (5.677 * age))
    FemaleBMR = ((447.593 + (9.247 * weight)) + ((3.098 * height)) - (4.330 * age))

    bar = TTY::ProgressBar.new("downloading [:bar]", total: 15)

    15.times do
        sleep(0.1)
        bar.advance  
      end

    if gender == "m"
        puts MaleBMR.to_i
    else
    puts FemaleBMR.to_i
    end