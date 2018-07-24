# Our fruit guy has a bag of fruit (represented as an array of strings) where some fruits are rotten. He wants to replace all the rotten pieces of fruit with fresh ones. For example, given ["apple","rottenBanana","apple"] the replaced array should be ["apple","banana","apple"]. Your task is to implement a method that accepts an array of strings containing fruits should returns an array of strings where all the rotten fruits are replaced by good ones.



def remove_rotten(fruit_basket) 
  #remove rotten fruits please
  results = []
  if fruit_basket.empty?
    return []
  end
  fruit_basket.each do |fruit|
    if fruit[0..5] == 'rotten'
      results << fruit[6..-1].downcase
    else
      results << fruit 
    end
  end
  results
end



p remove_rotten(["apple","rottenBanana","kiwi","rottenMango"]) #,["apple","banana","kiwi","mango"]