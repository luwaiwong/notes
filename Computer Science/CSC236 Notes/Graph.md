#computer-science  
#uoft/csc236 

A **Graph** is a series of [Vertexes](Vertex.md) connected by [Edges](Edge.md)

> A graph is just like a mathematical construct for the structure created by nodes attached to one another  
> It has its own properties and definitions, sort of like its own geometry


---
# Definition
## Elements of Graphs
A [Walk](Walk.md) is a list of vertexes and edges connecting vertexes together  
	Each vertex in the walk is connected to the next by an edge  
A [Trail](Trail.md) is a [Walk](Walk.md) where no edge is repeated  
A [Path](Path.md) is a [Trail](Trail.md) with no repeated *internal* vertices
- A $u, v$-path is a [Path](Path.md) with endpoints $u$ and $v$  
A [Cycle](Cycle.md) is a $u,u$-path  
	A path that starts, and ends on the same [Vertex](Vertex.md)

## Properties
- [Connected](Connected.md), if between every pair of [Vertices](Vertex.md), there exits a path
- A [Tree](Tree.md), if it is [Connected](Connected.md), but with no [Cycles](Cycle.md) 

# Types of Graphs
## Binary Trees