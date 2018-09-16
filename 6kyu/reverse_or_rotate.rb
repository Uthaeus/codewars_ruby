# If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, reverse that chunk; otherwise rotate it to the left by one position. Put together these modified chunks and return the result as a string.


def revrot(str, sz)
    # your code
    x = 0
    result = []

    while x < str.length do 
        temp = str[x...x + sz]
        if temp.length == sz
            cubed_sum = temp.split('').map { |i| i.to_i ** 3 }.reduce(:+)
            if cubed_sum % 2 == 0
                result << temp.split('').reverse.join('')
            else
                head = temp[0]
                tail = temp[1..-1]
                result << tail + head 
            end
        end
        x += sz
    end
    result.join('')
end



p revrot("733049910872815764", 5) #, "330479108928157"
p revrot("66443875", 4) #--> "44668753"