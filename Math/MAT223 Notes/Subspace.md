#mathematics
#uoft/mat223 #uoft/mat224 

A **Subspace** is a subset of a [Vector Space](../MAT224%20Notes/Vector%20Space.md), which is also a **Vector Space** itself

---
# Definition
You can verify if a subset of a [Vector Space](../MAT224%20Notes/Vector%20Space.md) is a **subspace**, by checking if the subspace fulfills the definition of a **Vector Space**.

Or, you can also verify using the following:
A non empty subset $V\subseteq \mathbb{R}^n$ is called a [Subspace](.md) if $\forall \vec{u},\vec{v}\in V$ and all scalars $k$:
- $\vec{u}+\vec{v}\in V$(also called being *closed with respect to vector addition*
- $k\vec{u}\in V$(also called being *closed with respect to scalar multiplication*)
- $\vec{0} \in V$

You can also check if a subset is a subspace with the following theorem
	Let $V$ be a vector space, $W$ be nonempty subset of $V$
	$W$ is a [Subspace](.md) of $V$ if and only if: 
		$\forall x,y \in W, \forall c \in \mathbb{R}, cx+y \in W$ 
	This *merges* both definitions into one

> We define a subspace as a separate thing from **Vector Spaces**, because it is a subset of a **Vector Space**, which holds all the properties of a vector space
> A Vector Space is a more general definition, which can include many things

# Special Subspaces
With $\mathbb{R}^{n}$, there are two special subspaces.
- $\mathbb{R}^n$
- The [Trivial Subspace](Trivial%20Subspace.md), $\{\vec{0}\}\subseteq \mathbb{R}^{n}$ 

# Other
**Geometric Idea**
Subspaces represent the idea of *flat spaces through the origin*, They include lines, planes, volumes, and more.
Geometrically, a subspace is a [Span](Span.md) which passes through zero , and goes on infinitely
	Line passing through zero in 3D space, Plane passing through zero in 3D space

**Intersection & Sum of Subspaces**
The intersection of any collection of *subspaces* of $V$ is a subspace of $V$
	Think of the intersection between two planes passing through zero in the 3D space
	They would produce a line passing through zero in 3D space (also a subspace)
	
The [Sum](../MAT224%20Notes/Sum.md) of two [Subspaces](.md) $W_{1}, W_{2}$ is the set $W_{1}+W_{2}=\{x\in V \  | \ x = x_{1}, \text{ for some }x_{1}\in W_{2} \}$ **(1.3.4, 23)**
	$W_{1}+W_{2}$ can be thought of as the set of vectors that can be "built up" from the vectors in $W_1 +W_2$ by linear combinations
	If $W_{1}=Span(S_{1})$, and $W_{2}=Span(S_{2})$, $W_{1}+W_{2}=Span(S_{1}\cup S_{2})$
	Let $W \supseteq W_{1}\cup W_{2}$ , then $W\supseteq W_{1}+W_{2}$

**Spans and Subspaces**
Let $S$ be any subset of $V$, $Span(S)$ is a subspace of $V$
