#statistics #mathematics/linear-algebra 
#uoft/mat224 

In Linear Algebra, The **Kernel** is all elements in a [[Linear Transformation|Linear Transformation]] which map to 0

In Statistics, The **Kernel** is the [[Function]] used for a [[Kernel Density Estimate]]

---
# Linear Algebra
## Definition

Let $T: V \rightarrow W$ be a [[Linear Transformation|Linear Transformation]]

The [[Kernel]] of $T$ is the subset of $V$ consisting of all vectors $v\in V$ such that $T(v)=0$ 

>Given a matrix for a linear transformation, you can solve for the kernel, by solving for the set of vectors which results in 0
	This set of vectors will be the kernel

> Conceptually, the Kernel is the set of all vectors, that when fed into the transformation $T$, get "squashed" into 0. These represent the dimensions which are *lost* after going through the linear transformation $T$
### Properties
- The **Kernel** is a [[Subspace]] of $V$

## Theorems
The Dimension Theorem
	if $V$ is a finite-dimensional vector space and $T:V\rightarrow W$ is a linear transformation, then:
		$dim(Ker(T))+dim(Im(T))=dim(V)$

# Statistics
## Definition

A **Kernel** is a function $K:\mathbb{R} \rightarrow \mathbb{R}$ that typically satisfies the following conditions:
- $K$ is a probability density, *i.e.* $K(u) \geq 0$ and $\int_{-\infty}^{\infty}K(u)du=1$
- $K$ is symmetric around zero *i.e.* $K(u)=K(-u)$
- $K(u)=0$ for $|u|>1$

> The **Kernel** represents the weighting and shape of each data point in a [[Kernel Density Estimate]]

 >Examples of different Kernels
> ![[Pasted image 20240708102514.png|500]]


