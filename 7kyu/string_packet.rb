# Our device will send a single packet to you containing data and an instruction which you must perform before returning your reply.

# To keep things simple, we will be passing a single "packet" as a string. Each "byte" contained in the packet is represented by 4 chars.

# One packet is structured as below:

# Header  Instruction   Data1    Data2   Footer
# ------   ------       ------   ------  ------
#  H1H1     0F12         0012     0008    F4F4
# ------   ------       ------   ------  ------

# The string received in this case would be - "H1H10F1200120008F4F4"


def communication_module(packet)
  header = packet[0..3]
  footer = packet[-4..-1]
  responding = 'FFFF'
  operator = packet[4..7]
  num1 = packet[8..11].to_i
  num2 = packet[12..15].to_i
  result = nil

  case operator
  when '0F12'
    result = num1 + num2
  when 'B7A2'
    result = num1 - num2
  when 'C3D9'
    result = num1 * num2
  end

  if result < 0
    result = 0000
  elsif result > 9999
    result = 9999
  end

  new_result = "%04d" % result 

  output = header + responding + new_result + "0000" + footer
  output
end



p communication_module("H1H10F1200120008F4F4") #, "H1H1FFFF00200000F4F4"
p communication_module("X7X7B7A201400058L0L0") #, "X7X7FFFF00820000L0L0"