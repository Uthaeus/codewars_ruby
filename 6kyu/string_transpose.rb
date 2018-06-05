# ###RELATED: https://www.codewars.com/kata/implement-array-number-transpose

# Arrays can be transposed with Array#transpose. (Transposition is the process of swapping rows and columns in an array; see the Ruby Array class docs for more info: https://ruby-doc.org/core-2.3.0/Array.html).

# arr = [[1,2,7],[3,5,6]]
# arr.transpose # returns [[1,3],[2,5],[7,6]]



# class String
#   # define transpose here
#   def transpose
#     if self == nil || self.empty?
#       return "Invalid input"
#     end
#     first_break = self.split("\n")
#     first_arr = []
#     first_break.each do |fb|
#       first_arr << [fb]
#     end
#     second_break = first_arr.map do |fa|
#       fa.join('').split(' ')
#     end
#     result = []
#     x = 0
#     while x < second_break[0].length do 
#       y = 0
#       temp = []
#       while y < second_break[0].length do
#         if second_break[y][x] == nil
#           return "Invalid input"
#         end 
#         temp << second_break[y][x]
#         y += 1
#       end
#       result << temp
#       if x < second_break.length - 1
#         result << "\n"
#       end
#       x += 1
#     end
#     result.join(' ').gsub(/\s\n\s/, "\n")
#   end
# end


t1 = "1 3 4\n5 6\n9 0 1 0"
t2 = "1 2 3 4\n5 6 7 8\n9 0 1 0"
t3 = "as k 1 2\ndf q 8 3\ngh we 0.9 hjjh\nj rty i k"
#p t2.transpose 

# t2 = t1.join('').split("\n")
# t3 = []
# t2.each do |i|
#   t3 << [i] 
# end


# t4 = t3.map do |three|
#   three.join('').split(' ')
# end

# result = []


# x = 0

# while x < t4[0].length do 
#   y = 0
#   temp = []
#   while y < t4[0].length do 
#     temp << t4[y][x]
#     y += 1
#   end
#   result << temp
#   x += 1
# end

class String
  def transpose 
    return "Invalid input" if self == nil || self.empty?

    arrs = self.split("\n")
    arrs.each do |arr|
      check = arrs[0].split(' ').length
      return "Invalid input" if arr.split(' ').length != check
    end
    arr = arrs.join(' ').split(' ')
    distance = arrs[0].split(' ').length 
    x = 0
    result = []
    while x < distance do 
      temp = []
      (x...arr.length).step(distance) { |i| temp << arr[i] }
      result << temp
      if x < distance - 1
        result << "\n"
      end
      x += 1
    end
    result.join(' ').gsub(/\s\n\s/, "\n")
  end
end

# p t2.transpose
# p t1.transpose
p t3.transpose

























