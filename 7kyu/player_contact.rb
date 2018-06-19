# You are the Dungeon Master for a public DnD game at your local comic shop and recently you've had some trouble keeping your players' info neat and organized so you've decided to write a bit of code to help keep them sorted!

# The goal of this code is to create an array of objects that stores a player's name and contact number from a given string.

# The method should return an empty array if the argument passed is an empty string 

class Player
  def initialize name, num 
    @name = name
    @confirmation_number = num 
  end
  attr_reader :name, :confirmation_number
end


def player_manager(players)

  result = []
  x = 0
  arr = players.split(', ')
  
  while x < arr.length do 
    result << {name: arr[x], contact: arr[x + 1]}
    x += 2
  end
  result
end




p player_manager("John Doe, 8167238327, Jane Doe, 8163723827") #, [{player: "John Doe", contact: 8167238327}, {player: "Jane Doe", contact: 8163723827}]