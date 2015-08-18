def stock_picker(array_of_prices)
    highest_profit, current_profit, buy_price, sell_price, buy_day, sell_day = 0

    array_of_prices.each_index do |day|
        current_sell_price = array_of_prices[day]
        current_buy_price = array_of_prices.first(day).min

        if current_sell_price != array_of_prices.first
            current_profit = current_sell_price - current_buy_price

            if current_profit > highest_profit
                buy_price, sell_price = current_buy_price, current_sell_price
                buy_day, sell_day = array_of_prices.rindex(buy_price), array_of_prices.rindex(sell_price)
                highest_profit = sell_price - buy_price
            end
        end
    end
    puts "buy on day #{buy_day + 1} for $#{buy_price} | sell day #{sell_day + 1} for $#{sell_price}"
end

stock_picker([100,3,46,6,4,1,5])