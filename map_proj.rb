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
    def findShortestDistance(source, destination)
      discovered = [] # discove all path to city
      solved = [] # if short, put to solved
                               #source is Houston,therefore is zero push is discovered
      road = Hash.new
      road[source] = 0
      solved << road

      @@nodes[source].edges.each do |k, v|
        newhash = {}
        newhash[k] = v
        discovered << newhash  # pushing all edges from source to other nodes
      end
      discovered.sort!{ |x, y| x.values[0] <=> y.values[0] }

      solved << discovered[0]

      savedthiscity = discovered[0]

      discovered.shift
      # stopped after deleting the solved edge from the discovered list
      return discovered

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



# class City
#   attr_accessor :roads, :name
#   def initialize(name)
#     @name = name
#     @roads = {}
#   end

#   def add_road(city, distance)
#     if @roads[city].nil? || distance < @roads[city]
#       @roads[city] = distance
#     end
#   end
# end

# class Map
#   def initialize
#     @cities = {}
#   end

#   def all_cities
#     @cities
#   end

#   def add_city(city_name)
#     @cities[city_name] = City.new(city_name) if @cities[city_name].nil?
#   end

#   def get_city(city_name)
#     @cities[city_name]
#   end

#   def delete_city(city_name)
#     @cities.delete(city_name)
#     @cities.each { |city, connections| connections.roads.delete(city_name) }
#   end

#   def add_road(city_1, city_2, distance)
#     @cities[city_1].add_road(city_2, distance)
#     @cities[city_2].add_road(city_1, distance)
#   end

#   def edit_road(city_1, city_2, distance)
#     @cities[city_1].roads[city_2] = distance
#     @cities[city_2].roads[city_1] = distance
#   end

#   def delete_road(city_1, city_2)
#     @cities[city_1].roads.delete(city_2)
#     @cities[city_2].roads.delete(city_1)
#   end

#   def dijkstra(start, dest)
#     infinity = Float::INFINITY
#     # Set distances to all cities to infinity, create list of all cities
#     # as hash for speed, and initialize hash of previous cities for each
#     distance = {}
#     temp_cities = {}
#     prev_city = {}
#     @cities.each do |city, value|
#       distance[city] = infinity;
#       temp_cities[city] = nil
#       prev_city[city] = nil
#     end
#     # Set distance to start city to 0
#     distance[start] = 0

#     while !temp_cities.empty? # iterate through all cities
#       # Set current_city to closest node (gets key of kv pair with smallest value)
#       current_city = temp_cities.min_by { |city, value| distance[city] }.first
#       # Remove current_city from temp_cities
#       temp_cities.delete(current_city)
#       # Check path distance for all neighboring cities
#       @cities[current_city].roads.each do |neighbor, dist|
#         path = distance[current_city] + dist
#         if path < distance[neighbor]
#           distance[neighbor] = path
#           prev_city[neighbor] = current_city
#         end
#       end
#     end
#     # Distance is now a hash of  distances from start to all other cities
#     { distances: distance, path: prev_city }
#   end

#   def shortest_distance(start, dest)
#     dijkstra(start, dest)[:distances][dest]
#   end

#   def shortest_path(start, dest)
#     result = dijkstra(start, dest)
#     return nil if result[:distances][dest] ==  Float::INFINITY
#     path_hash = result[:path]
#     # Work backwards through path hash, unshifting onto path array
#     path_array = [dest]
#     current = dest
#     while current != start
#       path_array.unshift(path_hash[current])
#       current = path_hash[current]
#     end
#     path_array
#   end
# end












