# The following code was thought to be working properly, however when the code tries to access the age of the person instance it fails.


class Person
    def initialize(firstName, lastName, age)
      @firstName = firstName
      @lastName = lastName
      @age = age
    end
    
    def full_name
      "#{@firstName} #{@lastName}"
    end
end



