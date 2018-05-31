# Character recognition software is widely used to digitise printed texts. Thus the texts can be edited, searched and stored on a computer.

# When documents (especially pretty old ones written with a typewriter), are digitised character recognition softwares often make mistakes.

# Your task is correct the errors in the digitised text. You only have to handle the following mistakes:

# S is misinterpreted as 5
# O is misinterpreted as 0
# I is misinterpreted as 1



def correct(string)
  # Good luck
  result = ''
  str_arr = string.split('')
  str_arr.each do |i|
    case i 
    when '5'
      result += 'S'
    when '0'
      result += 'O'
    when '1'
      result += 'I'
    else
      result += i 
    end
  end
  result
end



p correct("DUBL1N") #,"DUBLIN"
p correct("51NGAP0RE") #,"SINGAPORE"