#mathematics #uoft/mat223 

A **Linear Transformation** is a special type of of [Transformations/Functions](Transformation.md).

Linear Transformations include
- Rotations
- Dilations (Stretches)
- Shears
- And More

>A **Linear Transformation** is one which *preserves the algebraic structure of [Vector Spaces](../MAT224%20Notes/Vector%20Space.md)*
>So, putting a [Vector Space](../MAT224%20Notes/Vector%20Space.md) through a **Linear Transformation**, will always still result in a [Vector Space](../MAT224%20Notes/Vector%20Space.md) 

---
# Definition

Let $V$ and $W$ be [Subspace](Subspace.md)s. A [Function](../MAT235%20Notes/Function.md) $T:V\rightarrow W$ is called a **Linear Transformation** if $$T(\vec{u}+\vec{v})=T(\vec{u})+T(\vec{v}) \ \text{ and } \ T(a\vec{v}) = aT(\vec{v})$$
For all vectors $\vec{u},\vec{v} \in V$ and all scalars $a$

> Note how this definition is similar to that of a [Vector Space](../MAT224%20Notes/Vector%20Space.md) and [Subspace](Subspace.md) 
> Here, $V$ is called the [Domain](../../CS/CSC236/Domain.md) of $T$, and $W$ is called the [Target](Target)  of $T$

**Linear Transformations** have the same notation as [Transformation](Transformation.md)s
For **linear** transformation, it is traditional to use **capital letters** to describe the function/transformation
	Since sets are also usually written using capital letters, sometimes font variants are also used when writing the transformation or the set

## Properties
- The [Image](Image.md) of a **Linear Transformation** is the *result* of the linear transformation
- The [Kernel](../MAT224%20Notes/Kernel.md) of a **Linear Transformation** is the set of all vectors $v$ such that $T(v)=0$
	The Kernel can be thought as representing how much the linear transformation "squashes" the definition

Linear Transformations
- If $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{m}$ is a linear transformation Then $T(\vec{0}) = \vec{0}$
- If $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{m}$ is a linear transformation, then $T$ takes lines to lines (or points)
- If $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{m}$ is a linear transformation, then $T$ takes parallel lines to parallel lines (or points)
- If $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{m}$ is a linear transformation, then $T$ takes subspaces to subpaces
- If $P:\mathbb{R}^{a}\rightarrow \mathbb{R}^b$ and $Q:\mathbb{R}^{a}\rightarrow \mathbb{R}^b$ are matrix transformations with matrices $M_{P}$ and $M_{Q}$, then $P\circ Q$ is a matrix transformation whose matrix is given by the matrix product $M_P M_Q$ 
- A function $T:V\rightarrow W$ is a linear transformation if $\forall a,b\in \mathbb{R}, \forall u,v \in V$:
		$T(au+bv)=aT(u)+bT(v)$
- A function $T:V\rightarrow W$ is a linear transformation if $\forall a_{1},...,a_{k}\in \mathbb{R}, \forall v_{1},...v_{k} \in V$:
		$T(\sum\limits_{i=1}^{k}a_{i}v_{i})=\sum\limits_{i=1}^{k}a_{i}T(v_{i})$

# Matrices
^04984c
^ffce73

We can define a **Linear Transformation** *uniquely* using a [System of Linear Equations](../MAT224%20Notes/System%20of%20Linear%20Equations.md), and by extension, a [Matrix](../MAT224%20Notes/Matrix.md)

## Definition
Let $T:V\rightarrow W$ be a **Linear Transformation** between the finite dimensional vectors $V$ and $W$, and let $\alpha=\{v_{1},...,v_{k}\}$ and $\beta=\{w_{1},...,w_{l}\}$, respectively, be any bases for $V$ and $W$. 
Let $a_{ij},1\leq i \leq l$ and $1\leq j \leq k$ be the $l\cdot k$ scalars that determine $T$ with respect to the bases $\alpha$ and $\beta$. The matrix whose entries are the scalars $a_{ij}, 1\leq i \leq l, 1\leq j \leq k$ is called the **Matrix of the Linear Transformation $T$ with respect to the bases $\alpha$ for $V$and $\beta$ for $W$**
	This matrix is denoted by $[T]_\alpha^\beta$ 

