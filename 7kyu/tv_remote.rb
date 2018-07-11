# Kata task
# How many button presses on my remote are required to type a given word?

# Notes
# The cursor always starts on the letter a (top left)

# Remember to also press OK to "accept" each letter.

# Take a direct route from one letter to the next

# The cursor does not wrap (e.g. you cannot leave one edge and reappear on the opposite edge)

class Array
  def remote_coordinates(el)
    each_with_index do |subarray, i|
      j = subarray.index(el)
      return i, j if j
    end
    nil
  end
end


def tv_remote(word)
  # your code here
  keyboard = [['a', 'b', 'c', 'd', 'e', '1', '2', '3'],
              ['f', 'g', 'h', 'i', 'j', '4', '5', '6'],
              ['k', 'l', 'm', 'n', 'o', '7', '8', '9'],
              ['p', 'q', 'r', 's', 't', '.', '@', '0'],
              ['u', 'v', 'w', 'x', 'y', 'z', '_', '/']]
  word_arr = word.split('')
  button_press_count = 0
  current_position = [0, 0]
  result_arr = []

  word_arr.each do |l|
    result_arr << keyboard.remote_coordinates(l)
  end

  result_arr.each do |a, b|
    if current_position[0] > a 
      button_press_count += (current_position[0] - a)
    else
      button_press_count += (a - current_position[0])
    end

    if current_position[1] > b 
      button_press_count += (current_position[1] - b) 
    else
      button_press_count += (b - current_position[1]) 
    end
    button_press_count += 1
    current_position = [a, b] 
  end

  button_press_count
end



p tv_remote("your") #, 23
p tv_remote("does") #, 16
p tv_remote("these") #, 27



# The screen "keyboard" layout looks like this

# a b c d e 1 2 3
# f g h i j 4 5 6
# k l m n o 7 8 9
# p q r s t . @ 0
# u v w x y z _ /
