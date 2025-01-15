#mathematics 
#uoft/mat224 

The **Inverse** of a [[Function]] $F$, $F^{-1}$ is the function where $F^{-1}(F(x))=x$ 

In [[Group Theory]], the inverse of an element $x$ is the element $x^{-1}$ where $(x)(x^{-1})=e$
Or where the [[Inverse]] of a function $f:X\rightarrow Y$, is a function $g:Y\rightarrow X$ such that $g\circ f = id_{X}$ and $f\circ g = id_{Y}$
- $f$ has an inverse if and only if $f$ is [[Bijective]]
- The inverse can be denoted $f^{-1}$

---
# Linear Transformations

Let $T:V\rightarrow W$ be a [[Linear Transformation|Linear Transformation]]

If $T$ has an [[Inverse]] linear transformation $S$, then we say $T$ is [[Invertible]], and we denote the inverse of $T$ by $T^{-1}$

> Just Simple Notation

If $T:V\rightarrow W$ has an invertible linear transformation, $T$ is called an *[[Isomorphism]]*, and the vector spaces $V$ and $W$ are *isomorphic vector spaces*

>If $V$ and $W$ are finite dimensional vector spaces If two vector spaces have the same dimension, they are isomorphic
>Isomorphisms of vector spaces are a way to describe the way some vector spaces are really "the same", even though the elements may be written in different ways 


## Properties
- A [[Matrix]] and its corresponding [[Transformation]] is [[Invertible]] if and only if $det(T)\neq 0$
- $T$  has an inverse, if it is [[Injective]] and [[Surjective]]
- A linear transformation $T$ has an inverse $S$ if and only if $T$ is **injective** and **surjective**]]
- The inverse transformation $S:W\rightarrow V$ is also a linear transformation
- If $V$ and $W$ are finite-dimensional vector spaces, there is an isomorphism if and only if $dim(V)=dim(W)$
- For any choices of bases $\alpha$ for $V$ and $\beta$ for $W$, $[T^{-1}]_{\beta}^{\alpha}={[T]_\alpha^\beta}^{-1}$ 

## How to Find the Inverse of a Linear Transformation
### Gauss Jordan
Let $[T]_{\alpha}^{\beta}$ be the matrix representation of a linear transformation $T$.

The [[Gauss-Jordan Method]] is a method for producing $[T^{-1}]_{\beta}^{\alpha}$, the matrix representation of the *inverse of the linear transformation* $T$
	To do the **Gauss-Jordan Method**, start with the augmented matrix
	$[T|I]=\begin{bmatrix} t_{11} & \dots & t_{1n} & | & 1 \\ \vdots &   & \vdots  & | &   & \ddots\\ a_{n1} & \dots & a_{nn}  &  | &   &   & 1\end{bmatrix}$, Where the left matrix is the matrix representation of $T$, and the right matrix is the Identity Matrix
	Then, perform row operations until the left side is the identity matrix.
	The resulting matrix on the right will be $[T^{-1}]_{\beta}^{\alpha}$

### [[Determinant]]
The **Inverse** of a $2\times 2$ matrix $A$ can be found with
	$A^{-1}=\frac{1}{det(A)}\begin{bmatrix} a_{22} & -a_{12} \\ -a_{21} & a_{11}\end{bmatrix}$

Using the [[Matrix of Cofactors]]
If $A$ is an invertible $n\times n$ matrix, then $A^{-1}$ is the matrix whose $ij$th entry is $(-1)^{i+j}\frac{det(A_{ji})}{det(A)}$
And $A^{-1}=\frac{1}{det(A)}A'$

>This is so far the **second** method of calculating the inverse of a matrix
>	Note that this formula is efficient only for small $n\leq 4$. In general, it is more efficient to use the [[Gauss-Jordan Method]]


# Matrices
An $n\times n$ matrix $A$ is called [[Invertible]] if there exists an $n\times n$ matrix $A$ is called *invertible* if there exists an $n\times n$ matrix $B$ so that $AB=BA=I$. $B$  is called the *inverse* of $A$ and is denoted by $A^{-1}$

To find the inverse of a matrix, also use [[Gauss-Jordan Method]]