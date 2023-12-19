# Little Bobby loves chocolate. He frequently goes to his favorite  store, Penny Auntie, to buy them. They are having a promotion at Penny Auntie. If Bobby saves enough wrappers, he can turn them in for a free chocolate.
# Example
# money =15, cost = 3, exchange = 2

# He has 15 to spend, bars cost 3 , and he can turn in 2 wrappers to receive another bar. Initially, he buys 5 bars and has 5 wrappers after eating them. He turns in 4 of them, leaving him with 1, 
# for 2 more bars. After eating those two, he has 2 wrappers, turns in 3 leaving him with 1 wrapper and his new bar. Once he eats that one, he has 2 wrappers and turns them in for another bar. 
# After eating that one, he only has 1 wrapper, and his feast ends. Overall, he has eaten (5+2+1+1) 9 bars.

def chocolateFeast(money, cost, exchange)
    chocolates = money / cost
    wrappers = chocolates
  
    while wrappers >= exchange
      additional_chocolates = wrappers / exchange
      chocolates += additional_chocolates
      wrappers = additional_chocolates + (wrappers % exchange)
    end
  
   return chocolates

end

money= 12
cost = 4
exchange = 2

p chocolateFeast(money, cost, exchange)