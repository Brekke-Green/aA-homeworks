class LRUCache
    def initialize(size)
        @size = size 
        @underlying_cache = Array.new(4)
    end

    def count
      # returns number of elements currently in cache
        @underlying_cache.count {|el| el != nil}
    end

    def add(el)
      # adds element to cache according to LRU principle
        
    end

    def show
      # shows the items in the cache, with the LRU item first
        puts @underlying_cache
    end

    private
    # helper methods go here!

  end