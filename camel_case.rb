# Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized.


def to_camel_case(str)

  str_arr = str.gsub(/[^a-zA-Z0-9]/, ' ').split(' ')
  x = 1
  result = [str_arr[0]]
  while x < str_arr.length do 
    result << str_arr[x].capitalize 
    x += 1
  end
  return result.join('')
end



p to_camel_case("the-stealth-warrior") # returns "theStealthWarrior"
p to_camel_case("The_Stealth_Warrior") # returns "TheStealthWarrior"