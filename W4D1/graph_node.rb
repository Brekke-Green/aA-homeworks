class GraphNode

    attr_accessor :value, :neighbors
    def initialize(value)
        @value = value 
        @neighbors = []
    end 
end 