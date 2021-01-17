class GraphNode

    attr_accessor :value, :neighbors
    def initialize(value)
        @value = value 
        @neighbors = Hash.new {|h, k| h[k] = []}
    end 

end 