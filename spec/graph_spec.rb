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
    puts map.class
    # expect(MapProj::Graph.nodes.length).to eq 4
    # hashofnodes = MapProj::Graph.nodes
    # expect(MapProj::Graph.nodes['Austin']).to eq node
    # puts 'fuck you'
    node3.addEdge("Austin",220)
    expect(node3.edges.length).to eq 1
    expect(node3.edges["Austin"]).to eq 220
    node3.addEdge("Dallas",320)
    expect(node3.edges.length).to eq 2

    expect(map.nodes["Dallas"]).to eq node1

    map.addEdge("Houston","San Antonio",300)

    expect(node2.edges.length).to eq 1
    # undefeind method;
  end

  it "graph should add edges to both nodes " do
    map = MapProj::Graph.new("map")
    node1 = map.addNode("Austin")
    node2 = map.addNode("Dallas")
    map.addEdge('Austin', 'Dallas', 600)

    expect(node1.edges.length).to eq 1
    expect(node2.edges.length).to eq 1
    expect(node1.edges['Dallas']).to eq(600)
  end

  it "should remove nodes" do
    map = MapProj::Graph.new("map")
    node1 = map.addNode("Austin")
    node2 = map.addNode("Dallas")
    map.addEdge('Austin', 'Dallas', 600)

    map.removeNode('Austin')
    expect(node2.edges.length).to eq 0
  end

  it "find the shortest distance between to cities" do
    map = MapProj::Graph.new("map")
    node1 = map.addNode("Austin")
    node2 = map.addNode("Dallas")
    map.addEdge('Austin', 'Dallas', 600)
  end



end

describe MapProj::Node do

  it "should exist" do
    expect(MapProj::Node).to be_a(Class)
  end

end


