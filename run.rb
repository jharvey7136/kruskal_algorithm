require "pp"
require_relative "graph"
require_relative "vertex"
require_relative "edge"
require_relative "kruskal"




def time_difference_ms(start, finish)
  (finish - start) * 1000.0
end

graph = Graph.new   # create graph object to hold vertices and edges

#n = 25      # number of vertices
#m = 25      # number of edges
w = 100000     # weight of edge: random int between 0-w

puts "Vertices: "
n = gets.to_i

puts "Edges: "
m = gets.to_i


nodes = [n] # array to hold the vertex objects

for i in 0..n
  graph.add_vertex(nodes[i] = Vertex.new(i))  #create n vertex objects, add them to graph
end

for i in 0..m
  graph.add_edge(nodes[rand(n)], nodes[rand(n)], rand(w))   # choose 2 random vertices and connect them
                                                            # with an edge of random weight  between 0-w. Add to graph
end

t1 = Time.now
#p "Start time #{t1}"

 pp Kruskal.new.compute_mst(graph).map(&:to_s)    # use Kruskal's algo to compute minimum spanning tree

 t2 = Time.now
 #p "End time #{t2}"


 elapsed = time_difference_ms(t1, t2)

 p "Milliseconds elapsed: #{elapsed}"
