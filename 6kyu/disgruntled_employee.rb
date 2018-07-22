# Specifications
# Create the function off, that receives the nth switch as argument n. The function should return an ascending array containing all of the switch numbers that remain off after Bob completes his revenge.



def off(switches)
  #code here
  switch_arr = []
  result = []

  switches.times do 
    switch_arr << "O"
  end

  switch_arr

  x = 0
  z = 2

  while x < switches do 
    y = z - 1

    while y < switches do 
      if switch_arr[y] == "O"
        switch_arr[y] = "o"
      else
        switch_arr[y] = "O"
      end
      y += z
    end

    x += 1
    z += 1
  end

  j = 0
  while j < switch_arr.length do 
    if switch_arr[j] == "O"
      result << j + 1
    end
    j += 1
  end

  result
end


p off(4) #,[1,4]
p off(9) #,[1,4,9]