# In this Kata, you will be given a string and two indexes. Your task is to reverse the portion of that string between those two indices inclusive.



def solve st,a,b
 #..
  result = nil
  if b > st.length - 1
    b = st.length - 1
  end
  
  first = st[0...a]
  last = st[(b + 1)..-1]
  body = st[a..b].reverse

  
  first + body + last
end



p solve("codingIsFun",2,100) #,"conuFsIgnid"
p solve("abcefghijklmnopqrstuvwxyz",5,20) #,"abcefvutsrqponmlkjihgwxyz"
p solve("codewars",1,5) #,"cawedors"