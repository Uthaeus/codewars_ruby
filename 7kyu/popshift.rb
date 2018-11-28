# a) remove the final character from the original string, add to solution string 1. b) remove the first character from the original string, add to solution string 2.


def pop_shift(str)
    first = '' 
    second = ''
    str_arr = str.split('')
    x = 0

    while str_arr.length > 0 do 
        if str_arr.length == 1 && first.length == second.length 
            break
        end
        x.even? ? first << str_arr.pop : second << str_arr.shift 
        x += 1
    end
    [first, second, str_arr.join('')]
end



p pop_shift("reusetestcasesbitcointakeovertheworldmaybewhoknowsperhaps")
#, ["spahrepswonkohwebyamdlroweht","reusetestcasesbitcointakeove", "r"]
p pop_shift("letstalkaboutjavascriptthebestlanguage")
#, ["egaugnaltsebehttpir","letstalkaboutjavasc",""]