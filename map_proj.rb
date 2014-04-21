module MapProj
    # Austin = Node.new("Austin")
    # LA = Node.new("LA")

    # Graph.addEdge('Austin', 'LA', 200)

  class Graph
   @@nodes = {}
   attr_accessor :name

    def initialize(name)
      @name = name
    end

    def addNode(value)           # nodes represent city
      node = MapProj::Node.new(value)
      @@nodes[node.value] = node.edges
      node
    end

    def removeNode(value)
      @@nodes.delete(value)
    end

    def self.nodes
      @@nodes
    end

    def addEdge(node_value_1, node_value_2, cost)

      @@nodes[node_value_1].addedge(node_value_2, 200)
      @@nodes[node_value_2].addedge(node_value_1, 200)

    end

    def removeEdge(node_value_1, node_value_2)
      edges = @@nodes[node_value_1].edges
      edges[node_value_2].delete
    end

    # More methods here

  end


  class Node

    attr_accessor :edges, :value, :id
    @@id = 0
    def initialize(value)
      @@id += 1
      @id = @@id
      @value = value
      @edges = {} # hash to map connected Nodes to the associated cost
    end

    def addEdge(node, cost)
      @edges[node] = cost
    end

    # More methods here
  end

end
















