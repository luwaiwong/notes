#mathematics 
#uoft/mat223 #uoft/mat224 

A **Base** or **Basis**, for any [[Subspace]] is any [[Set]] of [[Vector|Vectors]] which can fully describe that subspace 

---
# Definition

A subset $S$ of a [[Vector Space]] $V$ is a [[Base (Basis)]], or **Basis** of $V$ if: 
	$V=Span(S)$
	$S$ is [[Linear Independence|Linearly Independent]]

> A set of vectors is a **Basis**, only if the [[Span]] of that set, is the same as the vector space

## Properties
1. Bases are not unique. Every subspace (except for the [[Trivial Subspace]]) has multiple bases
2. Every vector in the base of a subspace can be written as a *unique* [[Linear Combination]] of vectors in that basis ([[Dimension]])
3. Any 2 bases for the same subspace have the same number of elements ^7d8441

Other Properties
- If a vector space $V$ has a linearly independent subset $S$, then there exists a basis $S'$ of $V$,  where $S\subset S'$
	Or, you can make a basis out of any linearly independent subset/every linearly independent set may be *extended to a basis*
- $S$ is a basis of $V$ if and only if every vector $x\in V$ can be written *uniquely* as a linear combination of the vectors in $S$
- Not all **Vector Spaces** can have a finite base, take the set of all polynomials for examples, since it includes polynomials up to $x^\infty$, then it cannot be finite
- Let $S$ be a spanning set of $V$ with $m$ elements, then there is no linearly independent set in $V$ with less than $m$ elements
	Or, if you find a set that can span $V$, then any set with a larger amount of elements will be included in $Span(S)$
	Thus, you can only have a linearly independent set with with $\leq m$ elements
- Any two bases of $V$ have the same length
- If $U\subset V$ is a subspace of $V$,then $dim(U)\leq dim(V)$
- If $V=span(v_{1},...,v_{n})$, then $(v_{1},...,v_{n})$ is a basis of $V$
- If $(v_{1},...,v_{n})$ is linearly independent in $V$, then $(v_{1},...,v_{n})$ is a basis of $V$
- If $U,W,\subset V$ are subspaces of a finite dimensional vector space, then $dim(U+W)=dim(U)+dim(W)-dim(U\cap W)$

## Finding Bases 

To convert any [[Vector]] or [[Transformation]] to a different **Base**, you can use a [[Change of Base Matrix]] 

# Bases
The [[Standard Basis]] for $\mathbb{R}^n$ is the set $\{\vec{e}_{1},...,\vec{e}_n\}$ where $$\vec{e}_1=\begin{bmatrix}1\\0\\0\\\vdots\end{bmatrix} \vec{e}_2=\begin{bmatrix}0\\1\\0\\\vdots\end{bmatrix}\vec{e}_3=\begin{bmatrix}0\\0\\1\\\vdots\end{bmatrix}$$That is, $\vec{e}_i$ is the vector with a 1 in its ith coordinate and zeros elsewhere. 
The **Standard basis** can describe all the elements in $R^n$

> Example of finding two different bases 
> 	![[Pasted image 20231012132714.png]]