# Below we will define what and n-interesting polygon is and your task is to find its area for a given n.


def shape_area(n)
    nums = (1..n).to_a
    total = 0

    nums.each do |n|
        temp = [n, (n - 1) * 2, [n - 2, 0].max]
        total += temp.reduce(:+)
    end
    total 
end



p shape_area(3) #,13
p shape_area(5) #,41