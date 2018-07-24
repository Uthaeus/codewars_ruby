# The first input array contains the correct answers to an exam, like ["a", "a", "b", "d"]. The second one is "answers" array and contains student's answers.

# The two arrays are not empty and are the same length. Return the score for this array of answers, giving +4 for each correct answer, -1 for each incorrect answer, and +0 for each blank answer(empty string).

# If the score < 0, return 0.


def check_exam(arr1,arr2)
 #..
  result = 0
  x = 0

  while x < arr2.length do 
    if arr2[x] == ''
      result += 0
    elsif arr1[x] == arr2[x]
      result += 4
    else
      result -= 1
    end
    x += 1
  end

  result < 0 ? 0 : result
end



p check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"]) #, 6
p check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"]) #, 0