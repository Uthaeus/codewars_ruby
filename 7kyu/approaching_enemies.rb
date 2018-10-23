# You are in a military mission in the middle of the jungle where your enemies are really hard to spot because of their camouflage. Luckly you have a device that shows the position of your enemies!


def calculate_time(p1, p2)
    x = (p1[0] - p2[0]).abs
    speed = x.to_f / 5
    (p2[0] / speed).abs.round(3)
end



p calculate_time([-90, 0], [-80, 0]).round(3) # 40