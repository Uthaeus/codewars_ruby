def testit(a, b)
    # Good Luck!
    added = a + b   
    mult = a * b   
    tester = added.to_s.split('')

    if tester[0].to_i % 2 != 0
        return added 
    else 
        return mult 
    end
end



p testit(10, 20) #, 30