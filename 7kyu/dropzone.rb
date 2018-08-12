# A forest fire has been spotted at fire, a simple 2 element array with x, y coordinates.

# The forest service has decided to send smoke jumpers in by plane and drop them in the forest.

# The terrain is dangerous and surveyors have determined that there are three possible safe dropzones, an array of three simple arrays with x, y coordinates.

# The plane is en route and time is of the essence. Your mission is to return a simple [x,y] array with the coordinates of the dropzone closest to the fire.


def dropzone(fire, dropzones)
  # Your code here
  hypots = {}
  
  dropzones.each_with_index do |e, ind|
    x = (fire[0] - e[0]).abs
    y = (fire[1] - e[1]).abs
    hyp = Math.hypot(x, y)
    hypots[ind] = hyp 
  end
  ind = hypots.key(hypots.values.min)
  dropzones[ind]
end



p dropzone([9,2], [[1,4],[9,9],[5,5]]) #, [5,5]