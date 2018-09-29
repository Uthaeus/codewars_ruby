# You have a bunch of red and blue marbles. To start the game you grab a handful of marbles of each color and put them into the bag, keeping track of how many of each color go in. You take turns reaching into the bag, guessing a color, and then pulling one marble out. You get a point if you guessed correctly. The trick is you only have three seconds to make your guess, so you have to think quickly.


def guess_blue(blue_start, red_start, blue_pulled, red_pulled)
    # Your code here.
    blues = blue_start - blue_pulled
    reds = red_start - red_pulled
    current_total = blues + reds 
    blues / current_total.to_f
end



p guess_blue(12, 18, 4, 6) #, 0.4