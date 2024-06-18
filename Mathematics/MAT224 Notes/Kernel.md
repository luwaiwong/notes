#uoft/mat224 #mathematics/linear-algebra 

The **Kernel** is all elements in a [Linear Transformation](Linear%20Transformation.md) which map to 0

---
# Definition

Let $T: V \rightarrow W$ be a [Linear Transformation](Linear%20Transformation.md)

The [Kernel](.md) of $T$ is the subset of $V$ consisting of all vectors $v\in V$ such that $T(v)=0$ 

>Given a matrix for a linear transformation, you can solve for the kernel, by solving for the set of vectors which results in 0  
	This set of vectors will be the kernel

> Conceptually, the Kernel is the set of all vectors, that when fed into the transformation $T$, get "squashed" into 0. These represent the dimensions which are *lost* after going through the linear transformation $T$
## Properties
- The **Kernel** is a [Subspace](Subspace.md) of $V$

# Theorems
The Dimension Theorem  
	if $V$ is a finite-dimensional vector space and $T:V\rightarrow W$ is a linear transformation, then:  
		$dim(Ker(T))+dim(Im(T))=dim(V)$