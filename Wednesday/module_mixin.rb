    module Loggable
        def log(message)
            puts "I'm in [#{self.class.name}] class,  #{message}"
        end
    end
  
  class Order
    include Loggable
  
    attr_reader :order_id, :amount
  
    def initialize(order_id, amount)
      @order_id = order_id
      @amount = amount
    end
  end
  
  class Customer
    include Loggable

    attr_reader :name

    def initialize(name)
        @name = name
    end
    
  end
 
  order = Order.new("123", 100.0)
  customer = Customer.new("Alice")
 
  order.log("Order placed.")
  customer.log("Customer created.")
  