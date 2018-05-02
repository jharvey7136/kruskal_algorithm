class Vertex
  attr_accessor :label, :graph

  def initialize(label)
    @label = label
  end

  def adjacents
    graph.edges.select{|e| e.from == self}.map(&:to)
  end

  def to_s
    @label
  end
end
