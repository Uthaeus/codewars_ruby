# Time to write your first Esolang interpreter :D

# Your task is to implement a MiniStringFuck interpreter myFirstInterpreter()/my_first_interpreter()/Interpreter()/interpret() (depending on your language) which accepts exactly 1 required argument code/$code which is the MiniStringFuck program to be executed. The output of the program should then be returned by your interpreter as a string.

# Since this is the first time you are about to write an interpreter for an Esolang, here are a few quick tips:


def my_first_interpreter code
  # Implement your interpreter here
  text = ''
  count = 0
  x = 0
  while x < code.length do 
    if code[x] == '+'
      count += 1
    elsif code[x] == '.'
      text << count.chr
    end
    if count >= 256
      count = 0
    end
    x += 1
  end
  text
end



p my_first_interpreter("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.+.") #, "ABCDEFGHIJKLMNOPQRSTUVWXYZ")


t1 = "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
