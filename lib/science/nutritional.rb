module Science
  
  # Nutrition is the provision, to cells and organisms, of the materials necessary (in the form of food) to support life.
  # TODO: Calculating daily nutritional needs: https://www.k-state.edu/paccats/Contents/Nutrition/PDF/Needs.pdf
  module Nutritional
    include Science::Helpers
    
    # The body mass index (BMI), or Quetelet index, is a measure for human body shape based on an individual's mass and height.
    # TODO: BMI Prime and BMI chart categories (and subcategories) - http://en.wikipedia.org/wiki/Body_mass_index
    def body_mass_index(options={})
      options = validate_and_convert_hash(options)
      validate_hash_keys(options, :weight, :height)
      
      # TODO: Right now we are assuming kilograms are being given for weight and meters for height...
      # TODO: Use a unit library to convert what is given to convert into the proper units..
      # TODO: options[:weight] = options[:weight].to_kilograms
      # TODO: options[:height] = options[:height].to_meters
      
      options[:weight] / options[:height] ** 2
    end
    
    # Basal metabolic rate (BMR) / Basal Energy Expenditure (BEE), and the closely related resting metabolic rate (RMR), is the amount of energy expended daily by 
    # humans and other animals at rest, I.E. the number of calories you'd burn if you stayed in bed all day.
    # TODO: This one has multiple formulae - http://en.wikipedia.org/wiki/Basal_metabolic_rate - http://www.caloriesperhour.com/tutorial_BMR.php
    # TODO: Original Harris Benedict Formula
    # TODO: Revised Harris-Benedict Equation
    # TODO: Mifflin St Jeor Equation
    # TODO: Katch-McArdle Formula (Uses lean_body_mass - BMR)
    # TODO: Cunningham Formula (Uses lean_body_mass - RMR)
    
    # To determine your total daily calorie needs, multiply your BMR by the appropriate activity factor, as follows:
    # If you are sedentary (little or no exercise) : Calorie-Calculation = BMR x 1.2
    # If you are lightly active (light exercise/sports 1-3 days/week) : Calorie-Calculation = BMR x 1.375
    # If you are moderatetely active (moderate exercise/sports 3-5 days/week) : Calorie-Calculation = BMR x 1.55
    # If you are very active (hard exercise/sports 6-7 days a week) : Calorie-Calculation = BMR x 1.725
    # If you are extra active (very hard exercise/sports & physical job or 2x training) : Calorie-Calculation = BMR x 1.9
    def basal_metabolic_rate(options={})
      
    end
    alias_method :basal_metabolic_rate, :basal_energy_expenditure
    
    # Lean Body Mass is a component of body composition, calculated by subtracting body fat weight from total body weight: 
    # total body weight is lean plus fat.
    # 
    # LBM = BW − BF
    #   Lean Body Mass equals Body Weight minus Body Fat
    # LBM + BF = BW
    #   Lean Body Mass plus Body Fat equals Body Weight
    def lean_body_mass(options={})
      
    end
    
    # Calculate the caleries burned via age, weight, heart rate, and time, or by activity and time.
    # TODO: Activity and time requires a list of calories burned for each activity for a specified amount of time,
    # TODO: such as 1 minute of walking, running, etc..
    # 
    # Calculating with Age, Weight, and Heart Rate:
    #   Men use the following formula:
    #     Calories Burned = [(Age x 0.2017) + (Weight x 0.09036) + (Heart Rate x 0.6309) -- 55.0969] x Time / 4.184.
    #   Women use the following formula:
    #     Calories Burned = [(Age x 0.074) -- (Weight x 0.05741) + (Heart Rate x 0.4472) -- 20.4022] x Time / 4.184.
    def calories_burned(options={})
      
    end
    
    
  end
  
end