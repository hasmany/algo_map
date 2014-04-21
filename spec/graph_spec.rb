require_relative 'spec_helper.rb'

describe MapProj::Graph do

  it "should exist" do
    expect(MapProj::Graph).to be_a(Class)
  end

  it "should add a node" do
    # node = MapProj::Node.new("Austin")
    map  = MapProj::Graph.new("map")
    node = map.addNode("Austin")
    expect(MapProj::Graph.nodes.length).to eq 1
  end

  it "should remove node" do
    map  = MapProj::Graph.new("map")
    expect(MapProj::Graph.nodes.length).to eq 1
    node = map.addNode("Austin")
    map.removeNode("Austin")
    expect(MapProj::Graph.nodes.length).to eq 0
  end

  it "should add edges to a node " do
    map  = MapProj::Graph.new("map")
    node = map.addNode("Austin")
    node1 = map.addNode("Dallas")
    node2 = map.addNode("San Antonio")
    node3 = map.addNode("Houston")

    expect(MapProj::Graph.nodes.length).to eq 4
    hashofnodes = MapProj::Graph.nodes
    expect(MapProj::Graph.nodes['Austin']).to eq ({})
    puts 'fuck you'
    puts map.addEdge("Austin","Dallas",200)
    # map.addEdge("Austin","Dallas",200)
    # expect(map).to eq (200)
    # undefined method 'addedge for {}:Hash'
  end

end

describe MapProj::Node do

  it "should exist" do
    expect(MapProj::Node).to be_a(Class)
  end

end


