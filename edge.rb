class Edge
  attr_accessor :v1, :v2, :weight

  def initialize(v1, v2, weight)
    @v1 = v1
    @v2 = v2
    @weight = weight
  end

  def <=>(other)
    self.weight <=> other.weight
  end

  def to_s
    "#{v1.to_s} <=> #{v2.to_s} with weight #{weight}"   % [5]
  end
end
