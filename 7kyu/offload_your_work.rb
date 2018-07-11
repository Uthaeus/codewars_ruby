# Giving the amount of time in minutes needed to complete the project and an array of pair values representing other freelancers' time in [Hours, Minutes] format ie. [[2, 33], [3, 44]] calculate how much time you will need to contribute to the project (if at all) and return a string depending on the case.

# If we need to contribute time to the project then return "I need to work x hour(s) and y minute(s)"
# If we don't have to contribute any time to the project then return "Easy Money!"


def work_needed(project_minutes, freelances)
  freelance_hours = 0
  freelance_minutes = 0
  my_hours = 0
  my_minutes = 0

  freelances.each do |f|
    freelance_hours += f[0]
    freelance_minutes += f[1]
  end

  freelance_total = (freelance_hours * 60) + freelance_minutes
  remaining = project_minutes - freelance_total

  p freelance_total
  p remaining

  if remaining >= 60
    my_hours = remaining / 60
    my_minutes = remaining - (my_hours * 60)
  else
    my_minutes = remaining
  end

  if remaining < 1
    return "Easy Money!"
  else
    return "I need to work #{my_hours} hour(s) and #{my_minutes} minute(s)"
  end

end


p work_needed(60, [[1,0]]) #, "Easy Money!"
p work_needed(60, [[0,0]]) #, "I need to work 1 hour(s) and 0 minute(s)"
p work_needed(141, [[1,55], [0,25]]) #, "I need to work 0 hour(s) and 1 minute(s)"