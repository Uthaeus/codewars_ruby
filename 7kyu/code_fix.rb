# You will be given a lowercase string and your task is to return True if at least one of the possiblities is a palindrome or False otherwise. You can use your own code or fix mine.


def solve st
    st.chars.zip(st.chars.reverse).map{|a,b| ["FIX"].include?(a.ord - b.ord)}.all?
end



p solve("abaazaba") #,false
p solve("abccba") #,true