>This definition just describes how a linear transformation can be uniquely defined using a matrix
>Just take away that Linear Transformations can be represented by a [Matrix](../MAT224%20Notes/Matrix.md), representing a [System of Linear Equations](../MAT224%20Notes/System%20of%20Linear%20Equations.md). 
> We can use this matrix representation to do calculations and other operations 

> All [Matrix Transformation](Matrix%20Transformation.md)s are linear transformations, and *most* linear transformations are matrix transformations
> No idea what the exception is

### Properties
- The assignment of a matrix to a transformation is [Injective](../MAT224%20Notes/Injective.md) and [Surjective](../MAT224%20Notes/Surjective.md)
- The assignment of a matrix to a transformation depends on the choice of bases, if the bases are different, the matrix representation will be different
- If the number of columns of the matrix $A$ is not equal to the number of entries in the column vector $x$, [Matrix-Vector Multiplication](Matrix-Vector%20Multiplication.md) $Ax$ is not defined
- The $i$th row of $Ax$ can be thought of the product of the $i$th row of $A$

## Finding a Matrix for Linear Transformation
**Every** linear transformation from $\mathbb{R}^{n}$ to $\mathbb{R}^{m}$ has a matrix, and we can use basic algebra to find an appropriate matrix

Let $T:\mathbb{R}^{n}\rightarrow\mathbb{R}^{m}$ 
Process of finding a matrix for $T$
1. Create a $m \times n$ matrix of variables
2. Use know input-output pairs for $T$ to set up a system of equations involving the unkowns
3. Solve
### Example
	![525](Pasted%20image%2020231102182706.png)![350](Pasted%20image%2020231102182739.png)

## Transformations As Matrices

- The [Identity Transformation](../MAT224%20Notes/Identity%20Transformation.md) $T:V\rightarrow V$, is the $k\times k$ matrix $\begin{bmatrix} 1 \\  & . \\  &   & .\\ &   &   &  1\end{bmatrix}$
- A **Rotation** of the angle $\theta$ for an arbitrary vector $v=(v_{1},v_{2})$can be defined by the equation:
	$R_\theta(v)=(v_{1}\cos(\theta-v_{2})\sin(\theta),v_{2}\sin(\theta)+v_{2}\cos(\theta))$
	Thus, $R_\theta(e_{1})=(\cos(\theta),sin(\theta))$ and $R_\theta(e_{2})=(-\sin(\theta),\cos(\theta))$
	And $[R_{a}]_\alpha^{\alpha}= \begin{bmatrix} cos(\theta) & -sin(\theta) \\ sin(\theta)  & cos(\theta)\end{bmatrix}$
	Where $\alpha$ is the standard basis in $\mathbb{R}^{2}$
- A **Projection** on a vector $a$ in $\mathbb{R^{2}}$ can be defined by $[P_{a}]_{\alpha}^{\alpha}= \frac{1}{a_{1}^{2}+a_{2}^{2}}\begin{bmatrix} a^{2}_{1} & a_{1}a_{2} \\ a_{1}a_{2} & a^{2}_{2}\end{bmatrix}$ 
	Try to solve for this using the equation for [Projection](../MAT235%20Notes/Projection.md), look back at 2.1

To apply a matrix to a vector, and apply a linear transformation represented by a matrix to a vector, you must perform *matrix vector multiplication*
	Let $A$ be an $l\times k$ matrix, and let $x$ be a column vector with $k$ entries, then the *product of the vector $x$ by the matrix $A$* is defined as:
	$\begin{bmatrix} a_{11} & \dots & a_{1k} \\  & \vdots \\ a_{l1} & \dots & a_{1k}\end{bmatrix}\begin{bmatrix} x_{1} \\ \vdots \\x_{k}\end{bmatrix}=\begin{bmatrix} a_{11} x_{1} +...+ a_{1k} x_{k} \\ \vdots \\ a_{i1}x_{1}+...+a_{1k}x_{k}\end{bmatrix}$   

---

# Why Linear Transformations?
We have a complete theory of linear transformations, and non-linear transformations are notoriously difficult to understand. Many non-linear transformations can be approximated by linear ones