#program on Encapsulation 
class BankAccount
    attr_reader :balance
  
    def initialize(initial_balance)
      @balance = initial_balance
    end
  
    def deposit(amount)
      @balance += amount
      "Deposited amount : #{amount}. Your current balance is : #{@balance}"
    end
  
    def withdraw(amount)
      if amount <= @balance
        @balance -= amount
        "Withdrawn amount #{amount}. Current balance is : #{@balance}"
      else
        "Insufficient funds"
      end
    end
end
  
  account = BankAccount.new(5000)
  p "Initial balance: #{account.balance}"
  puts account.deposit(500)
#   puts account.deposit(2500)

#  puts account.withdraw(2000)