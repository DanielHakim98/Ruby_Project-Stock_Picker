def stock_picker(arr_lp)
  arr_result=[]
  buy=0
  sell=0
  temp_high=0

  arr_lp.each_with_index do |price,day| 
    day_buy=day #set day_buy to day 0 and loop

    for d in day_buy...arr_lp.length-1  #iterate loop to select the difference between the day_buy and potential day_sell

      difference = arr_lp[d+1] - arr_lp[day_buy] #calculate profit between buy and sell value
      if(difference>temp_high)  
        temp_high=difference
        buy=day_buy
        sell=d+1
      end

      #Just for debugging (You may disable it)
      #show(day_buy, d+1, arr_lp[day_buy], arr_lp[d+1], difference,temp_high) 
    end

    day_buy+=1 
  end

  arr_result.push(buy,sell)
end

def show(buy_day,sell_day,buy_value,sell_value,diff,temp_high)
  p "Day #{sell_day} - Day #{buy_day}"
  puts "#{sell_value} - #{buy_value} = #{diff}" 
  puts "difference: #{diff}"
  puts "temp_high: #{temp_high}"
  puts puts
end


array=[17,3,6,9,15,8,6,1,10]
p stock_picker(array)