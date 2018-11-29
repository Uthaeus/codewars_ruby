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


"Original Balance: 1233.00\r\n125 Hardware 24.80 Balance 1208.20\r\n123 Flowers 93.50 Balance 1114.70\r\n127 Meat 120.90 Balance 993.80\r\n120 Picture 34.00 Balance 959.80\r\n124 Gasoline 11.00 Balance 948.80\r\n123 Photos 71.40 Balance 877.40\r\n122 Picture 93.50 Balance 783.90\r\n132 Tyres 19.00 Balance 764.90\r\n129 Stamps 13.60 Balance 751.30\r\n129 Fruits 17.60 Balance 733.70\r\n129 Market 128.00 Balance 605.70\r\n121 Gasoline 13.60 Balance 592.10\r\nTotal expense  640.90\r\nAverage expense  53.41"
"Original Balance: 1233.00\r\n125 Hardware 24.8 Balance 1208.20\r\n123 Flowers 93.5 Balance 1114.70\r\n127 Meat 120.90 Balance 993.80\r\n120 Picture 34.00 Balance 959.80\r\n124 Gasoline 11.00 Balance 948.80\r\n123 Photos 71.4 Balance 877.40\r\n122 Picture 93.5 Balance 783.90\r\n132 Tyres 19.00 Balance 764.90\r\n129 Stamps 13.6 Balance 751.30\r\n129 Fruits 17.6 Balance 733.70\r\n129 Market 128.00 Balance 605.70\r\n121 Gasoline 13.6 Balance 592.10\r\nTotal expense  640.90\r\nAverage expense  53.41"
