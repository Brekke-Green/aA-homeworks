class LRUCache
    def initialize(size)
        @size = size 
        @underlying_queue = Queue.new
        @underlying_hash = Hash.new
    end

    def count
      # returns number of elements currently in cache
        @underlying_queue.length
    end

    def add(el)
      # adds element to cache according to LRU principle
        if count == @size 
            @underlying_queue.shift
            @underlying_queue.push(el)
            @underlying_hash[el] 
        else 
            @underlying_queue.push(el)
            @underlying_hash[el] 
        end 
    end

    def show
      # shows the items in the cache, with the LRU item first
        
    end

    private
    # helper methods go here!

  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  puts johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show