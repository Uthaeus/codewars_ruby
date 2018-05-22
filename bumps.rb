

def bump(x)
  # code here
  bumps = x.count('n')
  
  if bumps <= 15
    return 'Woohoo!'
  else
    return 'Car Dead'
  end
end 