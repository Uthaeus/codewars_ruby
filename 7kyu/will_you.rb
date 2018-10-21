# Once Mary heard a famous song, and a line from it stuck in her head. That line was "Will you still love me when I'm no longer young and beautiful?". Mary believes that a person is loved if and only if he/she is both young and beautiful, but this is quite a depressing thought, so she wants to put her belief to the test.


def will_you(young, beautiful, loved)
    if young == false || beautiful == false 
        return loved == true 
    end 
    loved == false 
end



p will_you(false,true,false) #,false
p will_you(false,false,true) #,true
p will_you(true,true,true) #,false