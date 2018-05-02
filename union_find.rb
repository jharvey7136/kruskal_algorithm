class UnionFind
  def initialize(vertices)
    @unions = {}
    vertices.each_with_index do |vertex, index|
      @unions[vertex] = index
    end
  end

  def connected?(v1, v2)
    @unions[v1] == @unions[v2]
  end

  def union(v1, v2)
    return if connected?(v1, v2)
    v1_id = @unions[v1]
    v2_id = @unions[v2]

    @unions.each do |vertex, id|
      @unions[vertex] = v1_id if id == v2_id
    end
  end
end
