# Given n substrings (n >= 2) in a string s our function pos_average will calculate the average percentage of positions that are the same between the (n * (n-1)) / 2 sets of substrings taken amongst the given n substrings. It can happen that some substrings are duplicate but since their ranks are not the same in s they are considered as different substrings.


def pos_average(s)
    arr = s.split(', ')
    avgs = []
    total_items = arr.length * arr[0].length 

    arr.each_with_index do |x, ind|
        temp_arr = arr[0...ind] + arr[ind + 1..-1]
        temp_arr.each do |t|
            y = 0
            matches = 0
            while y < t.length do 
                if x[y] == t[y]
                    matches += 1
                end
                y += 1
            end
            avgs << (matches.to_f / (y * 2)).round(10) * 100
        end
    end
    avgs.reduce(:+) / avgs.length 
end



p pos_average("466960, 069060, 494940, 060069, 060090, 640009, 496464, 606900, 004000, 944096") #, 26.6666666667