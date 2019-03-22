# You want to create secret messages which can be deciphered by the Decipher this! kata. Here are the conditions:


def encrypt_this(text)
    arr = text.split(' ')
    result = []

    arr.each do |a|
        word = a.split('')
        temp = []
        temp << word[0].ord
        x = 1
        while x < word.length do 
            if x == 1
                temp << word.last
            elsif x == word.length - 1
                temp << word[1]
            else
                temp << word[x]
            end
            x += 1
        end
        result << temp.join('')
    end
    result.join(' ')
end



p encrypt_this("A wise old owl lived in an oak")
# "65 119esi 111dl 111lw 108dvei 105n 97n 111ka"
p encrypt_this("The more he saw the less he spoke")
# "84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp"