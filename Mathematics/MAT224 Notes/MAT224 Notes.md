 #uoft/mat224 #mathematics #notes 

Notes for MAT224, Linear Algebra II

---
# Table of Contents 
[#Chapter 1 Vector Spaces](#Chapter%201%20Vector%20Spaces) 
- [#1.1 Vector Spaces](#1.1%20Vector%20Spaces)
- [#1.2 Subspaces](#1.2%20Subspaces)
- [#1.3 Linear Combinations](#1.3%20Linear%20Combinations)
- [#1.4 Linear Dependence and Linear Independence](#1.4%20Linear%20Dependence%20and%20Linear%20Independence)
- [#1.5 Solving Systems of Linear Equations](#1.5%20Solving%20Systems%20of%20Linear%20Equations)
- [#1.6 Bases and Dimension](#1.6%20Bases%20and%20Dimension)

[#Chapter 2 Linear Transformations](#Chapter%202%20Linear%20Transformations)
- [#2.1 Linear Transformations](#2.1%20Linear%20Transformations)
- [#2.2 Linear Transformations between Finite Dimensional Vector Spaces](#2.2%20Linear%20Transformations%20between%20Finite%20Dimensional%20Vector%20Spaces)
- [#2.3 Kernel and Image](#2.3%20Kernel%20and%20Image)
- [#2.4 Applications of the Dimension Theorem](#2.4%20Applications%20of%20the%20Dimension%20Theorem)
- [#2.5 Composition of Linear Transformations](#2.5%20Composition%20of%20Linear%20Transformations)
- [#2.6 Inverse of a Linear Transformation](#2.6%20Inverse%20of%20a%20Linear%20Transformation)
- [#2.7 Change of Basis](#2.7%20Change%20of%20Basis)  
[#Chapter 3](#Chapter%203)
- [#3.1 The Determinant as Area](#3.1%20The%20Determinant%20as%20Area)
- [#3.2 The Determinant of an $n times n$ Matrix](#3.2%20The%20Determinant%20of%20an%20$n%20times%20n$%20Matrix)
- [#3.3 Further Properties of the Determinant](#3.3%20Further%20Properties%20of%20the%20Determinant)  
[#Chapter 4 Eigenvalues, Eigenvectors, Diagonalization, Spectral Theorem](#Chapter%204%20Eigenvalues,%20Eigenvectors,%20Diagonalization,%20Spectral%20Theorem)
- [#4.1 Eigenvalues and Eigenvectors](#4.1%20Eigenvalues%20and%20Eigenvectors)
- [#4.2 Diagonalizability](#4.2%20Diagonalizability)
- [#4.3 Geometry in $R {3}$](#4.3%20Geometry%20in%20$R%20{3}$)
- [#4.4 Orthogonal Projections and the Gram-Schmidt Process](#4.4%20Orthogonal%20Projections%20and%20the%20Gram-Schmidt%20Process)
- [#4.5 Symmetric Matrices](#4.5%20Symmetric%20Matrices)
- [#4.6 The Spectral Theorem](#4.6%20The%20Spectral%20Theorem)  
[#Chapter 5 Complex Numbers and Complex Vector Spaces](#Chapter%205%20Complex%20Numbers%20and%20Complex%20Vector%20Spaces)  
(notes mostly incomplete after this chapter... sorry)

[MAT224 Cheat Sheet](MAT224%20Cheat%20Sheet.md)  
[MAT224 Definitions](MAT224%20Definitions)

## References
(1.2.6, 16) --> (Reference Number, Page Number)

# Notes
## Chapter 1 Vector Spaces
^132a9d
### 1.1 Vector Spaces
A [Vector](Vector.md) is a directed line segment or "arrow", with one point distinguished  as the "head", and the other distinguished as the "tail"  
- Two operations which can be done on vectors are **vector addition**, and **vector multiplication**
- These operations give rise to various [](Vector.md#^a7e263|properties) of vectors

A [Vector Space](Vector%20Space.md) $\mathbb{V}$ is a [Set](Set.md), whose elements are called vectors, and satisfies the requirements: **(1.1.1, 7)**     
- The set has the operations of vector addition and vector multiplication
- The set follows a set of [](Vector.md#^a7e263|axioms) (The properties of vector addition and multiplication)  
Axioms
- For all vectors $x,y$ and $z\in \mathbb{V}, (x,y)+z=x+(y+z)$
- For all vectors $x$ and $y\in \mathbb{V}, x+y=y+x$
- There exists a vector $0\in \mathbb{V}$ with the property that $x+0=x$ for all vectors $x\in \mathbb{V}$
- For each vector $x\in \mathbb{V}$, there exists a vector denoted $-x$ with the property that $x+-x=0$
- For all vectors $x$ and $y\in \mathbb{V}$, and all $c\in \mathbb{R}, c(x+y)=xc+xy$
- For all vectors $x\in \mathbb{V}$, and $c,d\in \mathbb{R}, (c+d)x=cx+dx$
- For all vectors $x\in \mathbb{V}$ and all $c,d\in \mathbb{R}, (cd)x=c(dx)$
- For all vectors $x\in \mathbb{V},1x=x$

**Other Properties**
- The zero vector $0$ is unique
- For all $x\in \mathbb{V}, 0x=0$
- For each $x\in \mathbb{V}$, the additive inverse $-x$ is unique  
	There is only one other vector $a$, where $x-a=0$
- For all $x\in \mathbb{V}$, and all $c\in \mathbb{R}$, $(-c)x=-(cx)$

> This definition of a Vector Space is based of the properties that vectors do.  
> We use the definition of a Vector Space, because there are many other mathematical concepts(such as functions), which also satisfy the definition of a Vector Space, and it helps to generalize this idea of spaces which follow the properties of vectors. 

This is the base definition for the space that all subsequent concepts will refer to.  
Many other types of sets and spaces can be created, with their own operations, but not all can satisfy the definition of a vector space

> An example of a vector space, with different definition of the operation of addition and multiplication  
> 	$V=\mathbb{R}^{2}$, where $x+y=x\cdot y$, and $cx=x^{c}$

**Other Definitions:**
- $P_{n}(\mathbb{R})$ is the set of all polynomials, with a *degree no larger than $n$*, where:  
	- $P_{n}(R)=\{p:\mathbb{R}\rightarrow \mathbb{R}|p(x)=a_{n}x^{n}+a_{n-1}x^{n-1}+...+a_{0} \text{ where }a_{i}\in \mathbb{R}\}$  
	- Operations (Addition and Multiplication)  
		- For two polynomials $p(x), q(x)$, $(p+q)(x)=p(x)+q(x)=(a_{n}+b_{n})x^{n}+...+(a_{0}+b_{0})\in P_{n}(\mathbb{R})$  
			for $c\in \mathbb{R}$, $cp(x)=ca_{n}x^{n}+...+ca_{0}\in P_{n}(\mathbb{R})$
- $C(\mathbb{R})$ is the set of all continuous [Functions](Function.md)
- [ ] 
### 1.2 Subspaces
Let $V$ be a *vector space*

A [Subspace](Subspace.md) is a subset of a [Vector Space](Vector%20Space.md), which is also a vector space itself **(1.2.6, 15)**
- One can check if a subset is a subspace by verifying the axioms of vector spaces
- Also can just check that the following apply:
	- $\vec{u}+\vec{v}\in V$(also called being *closed with respect to vector addition*, and
	- $k\vec{u}\in V$(also called being *closed with respect to scalar multiplication*)
	- $\vec 0 \in V$ 
- Geometrically, a subspace is a [Span](Span.md) which passes through zero , and goes on infinitely
	- Line passing through zero in 3D space, Plane passing through zero in 3D space

You can also check if a subset is a subspace with the following theorem
- Let $V$ be a vector space, $W$ be nonempty subset of $V$
- $W$ is a [Subspace](Subspace.md) of $V$ if and only if: 
	- $\forall x,y \in W, \forall c \in \mathbb{R}, cx+y \in W$ 
- This *merges* both definitions into one

> We define a subspace as a separate thing, because it is a subset of a **Vector Space**, which holds all the properties of a vector space  
> A Vector Space is a more general definition, which can include many things

The intersection of any collection of *subspaces* of $V$ is a subspace of $V$
- Think of the intersection between two planes passing through zero in the 3D space
- They would produce a line passing through zero in 3D space (also a subspace)

### 1.3 Linear Combinations
Let $S$ be *subset* of a *vector space* $V$

A [Linear Combination](Linear%20Combination.md) of **Vectors** in $S$ is any sum $a_{1}x_{1}+...+a_{n}x_{n}$, where $a_{i}\in \mathbb{R}, x_{i}\in S$ **(1.3.1, 22)**
- For two vectors $x,y$ a linear combination of them is any vector:
	- $a_{1}(x)+a_{2}(y)$

The [Span](Span.md) of a set of **Vectors** $S$, or $Span(S)$ is the set of all possible **Linear Combinations** of vectors in $S$ **(1.3.1, 22)**
- If $S=\phi$ (empty set), $Span(S)=\{0\}$
- If a set $W$ = $Span(S)$, we say $S$ **spans**, (or generates) $W$  
**Properties**
- Let $S$ be any subset of $V$, $Span(S)$ is a subspace of $V$
- The span of anything in a vector space $V$ will result in a subspace

The [Sum](Sum.md) of two [Subspaces](Subspace.md) $W_{1}, W_{2}$ is the set $W_{1}+W_{2}=\{x\in V \  | \ x = x_{1}, \text{ for some }x_{1}\in W_{2} \}$ **(1.3.4, 23)**  
	$W_{1}+W_{2}$ can be thought of as the set of vectors that can be "built up" from the vectors in $W_1 +W_2$ by linear combinations  
		The **Sum** of two subspaces can be thought of as the Span of the two subspaces?  
	If $W_{1}=Span(S_{1})$, and $W_{2}=Span(S_{2})$, $W_{1}+W_{2}=Span(S_{1}\cup S_{2})$  
	Let $W \supseteq W_{1}\cup W_{2}$ , then $W\supseteq W_{1}+W_{2}$

Let $W_{1}, W_{2}$ be subspaces of vector space $V$, $W_{1}+W_{2}$ is also a subspace of $V$  
	On the other hand, $W_{1}\cup W_{2}$ is generally *not* a subspace of $V$, other than specific situations


### 1.4 Linear Dependence and Linear Independence
Let $S$ be *subset* of a *vector space* $V$

A set $S$ has a [Linear Dependence](Linear%20Dependence.md) if for the vectors of $S$: **(1.4.2, 28)**  
	$a_{1}x_{1}+...a_{n}x_{n}=0$ , where $a_i \in \mathbb{R}$ are not all zero

A set $S$ is [Linearly Dependent](Linear%20Dependence.md) if there exists a linear dependence  
	A superset of a linearly dependent set will also be linearly dependent

A set $S$ is [Linearly Independent](Linear%20Independence.md) if for the vectors of $S$: **(1.4.4, 29)**  
	$a_{1}x_{1}+...a_{n}x_{n}\neq 0$, or only equals zero when all $a_{i}\in  \mathbb{R}$ are zero  
	A subset of a linearly independent set will also be linearly independent

### 1.5 Solving Systems of Linear Equations
32->46

A [System of Linear Equations](System%20of%20Linear%20Equations.md) is a system of $m$ equations with $n$ unknowns $x_{1},...x_{n}$, in the form:  
$$\begin{aligned} a_{11}x_{1}+...+a_{1n}x_{n}&=b_{1}\\a_{21}x_{1}+...+a_{2n}x_{n}&=b_{2}\\\vdots \ \ \ \ \ \  \ \ \ \ \ \ \ \  \ \\a_{m1}x_{1}+...+a_{mn}x_{n}&=b_{m}\end{aligned} $$

- A system is [Homogenous](Homogenous.md), if all $b_{i}=0$, and [Inhomogenous](Inhomogenous.md) otherwise
- Two **Systems of Linear Equations** are **Equivalent** if their sets of solutions are the same  
A system obtained by 
- Adding any multiple of any one equation to any second equation, is an equivalent system
- Multiplying any one equation by a nonzero scalar and leaving the others unchanged is an equivalent system
- Interchanging any two equations is an equivalent system
- These are the [Elementary Operations](Elementary%20Operations) of systems of linear equations, they can be conducted while keeping the system equivalent

A [System of Linear Equations](System%20of%20Linear%20Equations.md) is in [](Matrix.md#^99f2f5|Echelon%20Form) if: 
- For each equation, all coefficients are 0, or the first nonzero coefficient is a 1
- For each row with a coefficient at column i, every other row has a coefficient of 0 at that column
- For each two columns on a row, the column to the left has a larger coefficient than the column to the right  
	The variables in the leading terms of the equations are the **basic variables**  
	All other variables are **free variables**  
	For a [Vector Space](Vector%20Space.md) $W$ defined by a System of Linear Equations, the [Dimension](Dimension.md) of $W$ is the number of free variables in echelon form

>**Theorem (1.5.6, 38)**  
	Every system of linear equations has an **Echelon Form**

### 1.6 Bases and Dimension
47-60

A subset $S$ of a vector space $V$ is a [Base](Base.md), or **Basis** of $V$ if: **(1.6.1, 47)**  
	$V=Span(S)$  
	$S$ is linearly independent  
**Properties**
- If a vector space $V$ has a linearly independent subset $S$, then there exists a basis $S'$ of $V$,  where $S\subset S'$  
	Or, you can make a basis out of any linearly independent subset/every linearly independent set may be *extended to a basis*
- $S$ is a basis of $V$ if and only if every vector $x\in V$ can be written *uniquely* as a linear combination of the vectors in $S$
- Not all **Vector Spaces** can have a finite base, take the set of all polynomials for examples, since it includes polynomials up to $x^\infty$, then it cannot be finite
- Let $S$ be a spanning set of $V$ with $m$ elements, then there is no linearly independent set in $V$ with less than $m$ elements  
	Or, if you find a set that can span $V$, then any set with a larger amount of elements will be included in $Span(S)$  
	Thus, you can only have a linearly independent set with with $\leq m$ elements

The [Dimension](Dimension.md) of a finite-dimensional vector space $V$ is the number of vectors in any [Base](Base.md) of $V$ **(1.6.12, 53)**  
	The subspace $W$ of a vector space $V$ has $dim(W) \leq dim(V)$  
	$dim(W) = dim(V)$ only if $W=V$  
	For a [Vector Space](Vector%20Space.md) $W$ defined by a System of Linear Equations, the [Dimension](Dimension.md) of $W$ is the number of free variables in echelon form  
**Properties**
- For a vector space defined by a system of [Homogenous](Homogenous.md) linear equations, its dimension is equal to the number of free variables in its echelon form
- $dim(W_{1}+W_{2})=dim(W_{1})+dim(W_{2})-dim(W_{1}\cap W_{2})$  
	The **dimension** of two vector spaces added together, is the total number of unique dimensions in the sum

## Chapter 2 Linear Transformations
### 2.1 Linear Transformations
63-72
#### Linear Transformations
A function $T:V\rightarrow W$ is a [Linear Transformation](Linear%20Transformation.md) if: **(2.1.1, 64)**
-  $T(u+v)=T(u)+T(v), \forall u,v \in V$, and
-  $T(av)=aT(v), \forall a\in \mathbb{R}, v\in V$  
	A **Linear Transformation** is one which *preserves the algebraic structure of [Vector Spaces](Vector%20Space.md)*  
	$V$ is the [Domain](../../CS/CSC236/Domain.md) of $T$, and $W$ is the [Target](Target) of $T$  
**Properties**
- A linear transformation always takes $0$ to $0$ 
- Linear Transformations can convert **Vector Spaces** from one base to another

Following this,  
	A function $T:V\rightarrow W$ is a linear transformation if $\forall a,b\in \mathbb{R}, \forall u,v \in V$:  
		$T(au+bv)=aT(u)+bT(v)$  
	A function $T:V\rightarrow W$ is a linear transformation if $\forall a_{1},...,a_{k}\in \mathbb{R}, \forall v_{1},...v_{k} \in V$:  
		$T(\sum\limits_{i=1}^{k}a_{i}v_{i})=\sum\limits_{i=1}^{k}a_{i}T(v_{i})$

The [Image](Image.md) of a **Linear Transformation** is the *result* of the linear transformation

Transformations
- The [Identity Transformation](Identity%20Transformation.md) is one where $\forall v, T(v)=v$
- The **Zero Transformation** is one where $\forall v, T(v)=v$
- [Projections](Projection.md) are linear transformations
- The process of differentiation and definite integration can be viewed as linear mappings

The angle between two vectors $a$ and $v$ can be found with  
	$\cos(\theta)=\frac{\langle a,b\rangle}{||a||\cdot ||b||}$ 

#### Dot Product
The [Dot Product](Dot%20Product.md), or **Inner Product** has two definitions, both of which are equivalent:  
Geometric Definition  
	$\vec{v}\cdot \vec{w} = || \vec{v}|| \ ||\vec{w}||cos\theta$  
Algebraic Definition  
	$\vec{v}\cdot \vec{w}=v_{1}w_{1}+v_{2}w_{2}+v_{3}w_{3}$ 

#### Projections
The [Projection](Projection.md) $P_{w}(v)=w$ of a vector $v$ on a line $W$ is point where, if you create a perpendicular line from the head of $v$, to $W$, $w$ is the point on $W$ where the line intersects  
The **Projection** can be calculated by: $P_{w}(v)=\frac{\langle w,b\rangle}{\langle w,w \rangle}w=\frac{w_{1}v_{1}+w_{2}v_{2}}{w^{2}_{1}+w_{2}^{2}}(w_{1},w_{2})=\frac{1}{w_{1}^{2}+w_{2}^{2}}(w_{1}^{2}v_{1}+w_{1}w_{2}v_{2},w_{1}w_{2}v_{1}+w^{2}_{2}v_{2})$ 

Properties
- The with this definition of a [Perpendicular](Perpendicular.md) line, the **Dot Product** of the vector $\langle W, (V-w)\rangle=0$  
	The dot product of the vector being projected on, and the vector being projected-the projection is 0

### 2.2 Linear Transformations between Finite Dimensional Vector Spaces
73-83
#### Matrices and Linear Transformations
[Linear Transformation](Linear%20Transformation.md) can be uniquely determined by a system of linear equations for each value of its [Base](Base.md)

A [Matrix](Matrix.md) is a rectangular array of numbers. **(2.2.5, 75)**  
	A **Matrix** can be used to represent a system of linear equations  
		With this representations, columns represent variables, and rows represent an equation  
Properties
- If the number of columns of a matrix $A$ is not equal to the number of rows in the vector $x$, matrix multiplication $Ax$ is not defined
- Let A be $l\times k$ matrix, and $u$ and $v$ be column vectors with $k$ entries. For every pair of real number $a$ and $b$ $$A(au+bv)=aAu+bAv$$  
Linear transformations can be determined by a system of linear equations  
Thus, they can be defined by a [Matrix](Matrix.md), representing that system of linear equations

Let $T:V\rightarrow W$ be a **Linear Transformation** between the finite dimensional vectors $V$ and $W$, and let $\alpha=\{v_{1},...,v_{k}\}$ and $\beta=\{w_{1},...,w_{l}\}$, respectively, be any bases for $V$ and $W$.  
Let $a_{ij},1\leq i \leq l$ and $1\leq j \leq k$ be the $l\cdot k$ scalars that determine $T$ with respect to the bases $\alpha$ and $\beta$. The matrix whose entries are the scalars $a_{ij}, 1\leq i \leq l, 1\leq j \leq k$ is called the **Matrix of the Linear Transformation $T$** with respect to the bases $\alpha$ for $V$and $\beta$ for $W$  
	This matrix is denoted by $[T]_\alpha^\beta$  
	When a transformation is wrapped with square brackets $[T]$, it is the **Matrix Representation** of that linear transformation  
**Properties**
- The assignment of a matrix to a transformation is [Injective](Injective.md) and [Surjective](Surjective.md)
- The assignment of a matrix to a transformation depends on the choice of bases, if the bases are different, the matrix representation will be different

> Each row of a matrix of a linear transformation determines what the $i$th value of the resulting vector will be  
> And if $T(v_{i})=a_{11}w_{1}+...+a_{1j}w_{l}$, then the coefficients expressing $T(v_{i})$ in terms of $w_{1},...w_{j}$ form the $j$th column of $[T]_\alpha^\beta$  
> 	This is evident in the following examples:

#### Transformations as Matrices
- The [Identity Transformation](Identity%20Transformation.md) $T:V\rightarrow V$, is the $k\times k$ matrix $\begin{bmatrix} 1 \\  & . \\  &   & .\\ &   &   &  1\end{bmatrix}$
- A **Rotation** of the angle $\theta$ for an arbitrary vector $v=(v_{1},v_{2})$can be defined by the equation:  
	$R_\theta(v)=(v_{1}\cos(\theta-v_{2})\sin(\theta),v_{2}\sin(\theta)+v_{2}\cos(\theta))$  
	Thus, $R_\theta(e_{1})=(\cos(\theta),sin(\theta))$ and $R_\theta(e_{2})=(-\sin(\theta),\cos(\theta))$  
	And $[R_{a}]_\alpha^{\alpha}= \begin{bmatrix} cos(\theta) & -sin(\theta) \\ sin(\theta)  & cos(\theta)\end{bmatrix}$  
	Where $\alpha$ is the standard basis in $\mathbb{R}^{2}$
- A **Projection** on a vector $a$ in $\mathbb{R^{2}}$ can be defined by $[P_{a}]_{\alpha}^{\alpha}= \frac{1}{a_{1}^{2}+a_{2}^{2}}\begin{bmatrix} a^{2}_{1} & a_{1}a_{2} \\ a_{1}a_{2} & a^{2}_{2}\end{bmatrix}$  
	Try to solve for this using the equation for [Projection](Projection.md), look back at 2.1

To apply a matrix to a vector, and apply a linear transformation represented by a matrix to a vector, you must perform *matrix vector multiplication*  
	Let $A$ be an $l\times k$ matrix, and let $x$ be a column vector with $k$ entries, then the *product of the vector $x$ by the matrix $A$* is defined as:  
	$\begin{bmatrix} a_{11} & \dots & a_{1k} \\  & \vdots \\ a_{l1} & \dots & a_{1k}\end{bmatrix}\begin{bmatrix} x_{1} \\ \vdots \\x_{k}\end{bmatrix}=\begin{bmatrix} a_{11} x_{1} +...+ a_{1k} x_{k} \\ \vdots \\ a_{i1}x_{1}+...+a_{1k}x_{k}\end{bmatrix}$   
**Properties**
- If the number of columns of the matrix $A$ is not equal to the number of entries in the column vector $x$, matrix multiplication $Ax$ is not defined
- The $i$th row of $Ax$ can be thought of the product of the $i$th row of $A$

####
The [Transpose](Transpose.md) of a [Matrix](Matrix.md) is the matrix with its rows and columns swapped  
	If $A$ is the $m\times n$ matrix with entries $a_{ij}$, then $B=T(A)$ is the $n\times n$ matrix with entries $b_{ji}=a_{ij}$ The rows of $A$ are the columns of $B$, and vice versa

### 2.3 Kernel and Image
84-94

Let $T: V \rightarrow W$ be a [Linear Transformation](Linear%20Transformation.md)

The [Kernel](Kernel.md) of $T$, $Ker(T)$ is the subset of $V$ consisting of all vectors $v\in V$ such that $T(v)=0$ **(2.3.1, 84)**  
	The **Kernel** is a [Subspace](Subspace.md) of $V$  
	Given a matrix for a linear transformation, you can solve for the kernel, by solving for the set of vectors which results in 0  
		This set of vectors will be the kernel

The [Image](Image.md) of $T$, $Im(T)$ is the subset of $W$ consisting of all vectors $w\in W$ where $\exists v\in V$ s.t. $T(v)= w$  
	The **Image** is a [Subspace](Subspace.md) of $W$  
**Properties**
- If $\{v_{1},...v_{m}\}$ is any set that spans $V$, then $\{T(v_{1}),...,T(v_{m})\}$ spans $Im(T)$  
	So the transformed set of the basis also spans the image  
	This set may be linearly dependent though, we may need to take away some vectors for it to be a proper basis
- $dim(Im(T))\leq dim(V)$ 
- Given a matrix representation of a linear transformation, the columns on the linear transformation, where the transformations corresponding echelon form has basic variables, are the bases for the Image

if $V$ is a finite-dimensional vector space and $T:V\rightarrow W$ is a linear transformation, then:  
	$dim(Ker(T))+dim(Im(T))=dim(V)$

> Conceptually, the Kernel is the set of all vectors, that when fed into the transformation $T$, get "squashed" into 0. These represent the dimensions which are *lost* after going through the linear transformation $T$  
> The Image is the resulting set of vectors from $T$. Since the Kernel is the dimensions which are lost from $T$, The Dimension of the Image, has to be $dim(V)-dim(Ker(T))$.  
> This also means, that once we solve for $Ker(T)$, if we can find the subspace of the vectors which are not $Ker(T)$, that is the subspace, that when fed into $T$, produce $Im(T)$

[Matrices](Matrix.md)  
	The maximum number of linearly independent columns of a matrix $A$ is called the [Rank](Rank.md) of $A$  
	The **Rank** of $[T](../MAT223%20Notes/Dimension.md) of the [Image](../MAT223%20Notes/Image.md) of $T$

### 2.4 Applications of the Dimension Theorem
95-105

Let $T: V \rightarrow W$ be a **Linear Transformation**  
A function between sets $S_{1}\rightarrow S_{2}$ is:

[Injective](Injective.md) if whenever $f(p_{1})=f(p_{2})$ for $p_{1},p_{2}\in S_{1}$, $p_{1}=p_{2}$  
	"One to One"  
**Properties
- A [Linear Transformation](Linear%20Transformation.md) is **Injective** if and only if $dim(Ker(T))= 0$  
	This is obvious, if $dim(Ker(T))>0$, there is more than one $p\in S_{1}, f(p)=0$
- A **Linear Transformation** is **Injective** if and only if $dim(Im(T))=dim(V)$  
	A result from the dimension theorem
- If $dim(W)<dim(V)$ and, $T$ is not injective  
	Or, $T$ can only be **Injective** if $dim(W)\geq dim(V)$
- A linear transformation is injective if and only if it is **Surjective**  
	*Only true if $V$ and $W$ are finite dimensional* 

[Surjective](Surjective.md) if for each $q\in S_{2}$, there is some $p\in S_{1}$, with $f(p)=q$  
	"Onto"  
	Or, that the [Image](Image.md) of $T$, is all that of $W$  
**Properties**
- A **Linear Transformation** is **Surjective** if and only if $dim(Im(T))=dim(W)$
- If $dim(V) < dim(W)$, there is no surjective linear mapping $T:V\rightarrow W$  
	Follows from the earlier observation, because $dim(Im(T))\leq dim(V)$

Let $T:V\rightarrow W$ be a linear transformation, $w\in Im(T)$, and $v_{1}$ be any vector where $T(v_{1})=w$  
	Every vector $v_{2}\in T^{-1}(\{w\})$ can be written uniquely as $v_{2}=v_{1}+u$, where $u\in Ker(T)$

>For a proof,  
		If $v_{1}\in T^{-1}(\{w\}), T(v_{1})=w$. if $v_{2}$ is some other element of $T^{-1}(\{w\})$, then $T(v_{2})=w$ as well  
		Then, $T(v_{1})-T(v_{2})=T(v_{1}-v_{2})=0$, and $v_{1}-v_{2}\in Ker(T)$  
		**Proof**: Let $u=v_{2}-v_{1}\in Ker(T)$ , $v_{2}=v_{1}+u$  
>Conceptually, thinking of the Kernels of the "squashed" dimensions, we can retrieve the a vector $v_{1}$, by another vector which maps to the same location (because the transformation squashes the dimension), + an element of the kernel, which returns the squashed dimension 

Following the theorem, There is a unique vector $v\in V$ such that $T(v)=w$ if and only if 
- $w\in Im(T)$ and
- $dim(Ker(T))=0$  
	If $dim(Ker(T))>0$, then there would be a squashed dimension, such that another value would map to $w$

For a [Homogenous](Homogenous.md) system of linear equations,
- The number of free variables is equal to $dim(Ker(T))$
- The number of basic variables is equal to $dim(Im(T))$  
	The number of free variables, is the number of variables which solves the system = 0, so it's the kernel  
	And the number of basic variables are the variables which don't, so it's the image

For an [Inhomogenous](Inhomogenous.md) system of equations $Ax=B$ is only true if $b\in Im(T)$, and any vector satisfying the system (where $x\neq 0$) is a **Particular Solution** to the system of equations

Let $x_{p}$ be a solution to an inhomogenous system $A\vec{x_{p}}= b$. Then, every other solution to $A\vec{x}=b$ is of the from $\vec{x}=\vec{x}_{p}+\vec{x}_h$, where $\vec{x_{h}}$ is a solution for the solution $A\vec{x}= 0$  
Follow up:  
	The system $A\vec{x}=b$ has a unique solution if and only if $b\in Im(T)$, and the only solution to $A\vec{x}=0$ is $\vec{x}=0$

>This theorem says, that every element in the Image, can be represented by a **particular solution**, + an element of the **Kernel**  
	Practically, this means that when calculating what vectors applied to a transformation gives the result $b$, we can get an equation with $b$ = one particular solution + Kernel space  
> If you imagine this geometrically, the kerneal

### 2.5 Composition of Linear Transformations
106-112

Let $U$, $V$ and $W$ be [Vector Spaces](Vector%20Space.md), and let $S:U \rightarrow V$ and $T:V\rightarrow W$ be linear transformations

The [Composition](Composition.md) of $S$ and $T$ is denoted $TS:U\rightarrow W$ and is defined by  
	$TS(v)=T(S(v))$  
	The **composition** of two linear transformations *is* still a linear transformation, and satisfies all requirements to be a linear transformation  
	The composition of two linear *transformations* is the multiplication of the two transformations matrices  
**Properties**
-  $Ker(S) \subset Ker(TS)$
-  $Im(TS) \subset Im(T)$
- $dim(Ker(S))\leq dim(Ker(TS))$
- $dim(Im(TS)) \leq dim(Im(T))$

> Note that the composition only makes sense if the image of $S$ is itself, or is contained in the domain of $T$

>**Theorem(2.5.13, 110)**  
	Let $\alpha, \beta$ and $\gamma$ be bases for $U,V$ and $W$  
	Then $[TS]^{\gamma}_{\alpha}=[T]^{\gamma}_{\beta}[S]^{\beta}_{\alpha}$  
		Or more simply, the matrix of the composition of two linear transformations is the product of the matrices of the transformations

To calculate the matrix of a composition of linear transformations, given their matrices, do [Matrix Multiplication](Matrix.md), and the resulting matrix is the matrix of the composition  
**Matrix Multiplication Properties**
- $(AB)C=A(BC)$
- $A(B+C)=AB+AC$
- $(A+B)C=AC+BC$

### 2.6 Inverse of a Linear Transformation
112-122

Let $T:V\rightarrow W$ be a linear transformation

If $T$ has an [Inverse](Inverse.md) linear transformation $S$, then we say $T$ is [Invertible](Invertible.md), and we denote the inverse of $T$ by $T^{-1}$  
	$T$  has an inverse, if it is [Injective](Injective.md) and [Surjective](Surjective.md)  
	The inverse transformation $S:W\rightarrow V$ is also a linear transformation  
**Properties
- A linear transformation $T$ has an inverse $S$ if and only if $T$ is **injective** and **surjective**
- If $V$ and $W$ are finite-dimensional vector spaces, there is an isomorphism if and only if $dim(V)=dim(W)$
- For any choices of bases $\alpha$ for $V$ and $\beta$ for $W$,  
	$[T^{-1}]_{\beta}^{\alpha}={[T]_\alpha^\beta}^{-1}$ 

If $T:V\rightarrow W$ has an invertible linear transformation, $T$ is called an *[Isomorphism](Isomorphism.md)*, and the vector spaces $V$ and $W$ are *isomorphic vector spaces*

If $V$ and $W$ are finite dimensional vector spaces If two vector spaces have the same dimension, they are isomorphic

>Isomorphisms of vector spaces are a way to describe the way some vector spaces are really "the same", even though the elements may be written in different ways 

Let $[T]_{\alpha}^{\beta}$ be the matrix representation of a linear transformation $T$.  
The [Gauss-Jordan Method](Gauss-Jordan%20Method.md) is a method for producing $[T^{-1}]_{\beta}^{\alpha}$, the matrix representation of the *inverse of the linear transformation* $T$  
	To do the **Gauss-Jordan Method**, start with the augmented matrix  
	$[T|I](Identity%20Matrix.md)  
	Then, perform row operations until the left side is the identity matrix.  
	The resulting matrix on the right will be $[T^{-1}]_{\beta}^{\alpha}$

An $n\times n$ matrix $A$ is called [Invertible](Invertible.md) if there exists an $n\times n$ matrix $A$ is called *invertible* if there exists an $n\times n$ matrix $B$ so that $AB=BA=I$. $B$  is called the *inverse* of $A$ and is denoted by $A^{-1}$

### 2.7 Change of Basis
122 - 131

Let $T:V\rightarrow W$ be a linear transformation between finite-dimensional vector spaces $V$ and $W$

Given two different bases $\beta$ and $\alpha$, we can find the [Change of Base Matrix](Change%20of%20Base%20Matrix.md) $[I]_\beta^\alpha$ from $\beta$ to $\alpha$ by defining the vectors in $\beta$ with the vectors in $\alpha$, and using the results to construct a matrix

> Example of calculating the Change of Base Matrix  
> 	Take $\beta$, with vectors $u_{1}=(1,1), u_{2}=(1,-1)$, and $\alpha$, with vectors $u_{1}'=(1,2), u_{2}'=(-2,1)$  
> 	A vector $v$ can be expressed as $v=x_{1}u_{1}+x_{2}u_{2}$, or $v=x_{1}'u_{1}'+x_{2}'u_{2}'$, we want to be able to determine $(x_{1}',x_{2}')$ given $(x_{1},x_{2})$  
> 	In this case, $u_{1}=\frac{3}{5}u_{1}'-\frac{1}{5}u_{2}'$, and $u_{2}=\frac{-1}{5}u_{1}'-\frac{3}{5}u_{2}'$  
> 	The change of base matrix can be written as  
> 	$\begin{bmatrix} \frac{3}{5} & \frac{-1}{5} \\ \frac{-1}{5} & \frac{-3}{5}\end{bmatrix}\begin{bmatrix} x_{1} \\ x_{2}\end{bmatrix}=\begin{bmatrix} x_{1}' \\ x_{2}'\end{bmatrix}$  
> 	And we can compute the coordinates of any vector $v$ in the basis $\alpha$ by multiplying its coordinates in $\beta$ by the matrix above  
> 	This matrix can be notated as $[I]_\beta^\alpha$ 

The change of base matrix is invertible, and $([I]_{\beta}^\alpha)^{-1}=[I]_{\alpha}^{\beta}$

>Let $I_{V}:V\rightarrow V$ and $I_{W}:W\rightarrow W$ be the respective identity transformations of $V$ and $W$  
Let $\alpha$ and $\alpha'$ be two bases for $V$, and let $\beta$ and $\beta'$ be two bases for $W$  
	Then, $[T]_{\alpha'}^{\beta'}=[I_{W}]_{\beta}^{\beta'}\cdot [T]_{\alpha}^{\beta} \cdot [I_{V}]_{\alpha'}^{\alpha}$

Let $A, B$ be matrices. $A$ and $B$ are [Similar](Similar.md) if there is an invertible matrix $Q$ such that  
	$B=Q^{-1}AQ$

## Chapter 3
### 3.1 The Determinant as Area
^aecd7a  
134-140

> Recall  
> 	if $V$ and $W$ are finite-dimensional vector spaces, then there is an isomorphism $T:V\rightarrow W$ if and only if $dim(V) = dim(W)$

> The question we want to answer, is if there and easy way to check if $T$ is an [Isomorphism](Isomorphism.md)/[Invertible](Invertible.md).  
	We know that if $T$ is invertible, then the dimensions of $V$ and $W$ must be equal, mathematically, this means that the number of [Linearly Independent](../MAT223%20Notes/Linear%20Independence.md) columns of a [Matrix](Matrix.md) $A$ representing $T$ must be the same as the dimensions of $V$  
	The number of linearly independent rows must also be the same as the dimensions of $V$ (idk why)  
		If the rows and columns of $A$ are same as the dimension of $V$ then then vector space that $A$ produces, will have the same dimension as $V$, thus $dim(V)=dim(W)$  
	Thus, if we find a mathematical way to check if that property is true, then we know if $T$ is **Invertible**  
		For a $2\times 2$ matrix, the **area** made by constructing a parallelogram with its vertices being its rows, would be able to check this property  
		If the two rows were **Linearly Dependent**, then both rows would fall on the same line, and the area would be 0, thus if the area is not zero, we can conclude they are **Linearly Independent**, and the transformation is invertible

Let $T:V\rightarrow W$ be a linear transformation, let $A$ be its matrix form

The [Determinant](Determinant.md) of a $2\times 2$ matrix $A$ , is the unique functions of the rows of $A$ which satisfies the properties: **(3.1.5, 128)**
- $det(ba_{1}+ca_{1}', a_{2})=bdet(a_{1},a_{2})+cdet(a_{1}',a_{2})$ for $b,c\in \mathbb{R}$ | Or, also known as **Multilinearity**
- $det(a_{1},a_{2})=-det(a_{2},a_{1})$ | **Alternating**
- $det(e_{1},e_{2})=1$ | **Normalization**

> For an explanation of these properties, go to **3.1.3, Page 137**  
> 	These properties are the properties of any Area function  
> 		Remember, if the area function is 0, the coordinates are linearly dependent  
> 	Any functions which satisfy these properties, is an area function  
> 	The determinant is any possible area function

The formula for the **Determinant** of a $2\times 2$ matrix $A$ is:  
	 $det(A)=a_{11}a_{22}-a_{12}a_{21}$  
**Properties**
- The determinant is not zero if and only if the rows are linearly independent
- The [Linear Transformation](Linear%20Transformation.md) represented by $A$ is an [Isomorphism](Isomorphism.md) if and only if the determinant is nonzero

> This is the equation of the area of a parallelogram constructed with the rows of of matrix


With the formula for the determinant, we can determine a new formula for the [Inverse](Inverse.md) of a $2\times 2$ Matrix $A=\begin{bmatrix} a_{11} & a_{12} \\ a_{21} & a_{22}\end{bmatrix}$  
	$A^{-1}=\frac{1}{det(A)}\begin{bmatrix} a_{22} & -a_{12} \\ -a_{21} & a_{11}\end{bmatrix}$  
The result of this is that is also proves again that the inverse of a $2\times 2$ Matrix only exists, if $det(A)\neq 0$

> This result is achieved by doing the [Gauss-Jordan Method](Gauss-Jordan%20Method.md) on the matrix $A$

A $2\times 2$ matrix $A$ is [Invertible](Invertible.md) if and only if $det(A)\neq 0$  
Then,  
If $T:V\rightarrow V$ is a linear transformation of a two-dimensional [Vector Space](Vector%20Space.md) $V$, $T$ is an [Isomorphism](Isomorphism.md) if and only if $det([T]_{a}^{a})\neq 0$


### 3.2 The Determinant of an $n\times n$ Matrix
140-151

>Last section was about solving the determinant of $2\times 2$ Matrix, for $n\times n$ Matrix, the definition gets more complicated.  
	For a $3\times 3$ Matrix, we can define the determinant as the volume of the *parallelepiped* (3D parallelogram), with its row as the vertices.  
		This approach however gets harder and harder as you increase dimensions  
	Instead, the approach made in this textbook is to generalize the properties of an "area" function (whatever area even means, for higher dimensional spaces), and find other functions which satisfy those properties

As discussed in the last chapter, an "area" function has the properties:  
A function of the rows of a matrix $A$ is called [Multilinear](Multilinear) if:  
	If $f$ is a linear function of each of its rows when the remaining rows are held fixed, that is:  
	$f(a_{1},...,ba_{i}+b'a_{i}',...,a_{n})$  
	$=bf(a_{1},...,a_{i},...,a_{n})+b'f(a_{1},...,a_{i}',...,a_{n})$

A function of the rows of a matrix $A$ is called [Alternating](Alternating) if:  
	Whenever any two rows of $A$ are interchanged, $f$ changes sign:  
	$f(a_{1},...,a_{i},...,a_{j},...,a_{n})=-f(a_{1},...,a_{j},...,a_{i},...,a_{n})$  
**Properties**
- If $f$ is an alternating real-valued functions of the rows of an $n\times n$ matrix, and two rows of the matrix $A$ are identical, then $f(A)=0$.  
	This is a property of the determinant function, and can be verified for a $2\times 2$ matrix. If two rows are identical, then the determinant is 0

Let $A$ be a $n\times n$ matrix, the $ij$th *minor* of $A$, or $A_{ij}$ is the matrix created by deleting the $i$th row and $j$th column of $A$ **(3.2.4,142)**  
	For a $3\times 3$ Matrix for example,  
		$A_{12}=\begin{bmatrix} a_{21} & a_{23} \\ a_{31} & a_{33}\end{bmatrix}$

An alternating multilinear function $f$ for a $3 \times 3$ matrix $A$ is:  
	$f(A)=[a_{11}det(A_{11})-a_{12}det(A_{12})+a_{13}det(A_{13})]f(I)$  
This definition can be expanded for a $n\times n$ matrix, as seen below

> Much of this section is involved in defining multilinearity and being alternating in order to come up with the definition above  
> It attempts to come up with an alternating multilinear function which calculates the determinant for an $n\times n$ matrix, and then verifies that there is only one possible matrix that is *normalized*, or that $f(I)=1$  
> To be completely honest I don't understand these properties completely, just understand the properties of the determinant, and how to calculate it, as seen below:

**More Properties of the Determinant**
- Let $A$ be an $n\times n$ matrix. $A$ is [Invertible](Invertible.md) if and only if $det(A)\neq 0$
- And If $A$ is invertible, then $det(A)\neq 0$

The [Cross Product](Cross%20Product.md) in $R^{3}$ for two vectors $x=(x_{1},x_{2},x_{3}), y=(y_{1},y_{2},y_{3})$ be vectors if $R^{3}$ **(153)**  
	The **Cross Product** of $x$ and $y$ be the vector:  
		$x\times y=(x_{2}y_{3}-y_{2}x_{3},-(x_{1}y_{3}-y_{1}x_{3}),x_{1}y_{2}-y_{1}x_{2})$

Below are several formulas for calculating the determinant:
#### **Laplace Expression**
Recursive formula for solving the determinant  
The **Determinant** of a $3\times 3$ matrix $A$ is:  
	$\begin{bmatrix} a & b & c \\ d & e & f \\ g & h &i\end{bmatrix}=a*det(\begin{bmatrix} e & f \\ h & i\end{bmatrix})-b*det(\begin{bmatrix} d & f \\ g & i\end{bmatrix})+c*det(\begin{bmatrix} d & e \\ g & h\end{bmatrix})$

Or,  
The [Determinant](Determinant.md) of a $n\times n$ matrix $A$ is:  
	$det(A)=\sum\limits_{i=0}^{n}(-1^{i-1})a_{1i}det(A_{1i})$

>To make more clear this definition, an example of the definition of a $4\times 4$ matrix using this expression  
	The **Determinant** of a $4\times 4$ matrix $A$ is:  
		$det(A)=a_{11}det(A_{11})-a_{12}det(A_{12})+a_{13}det(A_{13})-a_{14}det(A_{14})$  
	Remember, this is a recursive formula

#### **Leibniz Formula**
The [Determinant](Determinant.md) of a $3\times 3$ matrix $A$ is:  
	$\begin{bmatrix} a & b & c \\ d & e & f \\ g & h &i\end{bmatrix}=aei+bfg+cdh-ceg-bdi-afh$

> Rule of Sarus  
> ![Pasted image 20240308195525](Pasted%20image%2020240308195525.png)

#### Elimination Algorithm
The Elimination Algorithm is another technique for calculating the determinant.  
	The elimination algorithm works by creating an upper triangular matrix.  
	The determinant will then be the product of the diagonal elements

> Example of using the elimination algorithm  
> 	Calculating the determinant of $\begin{bmatrix} 1 & 2 & 0 & -1 \\ 0 & 2 & 1 & 4 \\ 1 & -1 & -1 & 2 \\ 2 & 1 & 4 & 7\end{bmatrix}$  
> 	$$\begin{aligned} \begin{bmatrix} 1 & 2 & 0 & -1 \\ 0 & 2 & 1 & 4 \\ 1 & -1 & -1 & 2 \\ 2 & 1 & 4 & 7\end{bmatrix} &=\begin{bmatrix} 1 & 2 & 0 & -1 \\ 0 & 2 & 1 & 4 \\ 0 & -3 & -1 & 3 \\ 0 & -3 & 4 & 9\end{bmatrix}\\&=\begin{bmatrix} 1 & 2 & 0 & -1 \\ 0 & 2 & 1 & 4 \\ 0 & 0 & \frac{1}{2} & 9 \\ 0 & 0 & 1(\frac{1}{2}) & 15\end{bmatrix}\\&=\begin{bmatrix} 1 & 2 & 0 & -1 \\ 0 & 2 & 1 & 4 \\ 0 & 0 & \frac{1}{2} & 9 \\ 0 & 0 & 0 & -84\end{bmatrix}\\det(A)&=1\cdot 2\cdot \left(\frac{1}{2}\right)\cdot (-84)=-84\end{aligned}$$

### 3.3 Further Properties of the Determinant
153-159

> More Info about the properties the determinant, important information about the inverse of the matrix

Let $A$ be an invertible $n\times n$ matrix

The [Matrix of Cofactors](Matrix%20of%20Cofactors.md) $A'$ is the matrix whose $ij$th entry is:  
	$(-1)^{i+j}det(A_{ji})$ 

> Note that in this, for $det(A_{ji})$, the $j$ and $i$  are swapped.  
> 	So, if $i$ is the column, and $j$ is the row $A_{ji}$ is removing the $j$th column, and $i$th row  
> For an example, the matrix of cofactors $A=\begin{bmatrix} 1 & 0 & 3 \\ 2 & -1 & 4 \\ 5 & 7 & -2\end{bmatrix}$ is:  
> $\begin{aligned} A' &= \begin{bmatrix} (-1)^{2}(-26) & (-1)^{3}(-21) & (-1)^{4}(3) \\ (-1)^{3}(-24) & (-1)^{4}(-17) & (-1)^{5}(-2)  \\ (-1)^{4}(19) & (-1)^{5}(7) & (-1)^{6}(-1)\end{bmatrix} \\ &= \begin{bmatrix} -26 & 21 & 3 \\ 24 & -17 & 2 \\ 19 & -7 & -1\end{bmatrix}\end{aligned}$ 


We can prove that $AA'=det(A)I$  
	This is true because um... reasons  
This leads to:

If $A$ is an invertible $n\times n$ matrix, then $A^{-1}$ is the matrix whose $ij$th entry is $(-1)^{i+j}\frac{det(A_{ji})}{det(A)}$ **(3.3.2,154)**  
	$A^{-1}A=I$  
And $A^{-1}=\frac{1}{det(A)}A'$

>This is so far the **second** method of calculating the inverse of a matrix  
>	Note that this formula is efficient only for small $n\leq 4$. In general, it is more efficient to use the [Gauss-Jordan Method](Gauss-Jordan%20Method.md)

**Properties of the Determinant**  
If $A$ and $B$ are $n\times n$ matrices, then
- $det(AB)=det(A)det(B)$
- If $A$ is invertible, then $det(A^{-1})=\frac{1}{det(A)}$

The [Determinant](Determinant.md) of a [Linear Transformation](Linear%20Transformation.md)$T:V\rightarrow V$ of a finite-dimensional [Vector Space](Vector%20Space.md) is the determinant of $[T]$(the matrix of $T$ with any base $a$) **(3.3.9 157)**  
	We denote this by $det(T)$  
**Properties**  
For any bases $\alpha$ and $\beta$:  
	$det([T]_{\alpha}^{\alpha})=det([T]_{\beta}^{\beta})$  
Let $S:V\rightarrow V$ and $T:V\rightarrow V$ be linear transformations of a finite-dimensional vector space, then:
- $det(ST)=det(S)det(T)$
- If $T$ is an [Isomorphism](Isomorphism.md), $det(T^{-1})=det(T)^{-1}$

[Cramer's Rule](Cramer's%20Rule.md) says that: $x=A^{-1}b=\frac{1}{det(A)}A'b$  
	  Or, a solution $x$ to the system of equations $Ax=b$ can be found the vector whose $j$th entry is the quotient $\frac{det(B_{j})}{det(A)}$  
	Where $B_{j}$ is the matrix obtained from $A$  by replacing the $j$th column of $A$ by the vector $b$ 

> Note, this is not a practical method for solving systems of equations for large $n$  
> Example Usage for Cramer's Rule  
> 	Solving for $\begin{bmatrix} 2 & 1 \\ -1 & 3\end{bmatrix}x=\begin{bmatrix} 0 \\ 1\end{bmatrix}$  
> 		$x_{1}=\frac{det \begin{bmatrix} 0 & 1 \\ 1 & 3\end{bmatrix}}{det \begin{bmatrix} 2 & 1 \\ -1 & 3\end{bmatrix}}$, and $x_{2}=\frac{det \begin{bmatrix} 2 & 0  \\ -1 & 1\end{bmatrix}}{det \begin{bmatrix} 2 & 1 \\ -1 & 3\end{bmatrix}}$  
> Also, honestly i have no idea where this came from, this came from nowhere

## Chapter 4 Eigenvalues, Eigenvectors, Diagonalization, Spectral Theorem
> Our goal in this chapter is to understand the geometry of a linear mapping in more detail
### 4.1 Eigenvalues and Eigenvectors
Page 162

Let $T:V\rightarrow V$ be a linear mapping: 

A vector $x\in V$ is called an [Eigenvector](Eigenvector.md) of $T$ if $x\neq 0$, and there exists a scalar $\lambda \in \mathbb{R}$ such that $T(x)=\lambda x$ **(4.1.2, 164)**  
	An **Eigenvector** is a vector in the [Image](Image.md) of $T$, where it is just the original vector $x$, scaled by a factor $\lambda$ 

If $x$ is an **Eigenvector** of $T$ and $T(x)=\lambda x$, the scalar $\lambda$ is called the [Eigenvalue](Eigenvalue) of $T$ corresponding to $x$ **(4.1.2, 164)**  
	An **Eigenvalue** is a scalar for which there exists a corresponding **Eigenvector**  
	If an **Eigenvalue** appears multiple times, it is called a $m$(the number of times it appeared)-fold root  
		For example, matrix with characteristic polynomial $det(A-\lambda I)=(2-\lambda)^{2}(1-\lambda)$  
			$\lambda=1$ appears once, so it is a **simple root**, or **one-fold root**  
			$\lambda=2$ appears twice, so it is a **two-fold root**  
			This property is also called the [Multiplicity](Multiplicity) 

If $x$ is an **Eigenvector** of a linear mapping $T:V\rightarrow V$ with **Eigenvalue** $\lambda$, where $T(x)= \lambda x$:  
 		Then $(T-\lambda I)(x)=0$  
	If $x\in  Ker(T-\lambda I)$ and $x\neq 0$, then $x$ is an eigenvector of $T$ with eigenvalue $\lambda$
	
> Eigenvectors and Eigenvalues represent vectors which are only stretched under a linear transformation  
>The definition above comes from the fact that when we are looking for a value which is only stretched, we want to solve for $\text{first row}=\lambda x_{1}, \text{second row}=\lambda x_{2},...$  
>This leads to looking for $[T]=\lambda I$, which gives us the formula we use to calculate eigenvalues and eigenvectors

The [Eigenspace](Eigenspace) of $T$, denoted $E_{\lambda}$ is the set: $E_{\lambda}=\{x\in V|T(x)=\lambda x\}$  
	$E_\lambda$ is the set containing all the **eigenvectors** of $T$ with eigenvalue $\lambda$, together with the vector $\vec 0$. (If $\lambda$ is not an eigenvalue of $T$, then we have $E_{\lambda}=\{0\}$)  
**Properties**  
	$E_{\lambda}$ is a subspace of $V$ for all $\lambda$

With all the definitions we've set up so far, we can define the **Characteristic Polynomial** as:  
The [Characteristic Polynomial](Characteristic%20Polynomial) is $det(A-\lambda I)$  
	For a general $2\times 2$ matrix $A=\begin{bmatrix} a & b \\ c & d\end{bmatrix}$, the **Characteristic Polynomial** is:  
		$det \begin{bmatrix} a-\lambda & b  \\ c & d-\lambda\end{bmatrix}=\lambda^{2}-(a+d)\lambda+(ad-bc)$  
	For a general $3\times 3$ matrix $A=\begin{bmatrix} a & b & c \\ d & e & f \\ g & h & i\end{bmatrix}$,  the **Characteristic Polynomial** is:  
		$det(A)=-\lambda^{3}+(a+3+i)\lambda^{2}-((ae-bd)+(ai+cg)+(ei_fh))\lambda$  
**Properties**
- [Similar](Similar.md) Matrices have equal characteristic polynomials  
	$det(B-\lambda I)=det(Q^{-1}A-\lambda I)=det(A-\lambda I)$

> If $x\in Ker(T-\lambda I)$, and $x\neq 0$, then $x$ is an eigenvector of $T$ with eigenvalue $\lambda$, then if we can find solutions to $Ker(T-\lambda I)$, that will give us eigenvectors of $T$  
	For values of $\lambda$, when the [Determinant](Determinant.md) is 0, we know there is a solution to the system, thus, values of $\lambda$ where the **Characteristic Polynomial** is 0, are valid eigenvalues


Let $A\in M_{n\times n}(\mathbb{R})$, then $A$ has no more than $n$ distinct eigenvalues  
In addition, if $\lambda_{1},...,\lambda k$ are the distinct eigenvalues of $A$ and $\lambda_{i}$ is an $m_{i}$-fold root of the **characteristic polynomial**, then $m_{1}+...+m_{k}\leq n$ 

> The multiplicities of the eigenvalues, add up to $n$

An [Inner Product](Dot%20Product.md) on $V$ is any mapping $\langle , \rangle:V\times V\rightarrow \mathbb{R}$ with the following three properties:
- For all vectors $x,y,z\in V$ and all $c\in \mathbb{R}$, $\langle cx+y,z\rangle = c\langle x,z\rangle+\langle y,z\rangle$
- For all $x,y\in V, \langle x,y\rangle = \langle y,x\rangle$
- For all $x\in V,\langle x,x\rangle \geq 0$, and $\langle x,x\rangle = 0$ only if $x=0$

### 4.2 Diagonalizability
175-183

> Take a transformation with a dimension of 2, which has 2 eigenvalues and eigenvectors.  
> 	Because the vector space has a dimension of 2, and there are 2 eigenvalues, we can get a good idea of what happens to that vector space after the transformation.  
> 	We know that its on a 2D plane, and since there are 2 eigenvectors, there are two axis, where the transformation is just scaled  
> 	That means that that transformation, essentially "pulls" or "squashes" on those two axis for the transformation  
> 		Check page 165, Figure 4.2 of "A Course in Linear Algebra" for a visual explanation of this  
> 	So, if a vector space has an as many eigenvectors as dimensions, its getting scaled on every axis somehow  
>This is essentially what being diagonalizable means, A transformation, $T:V\rightarrow V$ with as many eigenvectors as the dimension of its vector space, which are linearly independent.  
>	If this property is true, we'd be able to create a basis for $V$ with those eigenvectors  
>	And it would create a diagonal matrix when applied to $T$

Let $V$ be a finite-dimensional [Vector Space](Vector%20Space.md), and let $T:V\rightarrow V$ be a linear mapping. **(4.2.1, 176)**  
	$T$ is [Diagonalizable](Diagonalizable) if there exists a [Basis](Base.md) of $V$, all whose vectors are eigenvectors of $T$  
**Properties**
- $T:V\rightarrow V$ is diagonalizable if and only if, for any basis $\alpha$ of $V$, the matrix $[T]_{\alpha}^{\alpha}$ is similar to a diagonal matrix  
	This is essentially the definition of diagonalizability, that $T$ has a [Similar](Similar.md) diagonal matrix
- Let $\lambda_{1},...\lambda_{k}$ be distinct **Eigenvalues** for a linear transformation $T:V\rightarrow V$. Let $m_{i}$ be the [Multiplicity](Multiplicity) of $\lambda_{i}$.  
	$T$ is [Diagonalizable](Diagonalizable) if and only if:  
	$m_{1}+...+m_{k}=n=dim(V)$  
	For each $i$, $dim(E_{\lambda_{i}}) =m_{i}$

>Reworded, says:  
	If $T$ has $n=dim(V)$ distinct real eigenvalues  
	If the sum of the multiplicities of the real eigenvalues is $n=dim(V)$ and either:  
		$\sum\limits_{i=1}^{k}dim(E_{\lambda_{i}})=n$, or  
		$\sum\limits_{i=1}^{k}(n-dim(Im(T-\lambda,I)))=n$  
>This property basically just says that there has to be as many eigenvectors, as the dimension of the vector space that $T$ is apart of  
>	It says that 	$T$ is diagonalizable if and only if:
>	1. The multiplicities of all the eigenvalues add up to the dimension
>	2. And the dimension of the eigenspace for each eigenvalue is the same as its multiplicity

>**Why the Definition of Diagonalizability?**  
>The reason for this terminology is more clear when you look at what $T$ will end up looking like.  
>If the basis for $T$ is its eigenvalues, then the matrix would be diagonal, because each row in the matrix, would just need to scale its respective basis vector  
	Let $A=[T]_{\alpha}^{\alpha}$  
	If $\beta=\{x_{1},...x_{n}\}$, for each $x, T(x_{i})=\lambda_{i}x_{i}$ for some **eigenvalue** $\lambda_{i}$. Hence, $[T]^{\beta}_{\beta}$ is a diagonal matrix with diagonal entries $\lambda_{i}$:  
		$[T]_{\beta}^{\beta}=\begin{bmatrix} \lambda_{1} & &0 \\ & \ddots  &   \\ 0 &   & \lambda_{n}\end{bmatrix}=D$  
		If $P$ is the change of basis matrix from $\beta$ to $\alpha$, then $P^{-1}AP=D$  
This means that for a transformation to be **diagonalizable**, it must have as many valid eigenvectors to form a basis, and be relevant to the transformation such that it can create a diagonalizable matrix  
	The definition for diagonalizable doesn't necessary hinge on the fact of creating a diagonalizable matrix, but its that the property that we're looking for causes a diagonalizable matrix?

**Properties of Eigenvectors & Eigenvalues**
- Let $x_{i} (1\leq i \leq k)$ be **eigenvectors** of a linear mapping $T:V\rightarrow V$ corresponding to distinct eigenvalues $\lambda_{i}$.  
	Then $\{x_{1},...x_{k}\}$ is a [Linearly Independent](Linear%20Independence.md) subset of $V$  
	Or, that any set of **eigenvectors** is **Linearly Independent**
- Let $\lambda$ be an **eigenvalue** of $T$, assume that $\lambda$ is an $m$-fold root of the characteristic polynomial of $T$. Then we have $1\leq dim(E_{\lambda}) \leq m$  
	Or, that the the dimension of the **eigenspace** for a **eigenvalue** will be between 1, and the **[Multiplicity](Multiplicity)** of the eigenvalue

> So, in total, a **Diagonalizable** transformation, is one which has as many eigenvectors as its dimension, such that its very well represented by its eigenvectors.  
> 	Diagonalizability, is just our way of conveying these properties

### 4.3 Geometry in $R^{3}$

The **Standard Inner Product**, or the [Dot Product](Dot%20Product.md) on $\mathbb{R}^{n}$ is the function:  
	$<x,y>:\mathbb{R}^{n}\times \mathbb{R}^{n}\rightarrow \mathbb{R}$ defined by $<x,y>=x_{1}y_{1}+...+x_{n}y_{n}$  
**Properties**
- For all $x,y,z \in \mathbb{R}^{n}$, and all  $c\in  \mathbb{R}$, $<cx+y,z> \ =c<x,z>+<y,z>$  or, the **Dot Product** is a **Linear Mapping**
- For all $x,y\in R^{n}, \langle x,y\rangle = \langle y,z \rangle$
- For all $x\in \mathbb{R}^{n}, \langle x,x\rangle \geq 0$
	- $\langle x,x\rangle=0$ if and only if $x=0$

The **Length** (or *norm*) of $x\in \mathbb{R}^{n}$ is $||x|| = \sqrt{\langle x,x,\rangle}$

A vector $x$ is a **Unit Vector** if $||X||=1$ 

The **Triangle Inequality** says that  
	 For all vectors $x,y \in \mathbb{R}^{n}, ||x+y||\leq ||x||+||y||$

 > Geometrically, this translates to being that in a triangle, the length of any side is less than or equal to the sum of the lengths of the other two sides
 
The  **Cauchy-Schwarz Inequality** says that  
	 For all vectors $x,y\in \mathbb{R}^{n}, |\langle x,y \rangle | \leq ||x||\cdot ||y|$

The **Angle** $\theta$ between two nonzero vectors $x,y\in \mathbb{R}^{n}$ between two vectors is:  
	$\theta=cos^{-1}\frac{\langle x,y\rangle}{||x||\cdot ||y||}$

Two vectors are [Orthogonal](Orthogonal.md), or  **Perpendicular** if $\langle x,y \rangle = 0$  
	A set of vectors are **Orthogonal**, if for every pair of vectors $x,y\in S$ with $x\neq y$, $\langle x,y, \rangle = 0$  
**Properties**  
	If $x,y \in \mathbb{R}^{n}$ are orthogonal, nonzero vectors, then $\{x,y\}$ is [Linearly Independent](Linear%20Independence.md) 

A set of vectors $S\subset \mathbb{R}^{n}$ is [Orthonormal](Orthonormal.md) if $S$ is orthogonal and, in addition, every vector in $S$ is a [Unit Vector](Unit%20Vector.md)

### 4.4 Orthogonal Projections and the Gram-Schmidt Process
Page 190

Let $W\subset \mathbb{R}^{n}$ be any subspace  
The [Orthogonal Complement](Orthogonal.md) of $W$, $W^{\perp}$ , is the set: **(4.4.1, 190)**  
	$W^{\perp}=\{v\in \mathbb{R}^{n}|v\cdot w=0\text{ for all }w\in W \}$  
	Or, $W^{\perp}$ is the set of all vectors **perpendicular**, or [Orthogonal](Orthogonal.md), to $W$  
**Properties**
- For every subspace $W$ of $\mathbb{R}^{n}, W^{\perp}$ is also a subspace of $\mathbb{R}^{n}$
- We have $dim(W)+dim(W^{\perp})=dim(\mathbb{R}^{n})=n$
- For all subspaces $W$ of $\mathbb{R}^{n}$, $W\cap W^{\perp}=\{0\}$
- If $W=Span\{w_{1},...,w_{k}\}, W^{\perp}=Ker(\begin{bmatrix} w_{1} \\ w_{2} \\ \vdots \\ w_{k}\end{bmatrix})$  
	Where $W^{\perp}$ is the kernel of the matrix, where the rows, are the bases of $W$  
	This makes sense, the result of $W^{\perp}=Ker(\begin{bmatrix} w_{1} \\ w_{2} \\ \vdots \\ w_{k}\end{bmatrix})$ is all the vectors, where the dot product with each of the bases in $W$ is 0
- $dim(W^{\perp})=dim(Ker(\begin{bmatrix} w_{1} \\ w_{2} \\ \vdots \\ w_{k}\end{bmatrix}))$
- Given a subspace $W$ of $\mathbb{R}^{n}$ every vector $x\in \mathbb{R}^{n}$ can be written uniquely as $x=x_{1}+x_{2}$, where $x_{1} \in W$ and $x_{2}\in W^{\perp}$. 
	- This makes sense, the vector will start at a point in $W$, and extend in a direction towards $W^{\perp}$ 
	- This is basically $x_{perp}$ and $x_{parallel}$ 

> The Orthogonal Complement of a set of vectors is just the set of all other vectors, orthogonal to each of the vectors in the set

**Orthogonal Projection** is another way of defining the transformation of a [Projection](Projection.md), using the last property listed above  
Since every vector $x$ can be written as $x=x_{1}+x_{2}$, where $x_{1}\in W, x_{2}\in W^{\perp}$ , we can define:  
	$P_{W}:\mathbb{R}^{n}\rightarrow \mathbb{R}^{n} = P_{W}(x)=x_{1}$  
**Properties**
- $P_W$ is a linear mapping
- $Im(P_{W})=W$, and if $w\in  W, P_{W}(w)=w$
- $Ker(P_{W})=W^\perp$

> Or, the projection onto a line $W$, is a just vectors $W_{parallel}$ component  
> We can get the mapping $P_{W}$, by writing a vector explicitly as the sum of a vector in $W$, and one in $W^{\perp}$  
> Most of the properties are also self explanatory 

>Solving for a projection with this strategy  
>	![Pasted image 20240418125049](Pasted%20image%2020240418125049.png)

Let $\{ w_{1},...w_{k}\}$ be an [Orthonormal](Orthonormal.md) basis for the subspace $W\subset \mathbb{R}^{n}$
- For each $w\in W$, $w=\sum\limits_{i=1}^{k} \frac{\langle w,w_{i}\rangle}{||w_{i}||^{2}} w_{i}$
- For all $x\in \mathbb{R}^{n}$,  $P_{W}(x)=\sum\limits_{i=1}\frac{\langle x, w_{i} \rangle}{||w_{i}||^{2}} w_{i}$

> For both cases, the real meaning is that we can use the inner product (dot product) to compute the scalars needed to express the relevant vector in $W$

> An example of how to calculate projection matrix with orthonormal bases, using the second property above  
> 	Given $W=Span\{\begin{bmatrix} 1 \\ 1 \\ 0\end{bmatrix}\}$, and $x=\begin{bmatrix} x_{1} \\ x_{2} \\ x_{3}\end{bmatrix}$  
> 	By proposition given above,  
> 	$\begin{aligned} P_{W}(x)&=\sum\limits_{i=1}\langle x, w_{i}\rangle w_{i}\\&=(\begin{bmatrix} x_{1} \\ x_{2} \\ x_{3}\end{bmatrix}\cdot\begin{bmatrix} 1 \\ 1 \\ 0\end{bmatrix})\begin{bmatrix} 1 \\ 1 \\ 0\end{bmatrix}\\ &=(x_{1}+x_{2})\begin{bmatrix} 1 \\ 1  \\ 0\end{bmatrix}\end{aligned}$  
> 	Which results in the matrix $\begin{bmatrix} 1  & 1 & 0\\ 1 & 1 & 0 \\0 & 0 & 0 \end{bmatrix}$

Let $W$ be a subspace of $\mathbb{R}^{n}$. Then there exists an [Orthonormal](Orthonormal.md) [Basis](Base.md) of $W$

> From the above observations, it seems clear that orthonormal bases are good to work with  
> They make finding projections, and things related to the dot product, very easy to solve  
> There always exists an orthonormal basis for every subspace  
> Here is a strategy for producing an **Orthonormal Basis**:

The [Gram-Schmidt Orthogonalization Process](Gram-Schmidt%20Process) is:  
Given a basis $\{u_{1},..u_{k}\}$ that aren't necessarily orthogonal, find a basis $\{v_{1},...,v_{k}\}$ that covers same subspace and is orthogonal  
Our strategy is to produce the vectors $v_{i}$ one at a time
- Start with $v_{1}=u_1$, set $W_{1}=Span(\{v_{1}\})$  
	Produce $v_{2}$ with $v_{2}=u_{2}-P_{W_{1}}(u_{2})$  
	This by definition, will be orthogonal to $v_{1}$
- Define $W_{2}=Span(\{v_{1},v_{2}\})$, Produce $v_{3}$ with $v_{3}=u_{3}-P_{W_{2}}(u_{3})$,  
	This by definition will be orthogonal to $v_{1}$ and $v_{2}$ 
- Continue this process for each $u_{i}$, set $W_{i}=Span(\{v_{1},...,v_{i}\})$, and define $v_{i+1}=u_{i+1}-P_{W_{i}}(u_{i+1})$
- To make sure every vector produced is a unit vector, divide each $v_{i}$ by its norm(absolute value) during the process

For a more formal definition.  
	We know $P_{W_{i}}(v)=\sum\limits\frac{\langle v_{i},v\rangle}{\langle v_{i},v_{i}\rangle}v_{i}$  
	Given bases for a subspace $\{u_{1},..u_{k}\}$, an orthogonal basis $\{v_{1},...,v_{k}\}$ will have the values  
	$\begin{aligned} v_{1}&=u_{1}\\v_{2}&=u_{2}-limits\frac{\langle v_{1},u_{2}\rangle}{\langle v_{1},v_{1}\rangle}v_{1}\\\vdots\\v_{i+1}&=u_{i+1}-\sum\limits\frac{\langle v_{i},u_{i+1}\rangle}{\langle v_{i},v_{i}\rangle}v_{i}\end{aligned}$


> This process can be performed on any basis for any subspace, hence there is an orthonormal basis for every subspace
### 4.5 Symmetric Matrices
> 4.2 was talking about diagonalizability, this section introduces a class of matrices, all of which are diagonalizable

Not a property of being symmetric, but is a property of the [Dot Product](Dot%20Product.md)  
	For all $x,y\in \mathbb{R}^{n}, \langle Ax,y\rangle = \langle x, A^{t}y\rangle$

A square matrix $a$ IS [Symmetric](Symmetric) if $A=A^{t}$, the [Transpose](Transpose.md) of $A$  
**Properties**
- $A$ is symmetric if and only if $a_{ij}=a_{ji}$ for all pairs $i,j$ 
- $A$ is symmetric if and only if $\langle Ax,y\rangle = \langle x,Ay\rangle$ for all vectors $x,y\in \mathbb{R}^{n}$
- Let $T:V\rightarrow V$ be any linear mapping, let $\alpha=\{x_{1},...,x_{k}\}$ be any orthonormal basis of $V$ .  
	$[T]_{\alpha}^{\alpha}$ is a symmetric matrix if and only if $\langle T(x),y\rangle = \langle x,T(y)\rangle$ for all vectors  
When finding eigenvalues and eigenvectors
- All roots of the [Characteristic Polynomial](Characteristic%20Polynomial) are real
	- That means for a matrix $A\in M_{n\times n}(\mathbb{R})$, the characteristic polynomial has $n$ roots in $\mathbb{R}$ (counted with multiplicities)
- Eigenvectors corresponding to distinct eigenvalues are orthogonal
	- Let $A\in M_{n\times n}(\mathbb{R})$ be a symmetric matrix, let $x_{1}$ be an eigenvector of $A$ with eigenvalue $\lambda_{1}$. Let $x_{2}$ be eigenvector of $A$ with eigenvalue $\lambda_{2}$, where $\lambda_{1}\neq \lambda_{2}$  
			Then $x_{1}$ and $x_{2}$ are orthogonal vectors in $\mathbb{R}^{n}$

> An example of a symmetric $3\times 3$ matrix is $A=\begin{bmatrix} 4 & 1 & -7 \\ 1 & 0 & 2 \\ -7 & 2 & 3\end{bmatrix}$

> The reason that symmetric matrices are important, and that we are examining them, is that they arise frequently in many branches of mathematics

A [Linear Transformation](Linear%20Transformation.md) $T:V\rightarrow V$ is **Symmetric** if $\langle T(x),y\rangle=\langle x,T(y)\rangle$ for all vectors $x,y\in V$  
	Projections are symmetric transformations

> This section is unrelated, but the textbook delves a little bit into this

Orthogonal Projections are [Diagonalizable](Diagonalizable). We can prove this by choosing an orthonormal basis for the projection, and extending it to the entire vector space  
	This also means that the eigenvalues of any projection are $\lambda=0,1$. This makes 

### 4.6 The Spectral Theorem
> This section puts everything together to prove the spectral theorem  
> That is, that every symmetric linear mapping is diagonalizable, and can be decomposed into a linear combination of orthogonal projections

> The name "Spectral Theorem" relates to the eigenvalues of a linear mapping, sometimes referred to as the *spectrum* of the mapping  
> Physicists noticed a similarity between the discrete spectral lines of atoms, and the pattern of distributions of eigenvalues of some linear mappings  
> And some guy called it the spectral theorem I guess

A Matrix $A$ is called [Orthogonal](Orthogonal.md) if $A^{t}A=I$, in other words, $A^{t}=A^{-1}$
- This is true if the columns of $A$ are orthonormal bases

**The [Spectral Theorem](Spectral%20Theorem)**  
Let $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{n}$ be a [Symmetric](Symmetric) linear mapping. Then there is an [Orthonormal](Orthonormal.md) basis of $\mathbb{R}^n$ consisting of eigenvectors of $T$.  
And, that every Symmetric Transformation $T$ is diagonalizable.

[Diagonalizable](Diagonalizable) Transformation can be *decomposed*, into different matrices, in their diagonalized form. 

> Example  
> 	Take a diagonalizable matrix $T:\mathbb{R}^{3}\rightarrow \mathbb{R}^{3}$ , If $T$ has 2 eigenvalues, and 3 eigenvectors, than it can be diagonalized with a basis made up of its eigenvectors as: $[T]_{\alpha}^{\alpha}=\begin{bmatrix} \lambda_{1} & 0 & 0 \\ 0 & \lambda_{2} & 0 \\ 0 & 0 & \lambda_{2}\end{bmatrix}$  
> 	This can be decomposed into $[T]_{\alpha}^{\alpha}=\lambda_{1}\cdot \begin{bmatrix} 1 & 0 & 0  \\ 0 & 0 & 0 \\ 0 & 0 & 0\end{bmatrix}+\lambda_{2}\cdot \begin{bmatrix} 0 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1\end{bmatrix}$  
> 	Each of these matrices, are essentially a projection onto one of the eigenvectors of $T$, so we can write any diagonalizable matrix as $[T]_{\alpha}^{\alpha}=\lambda_{1}[P_{1}]_{\alpha}^{\alpha}+...+\lambda_{k}[P_{k}]_{\alpha}^{\alpha}$

Thus, the [Spectral Decomposition](Spectral%20Decomposition) of a symmetric matrix $T$ is $T=\lambda_{1}P_{1}+...+\lambda_{k}P_{k}$

Let $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{n}$ be a symmetric linear mapping, and let $\lambda_{1},...,\lambda_{k}$ be the distinct eigenvalues of $T$. Let $P_{i}$ be the orthogonal projection of $\mathbb{R}^{n}$ onto the eigenspace $E_{\lambda_{1}}$, Then
- $T=\lambda_{1}P_{1}+...+\lambda_{k}P_{k}$
- $I=P_{1}+...+P_{k}$

## Chapter 5 Complex Numbers and Complex Vector Spaces
### 5.1 Complex Numbers
#### Definition of Complex Numbers
> Remember from high school, A complex number is one where its square root is negative.  
> That is our goal here, define a system where a numbers square root can be negative

The set of [Complex Numbers](Complex%20Numbers.md), $\mathbb{C}$  is a set of *ordered pairs of real numbers* $(a,b)$ with the following operations of addition and multiplication. 
- For all $(a,b)$ and $(c,d)$, their **sum** is the **complex number** $(a,b)+(c,d)=(a+c,b+d)$
- The **Product** of $(a,b)$ and $(c,d)$ is the the **Complex Number** $(ac-bd,ac+cb)$

The set of [Real Numbers](Real%20Numbers.md) $\mathbb{R}$, is the set of [Complex Numbers](Complex%20Numbers.md), where the second value is $0$.  
	So, $a\in \mathbb{R}$ is $(a,0)\in \mathbb{C}$  
		We can see that:  
		Addition:  
			$(a,0)+(c,0)=(a+c,0), = a+c$  
		Multiplication:  
			$(a,0)(c,0)=(ac-0\cdot 0,a\cdot 0+c\cdot 0)=(ac,0)=a\cdot c$  
		Thus, the **real number definition** with **complex numbers** works.

> The complex number $i$ or $\sqrt{-1}$ is $(0,1)$  
> 	Verifying:  
> 		We know $i^{2}=-1, (\sqrt{-1})=i$  
> 		$(0,1)(0,1)=(0\cdot 0 - 1\cdot 1, 0\cdot 1 + 0\cdot 1)=(-1,0)$  
> 		We know that $(-1,0)$ corresponds to the real number $-1$, thus $i=(0,1)$  
> The set of complex numbers we defined, works for what we are looking for, it defines a system where a numbers square root can be negative  
> It also includes the set of real numbers as a subset, so is an extension onto the real number system

**Formally Defining**  
$z$ is a **Complex Number**, where $z=(a,b)\in \mathbb{C}$, which can also be written as $z=a+bi\in \mathbb{C}$  
	The real part of $z, Re(z)$ is the real number $a$  
	The *imaginary part* of $z, Im(z)$ is the real number $b$  
	$z$ is a real number if $Im(z)=0$, and *purely imaginary* if $Re(z)=0$  
In this form, addition and multiplication of complex numbers become
- $(a+bi)+(c+di)=(a+c)+(b+d)i$
- $(a+bi)(c+di)=(ac-bd)+(ad+bc)i$

The [Conjugate](Conjugate.md) of a complex number, notated $\overline z$ of a complex number $z=a+bi$, is $\overline z=a-bi$

> For a complex number $z=a+bi$, $(a+bi)^{-1}=\frac{(a-ib)}{(a^{2}+b^{2})}$  
> Also, for $z=a+bi, x=c+di$, $\frac{z}{x}=\frac{(ac-bd)+(ac+bd)i}{c^{2}+d^{2}}$

A [Field](Field.md) is a set $F$ with two operations, defined on ordered pairs of elements of $F$, called addition and multiplication  
These two operations must satisfy the following properties for all $x,z$ and $z\in F$
- usual properties, commutativity, associativity

> A field is sort of a definition of a vector space, but allowing for the elements being mathematical objects which aren't just real numbers

A field $F$ is called **Algebraically Closed** if:  
	Every polynomial $p(z)=a_{n}z^{n}+...+a_{1}z+a_{0}$ with $a_{1}\in F$ and $a_{n}\neq 0$ has $n$ roots counted with multiplicity in $F$
- $C$ is algebraically closed, and $C$ is the smallest algebraically closed field containing $\mathbb{R}$ 

> Real numbers are a Field, and Complex Number are also a Field  
> It should be obvious why the algebraically closed property makes sense

#### Absolute Value & Polar Coordinate Representation
The **Absolute Value** of a real number $a\in \mathbb{R}$, notated $|a|$ , is $(\sqrt{a^{2}})$. This definition is obvious to us, its the magnitude of the real number regardless of its sign

The **Absolute Value** of a [Complex Numbers](Complex%20Numbers.md) $(a,b)\in \mathbb{C}$, or $a+bi\in \mathbb{C}$, notated $|a+bi|$, is:  
	$\sqrt{a^{2}+b^{2}}$  
	This absolute value, can be imagined as the **length** of the **Complex Number**  
		(Remember, complex numbers are an *ordered pair of real numbers*, so conceptually like a 2D vector? With a point in 2D space?)

>If we imagine complex numbers as a 2D vector, then we can imagine *real numbers* as just the x-axis of that 2D Space

The **Polar Coordinate** representation of a **Complex Number** $z$ is:  
	$z=|z|(\cos(\theta)+i\sin(\theta))$  
	Where $z=a+bi$  
		Here, $\theta$ is the *angle* from the *x-axis* of the 2D conceptualization of the complex number

> The absolute value of a real number $|x|$ has two possible values, $-x, x$ The absolute value of a complex number however is much more complicated  
> If $x$ is a complex number, then $|x|=\sqrt{a^{2}+b^{2}}=c$, and $a^{2}+b^{2}=c^{2}$. That is, $|x|$ defines a circle, of radius $c$, and the actual value of $x$ lies on the circle

For the **Polar Coordinate** definition, we can define:  
	General  
	$z^{2}=|z|^{2}(\cos(2\theta)+i\sin(2\theta))$  
	$z^{-1}=|z|^{-1}(\cos(-\theta)+i\sin(-\theta))$  
	$z^{n}=|z|^{n}(\cos(n \theta)+i\sin(n \theta))$  
	For i  
	$\begin{aligned}i&=1(\cos(\frac{\pi}{2})+i\sin(\frac{\pi}{2}))\\&=i \end{aligned}$  
	$\begin{aligned}\sqrt{i}&=1\left(\cos\left(\frac{\pi}{4}\right)+i\sin(\frac{\pi}{2})\right)\\ &=\frac{\pm\sqrt{2}}{2}(1+i) \end{aligned}$  
	$\sqrt[3]{i}=\frac{\pm\sqrt{3}+i}{2}, (-i)$  

 **De Moivre's Formula**:  
	 if $n$ is an integer,  
		$z^{n}=r^{n}(\cos(n \theta)+i\sin(n \theta))$

> Verify these by checking what the product two complex numbers represented by polar coordinates,  
> Calculate $z_{1}z_{2}, z_{i}=r_{i}\cos(\theta_{i})+i\cdot \sin(\theta_{i}),$

### 5.2 Vector Spaces over a Field
> This section attempts to extend the results of the first four chapters, by generalizing vector spaces to fields, which can have different values (like complex numbers or real numbers), instead of being based directly on the real numbers  
> This section mostly sets up how our concept of vector spaces, can be extended to all general fields (and by extension, complex numbers). It then delves into several examples of concepts covered in past chapters, but with complex numbers instead  
[Class Notes from 5.2-5.3](Note%20Mar%2021,%202024.pdf)

A [Vector Space](Vector%20Space.md) over a [Field](Field.md) is a set $V$ (whose elements) are called [Vectors](Vector.md) together with the operations
- Vector Addition  
	For each pair of vectors $x,y\in V$, produces a vector denoted $x+y\in V$
- Multiplication by a Scalar (A field element)  
	For each vector $x\in V$, and each scalar $c\in F$ produces a vector denoted $cx\in V$

The two operations must satisfy the axioms of [Vector Addition and Multiplication](Vector%20Space.md)

> Our previous definitions, only depended on this definition, and don't depend on the choice of the field. Thus, all of our results can be restated, replacing any reference to real numbers and real vector spaces by a field $F$, and a vector space over that field


### 5.3 Geometry in a Complex Vector Space
> Geometry in complex numbers operate differently, in particular, the dot product (inner product) is different then from real numbers

A [Hermitian Inner Product](Hermitian%20Inner%20Product.md) on a [Complex Vector Space](Complex%20Numbers.md) $V$ is a *complex valued function* on pairs of vectors in $V$, denoted by $\langle u,v\rangle \in C$ for $u,v\in  V$, which satisfies the properties:
- For all $u,v$ and $w\in V$ and $a,b\in C, \langle au+bv,w\rangle =a\langle u,w\rangle +b\langle v,w \rangle$
- For all $u,v\in V,\langle u,v\rangle=\overline{\langle v,u\rangle}$ ([Conjugate](Conjugate.md))  
	Because of this $\langle v,v\rangle=\overline{\langle v,v\rangle}$, which implies that $\langle v,v\rangle\in \mathbb{R}$ S  
	This ensures that the length of a vector is a non-negative real number  
	**Sesquilinearity**  
	This also means that the inner product is [Conjugate](Conjugate.md) linear in the second variable rather than linear  
	$\langle u,av\rangle=\overline{\langle av,u\rangle}=\overline{a\langle v,u\rangle}=\overline{a}\overline{\langle v,u\rangle}=\overline a \langle u,v\rangle$  
	This property is sometimes called **Sesquilinearity**
- For all $v\in V,\langle v,v\rangle \geq 0$ and $\langle v,v\rangle = 0$ implies $v=0$

A standard **Hermitian Inner Product** on $C^{n}$ is:  
	Tor $x=\{x_{1},...,x_{n}\}, y=\{y_{1},...,y_{n}\}$  
	Their inner product is $\langle x,y\rangle = x_{1}\overline y_{1}+...+x_{n}\overline y_{n}$ 

A complex vector space with a Hermitian Inner Product is a **Hermitian Inner Product Space**

> Mostly because of the second property, Hermitian inner products are both similar to a real inner product, and different from a real inner product, in that it is not linear in both variables

The *[Norm](Norm.md)* or *length* of a vector $v\in V$ is $||v||=\langle v,v\rangle^{\frac{1}{2}}$  
A set of nonzero vectors $v_{1},...,v_{k}\in V$ is called [Orthogonal](Orthogonal.md) if $\langle v_{i},v_{j}\rangle = 0$ for $i\neq j$.  
If in addition $\langle v_{i}, v_{i}\rangle = 1$, for  all $i$, the vectors are called [Orthonormal](Orthonormal.md)

> The [Gram-Schmidt Process](Gram-Schmidt%20Process) depends only on the properties of an inner product, so it still applies for the Hermitian Inner Product

> Note that $||av||=\langle av,av\rangle^{\frac{1}{2}}=(a\overline a^{\frac{1}{2}})\cdot\langle v,v\rangle^{\frac{1}{2}}=|a|\cdot ||v||$  
> For a complex number, there are an infinite number of choices for a unit vector $w=av$, because the set of complex numbers of length one is a circle in $C$, not just $\{+1,-1\}$  
> Thus, if $\{w_{1},...,w_{k}\}$ is an orthonormal set in a Hermitian inner product space, there is an infinite number of orthonormal sets equal to it

If $\alpha=\{v_{1},...v_{n}\}$ is an orthonormal basis for the Hermitian product space $V$ and $T:V\rightarrow V$ is a linear transformation, then the $ij$th entry of $[T]_{\alpha}^{\alpha}$ is $\langle T(v_{j}),v_{i}\rangle$

> The next section covers the definition of symmetric, and constructing the complex transpose, as a reminder:  
> Let $T:\mathbb{R}^{n}\rightarrow \mathbb{R}^{n}$ be a linear transformation  
> The [Transpose](Transpose.md) of $T$ is the linear transformation $T^{t}$ that satisfies $\langle T(x),y\rangle=\langle x, T^{t}(y)\rangle$ for all $x$ and $y\in \mathbb{R^{n}}$  
> To construct the complex transpose $T^{*}$, we want to construct it so that it satisfies $\langle T(v),w\rangle=\langle v,T^{*}(w)\rangle$ for all $v,w\in V$

The **Complex Transpose** of a transformation $T:V\rightarrow V$, denoted $T^{*}$ is a transformation such that:  
	$\langle T(v),w\rangle=\langle v,T^{*}(w)\rangle$  
	Or that $\langle T^{*}(v_{j}),v_{i}\rangle= \overline{\langle v_{i},T^{*}(v_{j})\rangle}=\overline{\langle T(v_{i}),v_{j}\rangle}$  

Let $V$ be a finite dimensional Hermitian Inner Product Space, and let $\alpha$ be an orthonormal basis for $V$.  
The [Adjoint](Adjoint) of the linear transformation $T:V\rightarrow V$ is the linear transformation $T^{*}$ whose matrix with respect to the orthonormal basis $\alpha$ is the matrix $([\overline T]_{\alpha}^{\alpha})^{t}$  
	That is, $[T^{*}]_{\alpha}^{\alpha}=([\overline T]_{\alpha}^{\alpha})^{t}$

The **Adjoint** of $T:V\rightarrow V$ satisfies $\langle T(v),w\rangle=\langle v,T^{*}(w)\rangle$ for all $v,w\in V$

A linear transformation is [Hermitian](Hermitian), or **Self Adjoint** if $\langle T(u),v\rangle = \langle u,T(v)\rangle$ for all $u,v\in V$  
A linear transformation is also Hermitian if:
- $T=T^{*}$
- ${[\overline T]_{\alpha}^{\alpha}}^{t}=[T]_{\alpha}^{\alpha}$  
An $n\times n$ complex matrix is called **Hermitian/Self Adjoint** if $A=A^{*}$  
**Properties**
- If $\lambda$ is an eigenvalue of the self-adjoint linear transformation $T$, then $\lambda\in \mathbb{R}$  
	The eigenvalues of a self-adjoint linear transformation are all real
- If $u$ and $v$ are eigenvectors, respectively, for the distinct eigenvalues $\lambda$ and $\mu$, $u$ and $v$ are orthogonal, $\langle u ,v \rangle = 0$ 
- For any self-adjoint linear transformation, there is an orthonormal basis of $V$ consisting of eigenvectors for $T$, and $T$ is [Diagonalizable](Diagonalizable)
- Let $\lambda_{1},...,\lambda_{k}\in \mathbb{R}$ be the distinct eigenvalues of $T$, and let $P_{i}$ be the orthogonal projections of $v$ onto the eigenspaces $E_{\lambda_{i}}$
	- $T=\lambda_{1}P+1 +...+\lambda_{k}P_{k}$
	- $I=P_{1}+...+P_{k}$

> All the results from chapter 4 can be extended to self-adjoint/Hermitian matrices and transformations  
> These ideas are pretty clear, they're just new forms of being symmetric, but for complex number spaces  
> Most of the ideas here are the same as from Chapter 4

> The [Spectral Theorem](Spectral%20Theorem) as we have stated here depends strongly on the assumption that the dimension of $V$ is finite.  
> If $V$ if allowed to be infinite-dimensional, we must place additional conditions on the Hermitian Inner Product, called completeness and separability

# Chapter 6 Jordan Canonical Form
> In many ways the simplest form the matrix of a linear mapping can take is a diagonal form, and diagonalizable mappings are correspondingly easy to understand and work with. However not every linear mapping is diagonalizable  
> Our main goal in this chapter is to develop a canonical form for all linear mappings, a "next best form" after a diagonal form for the matrices of linear mappings that are not diagonalizable

### 6.1 Triangular Form

Let $T:V\rightarrow V$ be a linear mapping

A [Subspace](Subspace.md) $W\subset V$ is [Invariant (Or Stable)](Or%20Stable))) under $T$ if $T(W)\subset W$

> Invariant means that, the subspace is "contained" under $T$, Any vector from $W$ is still in $W$ after being transformed

**Examples**
- $\{0\}$ and $V$ are invariant under all linear mapping $T:V\rightarrow V$
- $Ker(T), Im(T)$ are invariant subspaces as well
- If $\lambda$ is an eigenvalue of $T$, then the eigenspace $E_{\lambda}$ is invariant under $T$ as well  
	Obviously true, because $v\in E_{\lambda}, T(v)=\lambda v\in E_{\lambda}$
- The projection $T=P_{W}$. $W$ and $W^\perp$ are invariant under $P_{W}$

Let $T:V\rightarrow V$ be a linear mapping, let $\beta=\{x_{1},...,x_{n}\}$ be a basis for $V$.  
$[T]_{\beta}^{\beta}$ is upper-triangular if and only if each of the subspaces $W_{i}=Span(\{x_{1},...,x_{i}\})$ is invariant under $T$

> The meaning for this is a bit weird, but here goes.  
> An upper triangular [Matrix](Matrix.md) looks like this: $\begin{bmatrix} 1 & 1 & 1  & 1 \\ 0 & 1 & 1 & 1 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1\end{bmatrix}$  
> The first value of the base $a_{1}$, will obviously be invariant, because $T(a_{1})=a_{1}$  
> If we create $W_{2}$, which is the span of the first, and second bases, that will be invariant too.  
> 	Look at the matrix, the second column only has 2 rows filled up, which means $T(a_{1}+a_{2})=a_{1}+a_{2}$  
> This remains true for each column (and each base) because since the matrix is **Upper Triangular**, each column only has rows up to its column number (First column only has first row filled out, second column has second and first filled out)  
> Note that $\{0\}\subset W_{1}\subset W_{2}\subset ...\subset W_{n}=V$  
> The $W_{i}$ form an *increasing sequence* of subspaces

A linear mapping $T:V\rightarrow V$ is [Triangularizable](Triangularizable) if there exists a basis $\beta$ such that $[T]_{\beta}^{\beta}$ is upper-triangular  
	To show that $T$ is triangularizable, we can prove the property we established above 

Let $W\in V$ be an invariant subspace [Characteristic Polynomial](Characteristic%20Polynomial) of $T|_{W}$ divides the characteristic polynomial of $T$  
	This means that every eigenvalues of $T|_{W}$ is also an eigenvalue of $T$, or the set of eigenvalues of $T|_{W}$ is some *subset* of the eigenvalues of $T$ on the whole space

>This property is true because the determinant of an upper triangular matrix, is just the product of the diagonal entries (because the bottom left corner will be 0)  
>	If we divide the matrix into blocks $[T]_{\beta}^{\beta}=\begin{bmatrix} A & B \\ 0 & C\end{bmatrix}$  (which it is because its upper triangular), the determinant will be $det(T-\lambda I)=det(A-\lambda I)det(C-\lambda I)$  
>	And If $W$ is an invariant subspace, then it will be one of the blocks

A linear transformation $T$ is [Triangularizable](Triangularizable) if and only if the characteristic polynomial equation of $T$ has $dim(V)$ roots (counted with multiplicities) in the field $F$

>There is a big proof involved for this, involving the property with the characteristic polynomial above.  
> This hypothesis is satisfied automatically if $F=C$, because the characteristic polynomial will always have roots, in the complex number system  
> 	So essentially any transformation matrix is triangularizable in complex number space


If $T:V\rightarrow V$ is **triangularizable**, with eigenvalues $\lambda_{i}$ with respective multiplicities $m_{i}$, then there exists a basis $\beta$ for $V$ such that $[T]_{\beta}^{\beta}$ is upper-triangular, and the diagonal entries of $[T]_{\beta}^{\beta}$ are $m_{1}\lambda_{1}$'s followed by $m_{2}\lambda_{2}$'s, and so on

The **Cayley-Hamilton** Theorem, states that if we define a polynomial $p(t)=det(T-t(I))$ (as its characteristic polynomial), then $p(T)=0$

We can reorder the Cayley-Hamilton Theorem to produce a new way to solve for the inverse of a matrix  
If the characteristic polynomial of $A$ is $det(A-tI)=(-1)^{n}t^{n}+...+a_{1}t+det(T)$  
By Cayley-Hamilton,  
$\begin{aligned} p(T)=(-1)^{n}A^{n}+...+a_{1}A+det(A)I&=0 \\ (\frac{-1}{det(A)})((-1)^{n}A^{n-1}+...+a_{1}I&=A^{-1}\end{aligned}$  
And the inverse of $A$ may be computed by performing matrix products and sums

> This method is far less efficient than the Gauss-Jordan procedure, don't use it  
> TBH I don't really know if this section is useful at all...

### 6.2 A Canonical Form for Nilpotent Mappings
> This section continues our goal to find a canonical form for any general linear mapping  
> We look at *Nilpotent Mappings*, ones with only one distinct eigenvalue $\lambda=0$, with multiplicity $n=dim(V)$

A matrix $A\in M_{n\times n}$ is said to be [Nilpotent](Nilpotent.md) if $A^{k}=0$ for some integer $k\geq 1$ 

>An example of a nilpotent matrix, is $N=\begin{bmatrix} -1 & 1 \\ -1 & 1\end{bmatrix}$

A mapping has one eigenvalue $\lambda=0$, with multiplicity $n$ if and only if $N$ is [Nilpotent](Nilpotent.md)

> So, if a mapping is nilpotent, and has a nilpotent matrix, then it has only one eigenvalue, 0  
> Proof  
>	Let $N(v)=\lambda v$ (because eigenvector)  
>	Then $N^{k}(v)=\lambda^{k}v$, if $N$ is nilpotent, $\exists k s.t. N^{k}=0$  
>	$N^{k}(v)=0\implies\lambda^{k}v=0\implies\lambda^{k}=0$ 

> Lets say that $k$, is the smallest integer, where a mapping $N^{k}=0$. That means that if $N^{k}(v)=0$, but $N^{k-1}(v)\neq0$ for some $v\in V$  
> If you're wondering how $N^{k-1}(v)\neq 0$, when all the eigenvalues are $0$ and $N^{k}(v)=0$, remember that while all the eigenvalues may be zero, it doesn't necessarily mean that the transformation is just getting squashed to 0  
> 	The transformation may have a multiplicity of $n=dim(V)$ but that doesn't really mean anything geometrically  
> 	It just means that the transformation may not really have any eigenvalues, and may be squashing down some dimensions to 0

We can find, that $N^{k-1}(x)$ is an eigenvector of $N$ with eigenvalue $\lambda=0$

