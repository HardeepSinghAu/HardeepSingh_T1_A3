

def show_options
    puts "#{$user} please choose an option: "
    puts "==========================="
     puts "1. Calculate BMI"
     puts "2. Calculate minimum required calories per day"
     puts "3. Calculate my calorie intake for today"
     puts "4. Finished"
     puts "==========================="
     print "Enter your option: "
     opt = gets.chomp
     return opt
end
 
    option = ""
    while option != "4"
    option = show_options

    case option
    when "1"
        require_relative 'bmi.rb'
    when "2"
        require_relative 'calories_required.rb'
    when "3"
        require_relative 'counter.rb'
        
    when "4"
        #require_relative 'goodbye.rb'
        return puts "Thank you! see you next time"
     else
     puts  "Invalid entry"
     end
     print "Press ENTER to continue..."
     gets
    end
    

   


p show_options
