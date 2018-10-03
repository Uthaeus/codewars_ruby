# You have to write a function hist which given a string will output the errors as a string representing a histogram of the encountered errors.


def hist(s)
    errs = ['u', 'w', 'x', 'z']
    result = []

    errs.each do |e|
        if s.count(e) > 0
            spacer = 6 - s.count(e).to_s.length
            result << "#{e}  #{s.count(e)}#{' ' * spacer}#{'*' * s.count(e)}"
        else
            errs.delete(e)
        end
    end
    result.join("\r")
end



