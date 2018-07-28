# Your task is to complete the Cat class which Extends Animal and replace the speak method to return the cats name + meows. e.g.

class Animal

  def initialize name 
    @name = name
  end
end

class Cat < Animal
  #your code here
  def speak
    "#{@name} meows."
  end
end



cat = Cat.new('Mr Whiskers')
p cat.speak() #,'Mr Whiskers meows.'