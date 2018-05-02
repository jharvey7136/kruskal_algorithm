require 'spec_helper'

describe Edge do

  before :each do
    @edge = Edge.new :v1, :v2, :weight
  end


describe "#new" do
  it "returns a new edge object" do
    expect(@edge).to be_an_instance_of Edge
  end
end

describe "#v1" do
  it "returns correct vertex 1" do
    expect(@edge.v1).to eql :v1
  end
end

describe "#v2" do
  it "returns correct label" do
    expect(@edge.v2).to eql :v2
  end
end

describe "#weight" do
  it "returns value" do
    expect(@edge.weight).to eql :weight
  end
end

end
