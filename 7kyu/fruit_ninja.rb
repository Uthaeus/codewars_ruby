# You are a fruit ninja, your skill is cut fruit. All the fruit will be cut in half by your knife. 
$fruits_name = ['apple', 'pear', 'banana', 'peach']

def cut_fruits(fruits)
     result = []
     fruits.each do |f|
        if $fruits_name.include?(f)
            mid = (f.length / 2).round
            if f.length.even?
                result << f[0...mid] << f[mid..-1]
            else
                result << f[0..mid] << f[mid + 1..-1]
            end
        else
            result << f 
        end
     end
     result 
end



p cut_fruits(["apple","pear","banana"]) #,["app","le","pe","ar","ban","ana"]
p cut_fruits(["apple","pear","banana","bomb"]) #,["app","le","pe","ar","ban","ana","bomb"]