module MapProj
    # Austin = Node.new("Austin")
    # LA = Node.new("LA")

    # Graph.addEdge('Austin', 'LA', 200)

  class Graph
   @@nodes = {}
   attr_accessor :name

    def initialize(name)
      #@nodes = {}    // SHEEZAN
      @name = name
    end

    def addNode(value)           # nodes represent city
      node = MapProj::Node.new(value)
      @@nodes[value] = node
      node
      # IF @NODES[VALUE].NIL?
      #@nodes[value] = Node.new(value) //SHEEZAN
      #end
    end

    def removeNode(value)
      @@nodes[value].edges.each do |k,v|
        @@nodes[k].edges.delete(value)
      end


      @@nodes.delete(value)
    end

    def self.nodes
      @@nodes
    end

    def nodes
      @@nodes
    end

# @edge ={oppoist node=> cost}
    def addEdge(node_value_1, node_value_2, cost)
       # graph is just holding data
       # find two nodes, call addedage on each node in here
       # node1 = @nodes[node_value_1]
       # node2 = @nodes[node_value_2]
       # node1.addEdge(node2,cost)

       @@nodes[node_value_1].addEdge(node_value_2, cost)
       @@nodes[node_value_2].addEdge(node_value_1, cost)

       # node2.addEdge(node1,cost)

    end

    def removeEdge(node_value_1, node_value_2)
      edges = @@nodes[node_value_1].edges
      edges[node_value_2].delete

      node1.removeEdge(node2)
      node2.removeEdge(node1)
    end

    # More methods here
    def findShortestDistance(node1, node2)
      discovered = []
      solved = []




    end

  end

# remove nodes, and delete all connections to and from the node

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
    def removeEdge(node)
      @edges.delete(node)
    end
  end

end
















