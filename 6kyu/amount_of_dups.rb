# Find the missing number with the duplicate numbers (duplicates should be output in a sorted array).


def find_dups_miss(arr)
    # your code here
  arr1 = []
  dups = []
  missing = nil

  arr.each do |i|
    if arr1.include? i 
      if !dups.include? i
        dups << i 
      end
    else
      arr1 << i 
    end
  end
  arr1.sort! { |a, b| a - b }
  x = arr1[0]
  
  arr1.each do |i|
    if x != i 
      missing = x 
      break
    end
    x += 1
  end
  [missing, dups.sort { |a, b| a - b }]
end



arr1 = [10,9,8,9,6,1,2,4,3,2,5,5,3]
p find_dups_miss(arr1) #,[7, [2, 3, 5, 9]]