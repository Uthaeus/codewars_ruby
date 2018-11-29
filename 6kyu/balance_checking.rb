# The first line shows the original balance. Each other line (when not blank) gives information: check number, category, check amount.

# First you have to clean the lines keeping only letters, digits, dots and spaces.

# Then return a report as a string (underscores show spaces -- don't put them in your solution. They are there so you can see them and how many of them you need):


def balance(b)
    result = []
    amts = []
    x = 0
    current_balance = nil
    b.each_line do |l|
        arr = l.tr('^a-zA-Z0-9. ', '').split(' ')
        if x == 0
            temp = l.tr('^0-9.', '')
            current_balance = temp.to_f  
            result << "Original Balance: #{'%.2f' % temp}"
        elsif
            arr.empty?
            # result << "" 
        else
            pre = arr[0...-1].join(' ')
            amt = ('%.2f' % arr[-1].to_f)
            amts << amt.to_f.round(2)
            result << [pre + ' ' + amt + " Balance #{'%.2f' % (current_balance - amt.to_f)}"]
            current_balance -= amt.to_f 
        end
        x += 1
    end
    total = amts.reduce(:+).round(2)
    avg = (total / amts.length).round(2)
    result << "Total expense  #{'%.2f' % total}"
    result << "Average expense  #{'%.2f' % avg}"
    result.join("\r\n")
end



$b1="1000.00!=

125 Market !=:125.45
126 Hardware =34.95
127 Video! 7.45
128 Book :14.32
129 Gasoline ::16.10
"

p balance($b1)
# "Original Balance: 1000.00\r\n125 Market 125.45 Balance 874.55\r\n126 Hardware 34.95 Balance 839.60\r\n127 Video 7.45 Balance 832.15\r\n128 Book 14.32 Balance 817.83\r\n129 Gasoline 16.10 Balance 801.73\r\nTotal expense  198.27\r\nAverage expense  39.65"


