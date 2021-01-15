class Map
    def initialize
        @map = []
    end 

    def set(key, value)
        @map.push([key, value]) if @map.length == 0

        keys = @map.map {|el| el[0]}
        keys.include?(key) ? @map[keys.index(key)][1] = value : @map.push([key, value])
    end 

    def get(key)
        key_value = @map.select {|el| el[0] == key}
        key_value[0][1]
    end 

    def delete(key)
        @map.select! {|el| el[0] != key}
    end 

    def show
        p @map
    end 
end 