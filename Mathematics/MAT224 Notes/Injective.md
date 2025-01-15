#uoft/mat224 #mathematics/linear-algebra 

A [[Function]] is **Injective**  if whenever $f(p_{1})=f(p_{2})$ for $p_{1},p_{2}\in S_{1}$, $p_{1}=p_{2}$
Another way to describe being **Injective** is saying **one to one**

---
# Definition
Let $T: V \rightarrow W$ be a [[Linear Transformation|Linear Transformation]]

- A [[Linear Transformation|Linear Transformation]] is **Injective** if and only if $dim(Ker(T))= 0$
- A **Linear Transformation** is **Injective** if and only if $dim(Im(T))=dim(V)$
- If $dim(W)<dim(V)$ and, $T$ is not injective 
- A linear transformation is injective if and only if it is **Surjective**

# Properties
If $T$ is [[Injective]] and [[Surjective]], the inverse function $S:W\rightarrow V$ is a linear transformation **(2.6.1, 114)**
- If $T$ is a linear transformation $S$, then we say $T$ is [[Invertible]], and we denote the inverse of $T$ by $T^{-1}$
- If $T:V\rightarrow V$ is an invertible linear transformation, $T$ is called an *[[Isomorphism]]*, and $V$ and $W$ are *isomorphic vector spaces*

> **Theorem (2.6.2, 114)**
> 	A linear transformation $T$ has an inverse $S$ if and only if $T$ is **injective** and **surjective**

# Problem Solving
## How to show a map $T$ is Injective
- Show that $dim(Ker(T))=0$
-  Show that $T$ has an inverse
