#mathematics/linear-algebra 
#uoft/mat224 

**Surjective**, also known as being **Onto**, means that the output of a [[Linear Transformation|Linear Transformation]] fills the whole of its  [[Image]]  [[Subspace]] 

---
# Definition
A [[Linear Transformation|Linear Transformation]] $T: S_{1}\rightarrow S_{2}$ is **Surjective** if for each $q\in S_{2}$, there is some $p\in S_{1}$, with $f(p)=q$

## Properties
Let $T: V \rightarrow W$ be a **Linear Transformation**

- A **Linear Transformation** is **Surjective** if and only if $dim(Im(T))=dim(W)$
- If $dim(V) < dim(W)$, there is no surjective linear mapping $T:V\rightarrow W$ 
	Follows from the earlier observation, because $dim(Im(T))\leq dim(V)$ 

# Problem Solving
## Showing $T$ is Surjective

For $T:V\rightarrow  W$, show that $T$ is surjective

Methods
1. Demonstrate that for any vector $(a,b)\in W$, there exists a vector $(x,y)\in V$ such that $T(x,y)=(a,b)$
2. Show $dim(Im(T))=dim(W)$
