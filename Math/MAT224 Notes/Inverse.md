#mathematics 
#uoft/mat224 

The **Inverse** of a [Function](../MAT235%20Notes/Function.md) $F$, $F^{-1}$ is the function where $F^{-1}(F(x))=x$ 

---
# Linear Transformations

Let $T:V\rightarrow W$ be a [Linear Transformation](../MAT223%20Notes/Linear%20Transformation.md)

If $T$ has an [Inverse](.md) linear transformation $S$, then we say $T$ is [Invertible](Invertible.md), and we denote the inverse of $T$ by $T^{-1}$

> Just Simple Notation

If $T:V\rightarrow W$ has an invertible linear transformation, $T$ is called an *[Isomorphism](Isomorphism.md)*, and the vector spaces $V$ and $W$ are *isomorphic vector spaces*

>If $V$ and $W$ are finite dimensional vector spaces If two vector spaces have the same dimension, they are isomorphic
>Isomorphisms of vector spaces are a way to describe the way some vector spaces are really "the same", even though the elements may be written in different ways 


## Properties
- A [Matrix](Matrix.md) and its corresponding [Transformation](../MAT223%20Notes/Transformation.md) is [Invertible](Invertible.md) if and only if $det(T)\neq 0$
- $T$  has an inverse, if it is [Injective](Injective.md) and [Surjective](Surjective.md)
- A linear transformation $T$ has an inverse $S$ if and only if $T$ is **injective** and **surjective**]]
- The inverse transformation $S:W\rightarrow V$ is also a linear transformation
- If $V$ and $W$ are finite-dimensional vector spaces, there is an isomorphism if and only if $dim(V)=dim(W)$
- For any choices of bases $\alpha$ for $V$ and $\beta$ for $W$, $[T^{-1}]_{\beta}^{\alpha}={[T]_\alpha^\beta}^{-1}$ 

## How to Find the Inverse of a Linear Transformation
### Gauss Jordan
Let $[T]_{\alpha}^{\beta}$ be the matrix representation of a linear transformation $T$.

The [Gauss-Jordan Method](Gauss-Jordan%20Method.md) is a method for producing $[T^{-1}]_{\beta}^{\alpha}$, the matrix representation of the *inverse of the linear transformation* $T$
	To do the **Gauss-Jordan Method**, start with the augmented matrix
	$[T|I]=\begin{bmatrix} t_{11} & \dots & t_{1n} & | & 1 \\ \vdots &   & \vdots  & | &   & \ddots\\ a_{n1} & \dots & a_{nn}  &  | &   &   & 1\end{bmatrix}$, Where the left matrix is the matrix representation of $T$, and the right matrix is the Identity Matrix
	Then, perform row operations until the left side is the identity matrix.
	The resulting matrix on the right will be $[T^{-1}]_{\beta}^{\alpha}$

### [Determinant](Determinant.md)
The **Inverse** of a $2\times 2$ matrix $A$ can be found with
	$A^{-1}=\frac{1}{det(A)}\begin{bmatrix} a_{22} & -a_{12} \\ -a_{21} & a_{11}\end{bmatrix}$

Using the [Matrix of Cofactors](Matrix%20of%20Cofactors.md)
If $A$ is an invertible $n\times n$ matrix, then $A^{-1}$ is the matrix whose $ij$th entry is $(-1)^{i+j}\frac{det(A_{ji})}{det(A)}$
And $A^{-1}=\frac{1}{det(A)}A'$

>This is so far the **second** method of calculating the inverse of a matrix
>	Note that this formula is efficient only for small $n\leq 4$. In general, it is more efficient to use the [Gauss-Jordan Method](Gauss-Jordan%20Method.md)


# Matrices
An $n\times n$ matrix $A$ is called [Invertible](Invertible.md) if there exists an $n\times n$ matrix $A$ is called *invertible* if there exists an $n\times n$ matrix $B$ so that $AB=BA=I$. $B$  is called the *inverse* of $A$ and is denoted by $A^{-1}$

To find the inverse of a matrix, also use [Gauss-Jordan Method](Gauss-Jordan%20Method.md)