# This is a spin off of my first Kata, you are given a list of characters as a comma separated string. Write a function to return a string containing all except the first and last characters, separated by spaces. If the input string is empty, or the removal of the first and last items would cause the string to be empty, return null value.


def array(string)
    arr = string.split(',')
    return nil if arr.length < 3
    arr[1...-1].join(' ')
end



p array('1,2,3,4') #, '2 3'