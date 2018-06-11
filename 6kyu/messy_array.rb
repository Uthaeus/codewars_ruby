# You are given an array that of arbitrary depth that needs to be nearly flattened into a 2 dimensional array. The given array's depth is also non-uniform, so some parts may be deeper than others.

# All of lowest level arrays (most deeply nested) will contain only integers and none of the higher level arrays will contain anything but other arrays. All arrays given will be at least 2 dimensional. All lowest level arrays will contain at least one element.

# Your solution should be an array containing all of the lowest level arrays and only these. The sub-arrays should be ordered by the smallest element within each, so [1,2] should preceed [3,4,5]. Note: integers will not be repeated.

# For example:

# If you receive [[[1,2,3],[4,5]],[6,7]], your answer should be [[1,2,3],[4,5],[6,7]].



def near_flatten nested
  # flattened
  result = []
  nested.each do |first|
    if first[0].is_a? Array
      first.each do |second|
        if second[0].is_a? Array
          second.each do |third|
            if third[0].is_a? Array
              third.each do |fourth|
                if fourth[0].is_a? Array 
                  fourth.each do |fifth|
                    if fifth[0].is_a? Array 
                      fifth.each do |sixth|
                        if sixth[0].is_a? Array 
                          sixth.each do |seventh|
                            if seventh[0].is_a? Array 
                              seventh.each do |eighth|
                                if eighth[0].is_a? Array 
                                  eighth.each do |ninth|
                                    if ninth[0].is_a? Array 
                                      ninth.each do |tenth|
                                        result << tenth.sort
                                      end
                                    else
                                      result << ninth.sort
                                    end
                                  end
                                result << eighth.sort
                              end
                            else                          
                              result << seventh.sort
                            end
                          end
                        else
                          result << sixth.sort
                        end
                      end
                    else
                      result << fifth.sort
                    end
                  end
                else
                  result << fourth.sort
                end
              end
            else
              result << third.sort
            end
          end
        else
          result << second.sort
        end
      end
    else
      result << first.sort
    end
  end
  result.sort
end


p near_flatten([[[1,2,3],[9,10]],[[4,5],[6,7,8]]])
    #expected = [[1,2,3],[4,5],[6,7,8],[9,10]]






