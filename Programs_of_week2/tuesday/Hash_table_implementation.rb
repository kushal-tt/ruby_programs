class HashTable
    def initialize(size)
      @size = size
      @table = Array.new(size) { [] }
    end
  
    def insert(key, value)
      index = hash(key)
      @table[index] << [key, value]
    end
  
    def get(key)
      index = hash(key)
      @table[index].each { |entry| return entry[1] if entry[0] == key }
      nil
    end
  
    private
  
    def hash(key)
      key.hash % @size
    end
  end
  
  # Example
  hash_table = HashTable.new(5)
  hash_table.insert('name', 'parker')
  hash_table.insert('age', 18)
  puts hash_table.get('name')  
  puts hash_table.get('city')  
  