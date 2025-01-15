#mathematics/linear-algebra 
#uoft/mat223 #uoft/mat224 

A **Subspace** is a subset of a [[Vector Space]], which is also a **Vector Space** itself

---
# Definition
> The Geometric Idea of Subspaces
> 	Subspaces represent the idea of *flat spaces through the origin*, They include lines, planes, volumes, and more.
> 	Geometrically, a subspace is a [[Span]] which passes through zero , and goes on infinitely
> 		A Line passing through zero in 2D space, Plane passing through zero in 3D space

A **Subspace** $U$ is a *subset* of a [[Vector Space]], which is itself a Vector Space, where:
- Vector Addition and Multiplication are well defined on $U$
- $U$ satisfies the vector space properties

We can define the *sum* of two subspaces
Let $U_{1},U_{2}\subset V$ be **Subspaces** of $V$. The [[Subspace Sum]] of $U_{1}$ and $U_{2}$ is the set:
	$U_{1}+U_{2}=\{u_{1}+u_{2}|u_{1}\in U_{1}, u_{2}\in U_{2}\}$
**Properties**
- The subspace sum of $U_{1},U_{2}\subset V$ is also a subset of $V$

> An example of the result of [[Subspace Sum|Subspace Sums]]
> 	Let $U_{1}=\{(x,0,0)\in \mathbb{F^{3}}|x\in \mathbb{F}\}$
> 	Let $U_{2}=\{(x,0,0)\in \mathbb{F^{3}}| x\in \mathbb{F}\}$
> 	Then $U_{1}+U_{2}=\{(x,y,0)\in \mathbb{F^{3}}|x,y \in \mathbb{F}\}$

We can say that $U$ is a  [[Direct Sum]] of $U_{1}$ and $U_{2}$, if every $u\in U$ can be uniquely written as $u=u_{1}+u_{2}$ for $u_{1}\in U_{1}$ and $u_{2}\in U_{2}$
We notate that $U$ is a  [[Direct Sum]] of $U_{1}$ and $U_{2}$ with:
	$U=U_{1} \bigoplus U_{2}$ 
**Properties**
- Let $U_{1}, U_{2}\subset V$ be [[Subspace|Subspaces]], Then $V=U_{1}\bigoplus U_{2}$ if and only if:
	- $V=U_{1}+U_{2}$
	- If $0=u_{1}+u_{2}$ with $u_{1}\in U_{1}$ and $u_{2}\in U_{2}$, then $u_{1}=u_{2}=0$
		- Or that $U_{1}\cup U_{2}=\{0\}$

## Determining if a Subset is a Subspace
You can verify if a subset of a [[Vector Space]] is a **subspace**, by checking if the subspace fulfills the definition of a **Vector Space**.

Or, you can also verify using the following:
A non empty subset $V\subseteq \mathbb{R}^n$ is called a [[Subspace]] if $\forall \vec{u},\vec{v}\in V$ and all scalars $k$:
- $\vec{u}+\vec{v}\in V$(also called being *closed with respect to vector addition*
- $k\vec{u}\in V$(also called being *closed with respect to scalar multiplication*)
- $\vec{0} \in V$

> What does each condition do?
> 	Condition 1 implies that vector addition is well-defined
> 	Condition 2 ensures that scalar multiplication is well defined
> 	Condition 3 implies that the additive identity exists
> 	Some other requirements of a vector space we can assume, because it is a subset of a vector space

You can also check if a subset is a subspace with the following theorem:
Let $V$ be a vector space, $W$ be nonempty subset of $V$
	$W$ is a [[Subspace]] of $V$ if and only if: 
$$\forall x,y \in W, \forall c \in \mathbb{R}, cx+y \in W$$
	This *merges* both definitions into one

> We define a subspace as a separate thing from **Vector Spaces**, because it is a subset of a **Vector Space**, which holds all the properties of a vector space
> A Vector Space is a more general definition, which can include many things

## Properties
- Let $S$ be any subset of $V$, $Span(S)$ is a subspace of $V$
- The union of two subspaces is not necessarily a subspace
- The intersection of any two subspaces is always a subspace

# Operations
The [[Subspace Sum|Sum of Subspaces]] can be defined in various ways

# Miscellaneous

With $\mathbb{R}^{n}$, there are two special subspaces.
- $\mathbb{R}^n$
- The [[Trivial Subspace]], $\{\vec{0}\}\subseteq \mathbb{R}^{n}$ 

