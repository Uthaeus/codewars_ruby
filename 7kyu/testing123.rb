# Write a function which takes a list of strings and returns each line prepended by the correct number.


def number lines
  count = 1
  result = []
  lines.each do |x|
    result << "#{count}: #{x}"
    count += 1
  end
  result
end



p number(["a", "b", "c"]) #, ["1: a", "2: b", "3: c"]