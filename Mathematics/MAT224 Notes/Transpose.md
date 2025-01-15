#mathematics/linear-algebra 
#uoft/mat224 

The **Transpose** of a [Matrix](Matrix.md) $A$ or [Linear Transformation](../MAT223%20Notes/Linear%20Transformation.md) $[T(x)]$ is the matrix with its rows and columns swapped 


---

# Definition

If $A$ is the $m\times n$ matrix with entries $a_{ij}$, then the **Transpose** of $A$, $B=T(A)$ is the $n\times n$ matrix with entries $b_{ji}=a_{ij}$ The rows of $A$ are the columns of $B$, and vice versa

The Transpose of a matrix or linear transformation $A$ or $T(x)$ is notated $A^{t}$ or $T^{t}(x)$

The **Transpose** can also be defined using the [Dot Product](../MAT223%20Notes/Dot%20Product.md)
	 Let $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{n}$ be a linear transformation
	 The [Transpose](.md) of $T$ is the linear transformation $T^{t}$ that satisfies $\langle T(x),y\rangle=\langle x, T^{t}(y)\rangle$ for all $x$ and $y\in \mathbb{R^{n}}$

A [Matrix](Matrix.md) or [Linear Transformation](../MAT223%20Notes/Linear%20Transformation.md) is [Symmetric](../../Computer%20Science/CSC236/CSC236%20Notes/Symmetric.md), if $T(x)=T^{t}(x)$