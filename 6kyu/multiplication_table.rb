# Your task, is to create NxN multiplication table, of size provided in parameter.


def multiplication_table(size)
    nums = (1..size).to_a
    result = []

    x = 1
    y = 0
    while y < size do 
        temp = []
        nums.each do |m|
            temp << m * x
        end
        result << temp 
        x += 1
        y += 1
    end
    result 
end


p multiplication_table(3) #, [[1,2,3],[2,4,6],[3,6,9]]