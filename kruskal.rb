require_relative "union_find"

class Kruskal
  def compute_mst(graph)
    mst = []
    edges = graph.edges.sort!

    union_find = UnionFind.new(graph.vertices)
    while edges.any? && mst.size <= graph.vertices.size
      edge = edges.shift
      if !union_find.connected?(edge.v1, edge.v2)
        union_find.union(edge.v1, edge.v2)
        mst << edge
      end
    end

    mst

  end
end
