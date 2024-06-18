#mathematics/linear-algebra  
#uoft/mat224 

**Surjective**, also known as being **Onto**, means that the output of a [Linear Transformation](../MAT223%20Notes/Linear%20Transformation.md) fills the whole of its  [Image](../MAT223%20Notes/Image.md)  [Subspace](../MAT223%20Notes/Subspace.md) 

---
# Definition
A [Linear Transformation](../MAT223%20Notes/Linear%20Transformation.md) $T: S_{1}\rightarrow S_{2}$ is **Surjective** if for each $q\in S_{2}$, there is some $p\in S_{1}$, with $f(p)=q$

## Properties
Let $T: V \rightarrow W$ be a **Linear Transformation**

- A **Linear Transformation** is **Surjective** if and only if $dim(Im(T))=dim(W)$
- If $dim(V) < dim(W)$, there is no surjective linear mapping $T:V\rightarrow W$  
	Follows from the earlier observation, because $dim(Im(T))\leq dim(V)$ 