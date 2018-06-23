# You have to extract a portion of the file name as follows:

# Assume it will start with date represented as long number
# Followed by an underscore
# Youll have then a filename with an extension
# it will always have an extra extension at the end



def extract file_name
  name_arr = file_name.split('.')
  temp_head = name_arr[0]
  ext = name_arr[1]
  nums = (0..9).to_a.map { |i| i.to_s }
  x = 0
  while x < temp_head.length do 
    if !nums.include?(temp_head[x])
      break
    end
    x += 1
  end

  head = temp_head[x + 1..-1]
  result = head + '.' + ext 
  result
end



p extract("1231231223123131_FILE_NAME.EXTENSION.OTHEREXTENSION") #,  "FILE_NAME.EXTENSION"
p extract("1_FILE_NAME.EXTENSION.OTHEREXTENSIONadasdassdassds34") #,  "FILE_NAME.EXTENSION"