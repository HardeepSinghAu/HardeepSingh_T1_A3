require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'

# require_relative("./counter.rb")
# require_relative("./calories_required.rb")
# require_relative("./bmi.rb")

prompt = TTY::Prompt.new

puts "Welcome to Calorie Counter!"


def show_options
   puts "==========================="
    puts "1. Calculate BMI"
    puts "2. Calculate minimum required calories per day"
    puts "3. Calculate my calorie intake for today"
    puts "4. Finished"
    puts "==========================="
    print "Enter your option: "
    opt =gets.chomp
    return opt
end

def print_intake(array)
    puts "Today you ate: "
  array.each do |product|
    puts "#{product}"
  end
end

option = ""
while option != "4"
 option = show_options

 case option
 when "1"
    require_relative "bmi.rb"
 when "2"
    require_relative "calories_required.rb"
 when "3"
    require_relative "counter.rb"
    
 when "4"
    next
 else
 puts  "Invalid entry"
 end
 print "Press ENTER to continue..."

 gets
end

puts "Thank you! see you next time"
