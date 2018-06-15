# All we eat is water and dry matter.

# John bought potatoes: their weight is 100 kilograms. Potatoes contain water and dry matter.

# The water content is 99 percent of the total weight. He thinks they are too wet and puts them in an oven - at low temperature - for them to lose some water.

# At the output the water content is only 98%.

# What is the total weight in kilograms (water content plus dry matter) coming out of the oven?

# He finds 50 kilograms and he thinks he made a mistake: "So much weight lost for such a small change in water content!"

# Can you help him?



def potatoes(p0, w0, p1)
    # your code
  a = (129 / 100.to_f)
  a * 91
end



p potatoes(93, 129, 91) #, 100)