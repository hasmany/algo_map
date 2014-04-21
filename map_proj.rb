module MapProj


# { city1 => city2, city2 => city1, :distance => distance}
# initlize a road, two edges
  class Map

    attr_reader :name
    @@id = 0

    def initialize(name)
      @@id +=1
      @name = name
      @id = @@id

    end

    def addcity(name)
      city = MapProj::Map.new(name)
      location = city.location
      @city[city] = location
    end


  end



  class Road
     @@id = 0

    def initialize(name)
      @@id +=1
      @name = name
      @id = @@id
    end

    def addRoad(roadname,city1,city2)

      road = MapProj::Road.new(roadname)
      city1 = MapProj::Map.new(city1)
      city2 = MapProj::Map.new(city2)

      @roads[road] = {city1 => city2, :distance => (city1.location - city2.location).abs}
    end

  end



# a hash key, which is a road name. Will point to a list of destinations as it's value.


  class Graph
   @nodes = {}
    def addNode(value)           # nodes represent city
      node = Node.new(value)
      @nodes[node.value] = node.edges

    end

    def removeNode(value)
      @nodes.delete(value)
    end

    def addEdge(node_value_1, node_value_2, cost)

      @nodes[node_value_1].addedge(nodevalue2, 200)
      @nodes[node_value_2].addedge(nodevalue1, 200)

    end

    def removeEdge(node_value_1, node_value_2)
      edges = @nodes[node_value_1].edges
      edges[node_value_2].delete
    end

    # More methods here

  end
                  Austin = Node.new("Austin")
                  LA = Node.new("LA")

                  Graph.addEdge('Austin', 'LA', 200)

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

@city = {}
@roads = {}


FEATURES::
:::::::::::::::::::::::::::::::::
-Add a City
-Add a road
 Z cities
 distance


- Remove Cities

-Alter Roads
-Find Paths
between Z-cities
::::::::::::::::::::::::::::














