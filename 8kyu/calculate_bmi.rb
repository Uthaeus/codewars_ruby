#Write function bmi that calculates body mass index (bmi = weight / height ^ 2).


def bmi(weight, height)
  ind = weight / (height ** 2)

  if ind <= 18.5
    return "Underweight"
  elsif ind <= 25
    return "Normal"
  elsif ind <= 30
    return "Overweight"
  else
    return "Obese"
  end
end


p bmi(50, 1.80) #, "Underweight"
