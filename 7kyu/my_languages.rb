# Your task
# Given a list of languages and your respective test results, return the list of languages where your test score is at least 60, in descending order of the results.

# Note: There will be no duplicate values.


def my_languages(results)
  # your code here
  out = []
  result_arr = results.select { |_key, value| value >= 60 }.sort_by(&:last)
  
  result_arr.each do |name, vale|
    out << name
  end
  out.reverse
end




p my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65}) 
#, ["Ruby", "Python"]
p my_languages({"Hindi" => 60, "Dutch" => 93, "Greek" => 71}) 
#, ["Dutch", "Greek", "Hindi"]