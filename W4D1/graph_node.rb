require 'set'

class GraphNode

    attr_accessor :value, :neighbors
    def initialize(value)
        @value = value 
        @neighbors = []
    end 
end 

def bfs(starting_node, target_value)

    queue = [starting_node]
    visited = Set.new()

    until queue.empty?
        check = queue.shift
        return check if check.value == target_value 
        check.neighbors.each do |neighbor|
            queue << neighbor if !visited.include?(neighbor.value)
            visited << neighbor.value
        end 
    end 
    nil
end 

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")
p bfs(a, "f")