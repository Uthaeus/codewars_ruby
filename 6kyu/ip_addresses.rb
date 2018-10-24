# Write a function that accepts a starting and ending IPv4 address, and returns the number of IP addresses from start to end, excluding the end IP address.
# 65536
# 16777216

def ipsBetween(start, ending)
    sarr = start.split('.').reverse.map { |i| i.to_i }
    earr = ending.split('.').reverse.map { |i| i.to_i }
    earr - sarr 
    s_result = []
    e_result = []

    x = 0
    while x < sarr.length do 
        s_result << sarr[x] * 256 ** x
        e_result << earr[x] * 256 ** x
        x += 1
    end
    e_result.reduce(:+) - s_result.reduce(:+)
end



p ipsBetween("20.0.0.10", "20.0.1.0") #, 246
p ipsBetween("10.0.0.0", "10.0.0.50") #, 50