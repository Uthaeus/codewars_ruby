# Create a custom class called CustomHash that is a subclass of Hash, and implement a method #get_bool on it.

# get_bool accepts one parameter (a string), and returns the boolean value of the corresponding key (a symbol) in the hash. If the parameter starts with '!', then the negated value is to be returned.



class CustomHash < Hash  
  def get_bool str 
    if str.start_with?('!')
      !fetch(str[1..-1].to_sym)
    else
      !!fetch(str.to_sym)
    end
  end
end