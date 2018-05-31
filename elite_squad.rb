# The BOPE is the squad of special forces of police that usually handles the operations in the Favelas in Rio de Janeiro.

# In this Kata you have to write a function that determine the number of magazines that every soldier has to have in his bag.

# You will receive the weapon and the number of streets that they have to cross. Considering that every street the officer shoots 3 times. Bellow there is the relation of weapons:

# PT92 - 17 bullets 
# M4A1 - 30 bullets 
# M16A2 - 30 bullets 
# PSG1 - 5 bullets



def mag_number(info)
  #code goes here :)
  gun = info[0]
  streets = info[1]
  bullets_needed = streets * 3
  mag = 0
  case(gun)
  when "PT92" 
    mag = 17
  when "M4A1"
    mag = 30
  when "M16A2"
    mag = 30
  when "PSG1"
    mag = 5
  end
  return (bullets_needed.to_f / mag).ceil
end



p mag_number(["M16A2", 19]) #, 2)
p mag_number(["PSG1", 31]) #, 19)