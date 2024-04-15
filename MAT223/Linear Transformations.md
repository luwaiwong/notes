#mathematics #uoft/mat223 

**Linear Transformations** are a special category of [Transformations/Functions](Transformation.md).

Linear Transformations include
- Rotations
- Dilations(Stretches)
- Shears
- And More

>A **Linear Transformation** is one which *preserves the algebraic structure of [Vector Spaces](../MAT224/MAT224%20Notes/Vector%20Space.md)*

---

# Formal Definition & Notation
Let $V$ and $W$ be [Subspace](Subspace.md)s. A [Function](../MAT235/Notes/Function.md) $T:V\rightarrow W$ is called a **Linear Transformation** if $$T(\vec{u}+\vec{v})=T(\vec{u})+T(\vec{v}) \ \text{ and } \ T(a\vec{v}) = aT(\vec{v})$$
For all vectors $\vec{u},\vec{v} \in V$ and all scalars $a$

> Note how this definition is similar to that of a [Vector Space](../MAT224/MAT224%20Notes/Vector%20Space.md)

**Linear Transformations** have the same notation as [Transformation](Transformation.md)s
For **linear** transformation, it is traditional to use **capital letters** to describe the function/transformation
	Since sets are also usually written using capital letters, sometimes font variants are also used when writing the transformation or the set


# Properties
- The [Image](Image.md) of a **Linear Transformation** is the *result* of the linear transformation
- The [Kernel](../MAT224/MAT224%20Notes/Kernel.md) of a **Linear Transformation** is the set of all vectors $v$ such that $T(v)=0$
	The Kernel can be thought as representing how much the linear transformation "squashes" the definition

Linear Transformations
- If $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{m}$ is a linear transformation Then $T(\vec{0}) = \vec{0}$
- If $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{m}$ is a linear transformation, then $T$ takes lines to lines (or points)
- If $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{m}$ is a linear transformation, then $T$ takes parallel lines to parallel lines (or points)
- If $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{m}$ is a linear transformation, then $T$ takes subspaces to subpaces
- If $P:\mathbb{R}^{a}\rightarrow \mathbb{R}^b$ and $Q:\mathbb{R}^{a}\rightarrow \mathbb{R}^b$ are matrix transformations with matrices $M_{P}$ and $M_{Q}$, then $P\circ Q$ is a matrix transformation whose matrix is given by the matrix product $M_P M_Q$ 

# Matrices
^04984c
^ffce73

We can define a **Linear Transformation** *uniquely* using a [System of Linear Equations](../MAT224/MAT224%20Notes/System%20of%20Linear%20Equations.md), and by extension, a [Matrix](../MAT224/MAT224%20Notes/Matrix.md)

## Definition
Let $T:V\rightarrow W$ be a **Linear Transformation** between the finite dimensional vectors $V$ and $W$, and let $\alpha=\{v_{1},...,v_{k}\}$ and $\beta=\{w_{1},...,w_{l}\}$, respectively, be any bases for $V$ and $W$. 
Let $a_{ij},1\leq i \leq l$ and $1\leq j \leq k$ be the $l\cdot k$ scalars that determine $T$ with respect to the bases $\alpha$ and $\beta$. The matrix whose entries are the scalars $a_{ij}, 1\leq i \leq l, 1\leq j \leq k$ is called the **Matrix of the Linear Transformation $T$ with respect to the bases $\alpha$ for $V$and $\beta$ for $W$**
	This matrix is denoted by $[T]_\alpha^\beta$ 
**Properties**
- The assignment of a matrix to a transformation is [Injective](../MAT224/MAT224%20Notes/Injective.md) and [Surjective](Surjective)
- The assignment of a matrix to a transformation depends on the choice of bases, if the bases are different, the matrix representation will be different

> All [Matrix Transformation](Matrix%20Transformation.md)s are linear transformations, and *most* linear transformations are matrix transformations


## Finding a Matrix for Linear Transformation
**Every** linear transformation from $\mathbb{R}^{n}$ to $\mathbb{R}^{m}$ has a matrix, and we can use basic algebra to find an appropriate matrix

Let $T:\mathbb{R}^{n}\rightarrow\mathbb{R}^{m}$ 
Process of finding a matrix for $T$
1. Create a $m \times n$ matrix of variables
2. Use know input-output pairs for $T$ to set up a system of equations involving the unkowns
3. Solve
### Example
	![Pasted image 20231102182706](Pasted%20image%2020231102182706.png)
	![Pasted image 20231102182739](Pasted%20image%2020231102182739.png)
---

# Why Linear Transformations?
We have a complete theory of linear transformations, and non-linear transformations are notoriously difficult to understand. Many non-linear transformations can be approximated by linear ones