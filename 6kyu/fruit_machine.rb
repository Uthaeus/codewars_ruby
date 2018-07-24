# Task
#   You will be given three reels of different images and told at which index the reels stop. From this information your job is to return the score of the resulted reels.
# Rules
# 1. There are always exactly three reels
# 2. Each reel has 10 different items.
# 3. The three reel inputs may be different.
# 4. The spin array represents the index of where the reels finish.
# 5. The three spin inputs may be different
# 6. Three of the same is worth more than two of the same
# 7. Two of the same plus one "Wild" is double the score.
# 8. No matching items returns 0.



def fruit(reels, spins)
  # Code here
  a = reels[0][spins[0]]
  b = reels[1][spins[1]]
  c = reels[2][spins[2]]
  result = 0
  flag = false

  if a == 'Wild' || b == 'Wild' || c == 'Wild'
    flag = true
  end

  if a == b && b == c 
    result = score(a, 3)
    return result 
  end

  case flag
  when false
    if a == b || a == c 
      result = score(a, 2)
    elsif b == c 
      result = score(b, 2)
    end
  when true 
    if a == b || a == c && a != 'Wild'
      result = score(a, 'wild')
    elsif a == b || a == c && a == 'Wild'
      result = score(a, 2)
    elsif b == c && b != 'Wild'
      result = score(b, 'wild')
    elsif b == c && b == 'Wild'
      result = score(b, 2)
    end
  end
  result 

end

def score result, num
  three = {
    'Wild' => 100,
    'Star' => 90,
    'Bell' => 80,
    'Shell' => 70,
    'Seven' => 60,
    'Cherry' => 50,
    'Bar' => 40,
    'King' => 30,
    'Queen' => 20,
    'Jack' => 10
  }

  two = {
    'Wild' => 10,
    'Star' => 9,
    'Bell' => 8,
    'Shell' => 7,
    'Seven' => 6,
    'Cherry' => 5,
    'Bar' => 4,
    'King' => 3,
    'Queen' => 2,
    'Jack' => 1
  }

  two_plus = {
    'Star' => 18,
    'Bell' => 16,
    'Shell' => 14,
    'Seven' => 12,
    'Cherry' => 10,
    'Bar' => 8,
    'King' => 6,
    'Queen' => 4,
    'Jack' => 2
  }

  if num == 3
    return three[result]
  elsif num == 2
    return two[result]
  elsif num == 'wild'
    return two_plus[result]
  end
end



reel1 = ["King", "Jack", "Wild", "Bell", "Star", "Seven", "Queen", "Cherry", "Shell", "Bar"]
reel2 = ["Star", "Bar", "Jack", "Seven", "Queen", "Wild", "King", "Bell", "Cherry", "Shell"]
reel3 = ["King", "Bell", "Jack", "Shell", "Star", "Cherry", "Queen", "Bar", "Wild", "Seven"]
spin = [0,5,0]
p fruit([reel1,reel2,reel3],spin) #, 6, "Should return: '6'")





