# Your task is to remove all duplicate words from string, leaving only single words entries.

# Example:

# Input:

# 'alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta'

# Output:

# 'alpha beta gamma delta'


def remove_duplicate_words(s)
  #..
  s.split(' ').uniq.join(' ')
end


p remove_duplicate_words("alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta") #, "alpha beta gamma delta"