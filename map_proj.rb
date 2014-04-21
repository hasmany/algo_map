module MapProj
  @city = {}
  @roads = {}

# { city1 => city2, city2 => city1, :distance => distance}

  class Map

    attr_reader :name
    @@id = 0

    def initialize(name,location)
      @@id +=1
      @name = name
      @id = @@id
      @location = location
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

  class Distance
    @@id = 0

    def initialize(name)
      @@id +=1
    end

  end


end
# a hash key, which is a road name. Will point to a list of destinations as it's value.


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
#Keep note of everything you do in this project



# module MapProj
#   class Map
#     @city = {}
#     def create_city(name)
#       @name = name
#       # @city[name] = {}
#     end

#     def create_road(city1, city2, distance)
#       # road connects between two cities
#       roadArr = []
#       roadArr << { city1 => city2, city2 => city1, :distance => distance}
# {key=>{}}
#     end

#     def find_road(startingpoint,endingpoint)

#     end

#   end

# end












