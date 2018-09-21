# Define a method/function that removes from a given array of integers all the values contained in a second array.


class Array
    def remove_(integer_list, values_list)
        integer_list - values_list
    end
end


l = Array.new()

integer_list =  [1, 1, 2 ,3 ,1 ,2 ,3 ,4]
values_list = [1, 3]
p l.remove_(integer_list, values_list) #, [2, 2, 4])