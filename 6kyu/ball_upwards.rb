# You throw a ball vertically upwards with an initial speed v (in km per hour). The height h of the ball at each time t is given by h = v*t - 0.5*g*t*t where g is Earth's gravity (g ~ 9.81 m/s**2). A device is recording at every tenth of second the height of the ball. For example with v = 15 km/h the device gets something of the following form: (0, 0.0), (1, 0.367...), (2, 0.637...), (3, 0.808...), (4, 0.881..) ... where the first number is the time in tenth of second and the second number the height in meter.

# Task
# Write a function max_ball with parameter v (in km per hour) that returns the time in tenth of second of the maximum height recorded by the device.

# 1 km/h = 0.277778 m/s => 1/3.6



def max_ball(v0)
  # your code
  speed_in_meters = v0 / 3.6
  grav = 9.81 ** 2
end



p max_ball(37) #, 10
p max_ball(99) #,  28