class Queue
    def initialize
      @queue = []
    end
  
    def enqueue(item)
      @queue.push(item)
    end
  
    def dequeue
      @queue.shift
    end
  
    def is_empty?
      @queue.empty?
    end
  end

  queue = Queue.new
  queue.enqueue(1)
  queue.enqueue(2)
  queue.enqueue(3)
  puts queue.dequeue  
  puts queue.is_empty? 
  