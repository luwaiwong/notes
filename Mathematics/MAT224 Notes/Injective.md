#uoft/mat224 #mathematics/linear-algebra 

A [Function](../MAT235%20Notes/Function.md) is **Injective**  if whenever $f(p_{1})=f(p_{2})$ for $p_{1},p_{2}\in S_{1}$, $p_{1}=p_{2}$  
Another way to describe being **Injective** is saying **one to one**

---
# Properties

Let $T: V \rightarrow W$ be a [Linear Transformation](../MAT223%20Notes/Linear%20Transformation.md)

- A [Linear Transformation](../MAT223%20Notes/Linear%20Transformation.md) is **Injective** if and only if $dim(Ker(T))= 0$
- A **Linear Transformation** is **Injective** if and only if $dim(Im(T))=dim(V)$
- If $dim(W)<dim(V)$ and, $T$ is not injective 
- A linear transformation is injective if and only if it is **Surjective**

# Theorems
If $T$ is [Injective](.md) and [Surjective](Surjective.md), the inverse function $S:W\rightarrow V$ is a linear transformation **(2.6.1, 114)**  
	If $T$ is a linear transformation $S$, then we say $T$ is [Invertible](Invertible.md), and we denote the inverse of $T$ by $T^{-1}$  
	If $T:V\rightarrow V$ is an invertible linear transformation, $T$ is called an *[Isomorphism](Isomorphism.md)*, and $V$ and $W$ are *isomorphic vector spaces*

> **Theorem (2.6.2, 114)**  
> 	A linear transformation $T$ has an inverse $S$ if and only if $T$ is **injective** and **surjective**