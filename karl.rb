

class Person
  attr_reader :name, :age, :weight, :height, :gender, :cal_total, :body_mass_index 
  def initialize(name, age, weight, height, gender)
    @name = name
    @age = age
    @weight = weight
    @height = height
    @gender = gender
    @cal_total = 0
  end

  def add_calories(calories_consumed)
    @cal_total += calories_consumed
  end

  def bmi(weight, height)
    
    bmi = (weight/((height/100) ** 2))
    
      puts "==========================="
      puts "Your BMI is #{bmi}"
         
        case bmi
        when 0..18.5
          puts "You are underweight"
        when 18.5..24.9 
          puts "You are normal weight"
        when 25..29.9
          puts "You are overweight"
        when 30..;
          puts "You are obese"
        else 
          puts "Invalid input"
        end
         
        ideal_weight_lower = ((height ** 2) * 18.5)
        ideal_weight_upper = ((height ** 2) * 24.9) 
          puts "Your healthy weight range is #{ideal_weight_lower.to_i} to #{ideal_weight_upper.to_i}kg"
         
        sleep 1
          puts "BMI is not an accurate indicator of health as it does not account for body fat percentage and distribution. For serious concerns regarding your health, always see your General Practioner."
        
        return bmi 
  end

  def cal_required(weight, height, age, gender)
    maleBMR = ((88.362 + (13.397 * @weight.to_f)) + ((4.799 * @height.to_f)) - (5.677 * @age.to_i))
    femaleBMR = ((447.593 + (9.247 * @weight.to_f)) + ((3.098 * @height.to_f)) - (4.330 * @age.to_i))
    # bar = TTY::ProgressBar.new("downloading [:bar]", total: 15)

    # 15.times do
    #     sleep(0.1)
    #     bar.advance  
    #   end
    if @gender == "m"
        puts "==========================="
        puts "Your calories required per day are #{maleBMR.to_i} calories."
    else
      puts "==========================="
      puts "Your calories required per day are #{femaleBMR.to_i} calories."
    end
  end
end


# display

shama = Person.new("Shama", 36, 71, 157, "f")
shama.add_calories(15)
shama.add_calories(15)

p shama.cal_total
p shama.bmi(71, 157)
p shama.cal_required(71, 157, 36, "f")