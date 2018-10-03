# In this Kata, you will be given directions and your task will be to find your way back.


def solve arr
    return arr if arr.length <= 1
    first = arr[0].split(' ')
    last = arr[-1].split(' ')
    first_first = first[0]
    last_first = last[0]
    first[0] = last_first 
    last[0] = first_first
    result = []

    if arr.length > 2
        body = arr[1...-1].reverse
        result = [last.join(' '), *body, first.join(' ')]
    else
        result = [last.join(' '), first.join(' ')]
    end
    result 
end



p solve(["Begin on Road A","Right on Road B","Right on Road C","Left on Road D"])
#,['Begin on Road D', 'Right on Road C', 'Left on Road B', 'Left on Road A']