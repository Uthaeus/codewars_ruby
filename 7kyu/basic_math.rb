# In this kata, you will do addition and subtraction on a given string. The return value must be a 'string'.




def calculate(str)
    result = []
    total = 0
    parsed = str.gsub(/minus/, '-').gsub(/plus/, '+')
    temp = ''
    x = 0
    while x < parsed.length do 
        if parsed[x] == '-' || parsed[x] == '+'
            result.push temp 
            temp = ''
            result.push parsed[x]
        else
            temp += parsed[x]
        end
        if x == parsed.length - 1
            result << temp 
        end
        
        x += 1
    end
    y = 0
    while y < result.length do 
        if result[y] == '-'
            total -= result[y + 1].to_i
            y += 2
        elsif result[y] == '+'
            total += result[y + 1].to_i
            y += 2
        else
            total += result[y].to_i 
            y += 1
        end
    end
    total 
end



p calculate('1minus2minus3minus4') #, '-8'
p calculate('1plus2plus3minus4') #, '2'