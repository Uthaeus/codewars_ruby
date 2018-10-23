# You will be given an array which lists the current inventory of stock in your store and another array which lists the new inventory being delivered to your store today.


def update_inventory(cur_stock, new_stock)
    # cur_stock.each do |cur|
    #     new_stock.each do |news| 
    #         if cur[1] == news[1]
    #             cur[0] += news[0]
    #         end
    #     end
    # end
    # cur_stock.sort_by { |c| c[1] }
    total = cur_stock + new_stock
    t = total.group_by(&:last).map { |key, value| [*value.map(&:first).reduce(:+), key]}
    t.sort_by { |c| c[1] }
end



current = [[25, 'HTC'], [1000, 'Nokia'], [50, 'Samsung'], [33, 'Sony'], [10, 'Apple']]
new = [[5, 'LG'], [10, 'Sony'], [4, 'Samsung'], [5, 'Apple']]
# result = [[15, 'Apple'], [25, 'HTC'], [5, 'LG'], [1000, 'Nokia'], [54, 'Samsung'], [43, 'Sony']]

p update_inventory(current, new)