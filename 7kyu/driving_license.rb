# Your task is to code a UK driving license number using an Array of data. The Array will look like

# data = ["John","James","Smith","01-Jan-2000","M"]


def driver(data)
  # Start driving here!
  
  #1-5 first five chars of surname => data[2][0..4]
  #decade digit from yob => data[3][-2]
  #month of birth -> if female increment first digit by 5
  output = ''
  surname = data[2]
  if surname.length < 5
    while surname.length < 5 do 
      surname += '9'
    end
  end

  output += surname[0..4].upcase + data[3][-2]
  
  months = {
    :Jan => "01",
    :Feb => "02",
    :Mar => "03",
    :Apr => "04",
    :May => "05",
    :Jun => "06",
    :Jul => "07",
    :Aug => "08",
    :Sep => "09",
    :Oct => "10",
    :Nov => "11",
    :Dec => "12"
  }
  mob = months[data[3].split('-')[1][0..2].to_sym]
  if data[-1] == "F"
    output += (mob.to_i + 50).to_s
  else
    output += mob
  end
  dayofbirth = data[3][0..1]
  output += dayofbirth + data[3][-1]

  if data[1].length > 0
    output += data[0][0] + data[1][0]
  else
    output += data[0][0] + "9"
  end

  output + "9AA"
end



data = ["John","James","Smith","01-Jan-2000","M"]
# "SMITH001010JJ9AA"

p driver(data)


data2 = ["Johanna","","Gibbs","13-Dec-1981","F"]
# "GIBBS862131J99AA"
p driver(data2)




