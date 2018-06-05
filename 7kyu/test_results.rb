# It's important day today: the class has just had a math test. You will be given a list of marks. Complete the function that will:

# Calculate the average mark of the whole class and round it to 3 decimal places.
# Make a dictionary/hash with keys "h", "a", "l" to make clear how many high, average and low marks they got. High marks are 9 & 10, average marks are 7 & 8, and low marks are 1 to 6.
# Return list [class_average, dictionary] if there are different type of marks, or [class_average, dictionary, "They did well"] if there are only high marks.



def results(marks)
  # your code here
  avg = (marks.reduce(:+) / (marks.length).to_f).round(3)

  scores = {
    "h"=> 0,
    "a"=> 0,
    "l"=> 0
  }

  marks.each do |i|
    if i > 8
      scores["h"] += 1
    elsif i == 7 || i == 8
      scores["a"] += 1
    else 
      scores["l"] += 1
    end
  end
  if scores["a"] == 0 && scores["l"] == 0
    result = [avg, scores, 'They did well']
  else
    result = [avg, scores]
  end
  result
end




p results([10, 9, 9, 10, 9, 10, 9]) 
# , [9.429, {"h" => 7, "a" => 0, "l" => 0}, 'They did well']