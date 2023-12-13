class Animal
    def speak
      raise NotImplementedError, "Subclasses must implement the 'speak' method."
    end
  end
  
  class Dog < Animal
    def speak
      puts "Woof!"
    end
  end
  
  class Bird < Animal
    def speak
      puts "Tweet!"
    end
  end

  class Reptile < Animal
    def bite
       puts "bite" 
    end
    
  end

  animals = [Dog.new, Bird.new, Reptile.new]
  animals.each { |animal| animal.speak }
  