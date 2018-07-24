# In a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors which, for the sake of simplicity, are named with letters from a to m.

# #Examples:

# s="aaabbbbhaijjjm"
# error_printer(s) => "0/14"

# s="aaaxbbbbyyhwawiwjjjwwm"
# error_printer(s) => "8/22"


def printer_error(s)
  # your code
  errs = 0
  possibles = s.length
  arr = s.split('')

  arr.each do |i|
    if i.ord > 109
      errs += 1
    end
  end

  "#{errs}/#{possibles}"
end



s="aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
p printer_error(s) #, "3/56")
