# Your task is to find the similarity of given sorted arrays a and b, which is defined as follows:


def similarity(a, b)
    ones = []
    dups = []
    both = a + b   
    both.each do |b|
        if ones.include? b    
            if !dups.include? b   
                dups << b   
            end
        else 
            ones << b   
        end
    end
    dups.length.to_f / ones.length 
end



p similarity([1, 2, 6, 8, 9], [0, 1, 4, 5, 6, 8, 9]) # ,0.5