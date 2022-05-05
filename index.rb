require 'colorize'
require 'tty-prompt'
require 'tty-progressbar'
prompt = TTY::Prompt.new

# require_relative("./counter.rb")
# require_relative("./calories_required.rb")
# require_relative("./bmi.rb")
application = "Calorie Counter"
user = "Name"

application = "Calorie Counter"
user = "Name"

application = ARGV[0] if ARGV[0]
user= ARGV[1] if ARGV[1]

puts "Hello  and welcome to #{application}!"
$user = prompt.ask("What is your name?" )
require_relative'options'


