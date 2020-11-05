def stock_picker(prices)
    profits = {}

    prices.each_with_index do |price1, index1|
        prices.each_with_index do |price2, index2|
            if index2 > index1
                profits[[index1, index2]] = price2 - price1
            end
        end
    end

    profits = profits.sort_by {|k, v| v}

    highest_profit = profits[-1]
    puts "Buy on day #{highest_profit[0][0]} and sell on day #{highest_profit[0][1]} for the maximum profit of #{highest_profit[1]}$"

end

stock_picker([17,3,6,9,15,8,6,1,10])
#[1,4]  for a profit of $15 - $3 == $12