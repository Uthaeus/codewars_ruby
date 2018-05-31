# Define String.prototype.toAlternatingCase (or a similar function/method such as to_alternating_case/toAlternatingCase/ToAlternatingCase in your selected language; see the initial solution for details) such that each lowercase letter becomes uppercase and each uppercase letter becomes lowercase. For example:


class String
  def to_alternating_case
    #your code here
    return self.swapcase
  end
end




p "hello world".to_alternating_case() #, "HELLO WORLD"
p "1a2b3c4d5e".to_alternating_case() #, "1A2B3C4D5E"