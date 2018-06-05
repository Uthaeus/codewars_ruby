# John wants to decorate a room with wallpaper. He has been said that making sure he has the right amount of wallpaper is more complex than it sounds. He wants a fool-proof method to getting it right.

# John knows that the rectangular room has a length of l meters, a width of w meters, a height of h meters. The standard width of the rolls he wants to buy is 52 centimeters. The length of a roll is 10 meters. He bears in mind however, that it’s best to have an extra length of wallpaper handy in case of mistakes or miscalculations so he wants to buy a length 15% greater than the one he needs.

# Last time he did these calculations he caught a headache so could you help John? Your function wallpaper(l, w, h) should return as a plain English word in lower case the number of rolls he must buy.

# #Example: wallpaper(4, 3.5, 3) should return "ten"



def wallpaper(l, w, h)
    # your code
    output = {
      '10': 'ten', 
      '11': 'eleven',
      '12': 'twelve',
      '13': 'thirteen',
      '14': 'fourteen', 
      '15': 'fifteen',
      '16': 'sixteen',
      '17': 'seventeen',
      '18': 'eighteen',
      '19': 'nineteen',
      '20': 'twenty'
    }
    surface_area = (2 * (l * h)) + (2 * (w * h))
    total = surface_area + (surface_area * 0.15)

    roll = 5.2

    result = ((total / roll).ceil).to_s  
    output[result.to_sym]
end



p wallpaper(7.8, 2.9, 3.29) #, "sixteen"
p wallpaper(6.3, 5.8, 3.13) #, "seventeen"