require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'

begin
food_array = []

  prompt = TTY::Prompt.new

    weight = prompt.ask("Hello! Please enter your weight in kg: ".yellow, required: true)

    height = prompt.ask("Please enter your height in cm: ".yellow, required: true)
    
    age = prompt.ask("Please enter your age in years: ".yellow, required: true)
    
    gender = prompt.ask("are you male or female? (m/f): ".yellow.strip, required: true)

    maleBMR = ((88.362 + (13.397 * weight.to_f)) + ((4.799 * height.to_f)) - (5.677 * age.to_i))
    femaleBMR = ((447.593 + (9.247 * weight.to_f)) + ((3.098 * height.to_f)) - (4.330 * age.to_i))

    bar = TTY::ProgressBar.new("downloading [:bar]", total: 15)

    15.times do
        sleep(0.1)
        bar.advance  
      end

    if gender == "m"
        puts "Your calories required per day are #{maleBMR.to_i} calories."
    else
    puts "Your calories required per day are #{femaleBMR.to_i} calories."
    end
  end
