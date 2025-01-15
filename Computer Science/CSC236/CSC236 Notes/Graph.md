#computer-science 
#uoft/csc236 

A **Graph** is a series of [[Vertex|Vertexes]] connected by [[Edge|Edges]]

> A graph is just like a mathematical construct for the structure created by nodes attached to one another
> It has its own properties and definitions, sort of like its own geometry


---
# Definition
## Elements of Graphs
A [[Walk]] is a list of vertexes and edges connecting vertexes together
	Each vertex in the walk is connected to the next by an edge
A [[Trail]] is a [[Walk]] where no edge is repeated
A [[Path]] is a [[Trail]] with no repeated *internal* vertices
- A $u, v$-path is a [[Path]] with endpoints $u$ and $v$
A [[Cycle]] is a $u,u$-path
	A path that starts, and ends on the same [[Vertex]]

## Properties
- [[Connected]], if between every pair of [[Vertex|Vertices]], there exits a path
- A [[Tree]], if it is [[Connected]], but with no [[Cycle|Cycles]] 

# Types of Graphs
## Binary Trees