# Chapters
## Chapter 1
### 1.1
A [[Vector]] is a directed line segment or "arrow", with one point distinguished  as the "head", and the other distinguished as the "tail"
	Two operations which can be done on vectors are **vector addition**, and **vector multiplication**
	These operations give rise to various [[Vector#^a7e263|properties]] of vectors

A [[Vector Space]] $\mathbb{V}$ is a [[Set]], whose elements are called vectors, and satisfies the requirements: **(1.1.1, 7)**
	The set has the operations of vector addition and vector multiplication
	The set follows a set of [[Vector#^a7e263|axioms]] (The properties of vector addition and multiplication)
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
	$P_{n}(\mathbb{R})$ is the set of all polynomials, with a *degree no larger than $n$*, where:
		$P_{n}(R)=\{p:\mathbb{R}\rightarrow \mathbb{R}|p(x)=a_{n}x^{n}+a_{n-1}x^{n-1}+...+a_{0} \text{ where }a_{i}\in \mathbb{R}\}$
		Operations (Addition and Multiplication)
			For two polynomials $p(x), q(x)$, $(p+q)(x)=p(x)+q(x)=(a_{n}+b_{n})x^{n}+...+(a_{0}+b_{0})\in P_{n}(\mathbb{R})$
			for $c\in \mathbb{R}$, $cp(x)=ca_{n}x^{n}+...+ca_{0}\in P_{n}(\mathbb{R})$
	$C(\mathbb{R})$ is the set of all continuous [[Function|Functions]]

### 1.2
Let $V$ be a *vector space*

A [[Subspace]] is a subset of a [[Vector Space]], which is also a vector space itself **(1.2.6, 15)**
	One can check if a subset is a subspace by verifying the axioms of vector spaces
	Also can just check that the following apply:
		$\vec{u}+\vec{v}\in V$(also called being *closed with respect to vector addition*, and
		$k\vec{u}\in V$(also called being *closed with respect to scalar multiplication*)
		$\vec 0 \in V$ 
	Geometrically, a subspace is a [[Span]] which passes through zero , and goes on infinitely
		Line passing through zero in 3D space, Plane passing through zero in 3D space

You can also check if a subset is a subspace with the following theorem
	Let $V$ be a vector space, $W$ be nonempty subset of $V$
	$W$ is a [[Subspace]] of $V$ if and only if: 
		$\forall x,y \in W, \forall c \in \mathbb{R}, cx+y \in W$ 
	This *merges* both definitions into one

> We define a subspace as a separate thing, because it is a subset of a **Vector Space**, which holds all the properties of a vector space
> A Vector Space is a more general definition, which can include many things

The intersection of any collection of *subspaces* of $V$ is a subspace of $V$
	Think of the intersection between two planes passing through zero in the 3D space
	They would produce a line passing through zero in 3D space (also a subspace)

### 1.3
Let $S$ be *subset* of a *vector space* $V$

A [[Linear Combination]] of **Vectors** in $S$ is any sum $a_{1}x_{1}+...+a_{n}x_{n}$, where $a_{i}\in \mathbb{R}, x_{i}\in S$ **(1.3.1, 22)**
	For two vectors $x,y$ a linear combination of them is any vector:
		$a_{1}(x)+a_{2}(y)$

The [[Span]] of a set of **Vectors** $S$, or $Span(S)$ is the set of all possible **Linear Combinations** of vectors in $S$ **(1.3.1, 22)**
	If $S=\phi$ (empty set), $Span(S)=\{0\}$
	If a set $W$ = $Span(S)$, we say $S$ **spans**, (or generates) $W$

>**Theorem (1.3.4, 23)** - Spans and subspaces
	Let $S$ be any subset of $V$, $Span(S)$ is a subspace of $V$
	The span of anything in a vector space $V$ will result in a subspace

The [[Sum]] of two [[Subspace|Subspaces]] $W_{1}, W_{2}$ is the set $W_{1}+W_{2}=\{x\in V \  | \ x = x_{1}, \text{ for some }x_{1}\in W_{2} \}$ **(1.3.4, 23)**
	$W_{1}+W_{2}$ can be thought of as the set of vectors that can be "built up" from the vectors in $W_1 +W_2$ by linear combinations
		The **Sum** of two subspaces can be thought of as the Span of the two subspaces? 
	If $W_{1}=Span(S_{1})$, and $W_{2}=Span(S_{2})$, $W_{1}+W_{2}=Span(S_{1}\cup S_{2})$
	Let $W \supseteq W_{1}\cup W_{2}$ , then $W\supseteq W_{1}+W_{2}$

Let $W_{1}, W_{2}$ be subspaces of vector space $V$, $W_{1}+W_{2}$ is also a subspace of $V$
	On the other hand, $W_{1}\cup W_{2}$ is generally *not* a subspace of $V$, other than specific situations


### 1.4
Let $S$ be *subset* of a *vector space* $V$

A set $S$ has a [[Linear Dependence]] if for the vectors of $S$: **(1.4.2, 28)**
	$a_{1}x_{1}+...a_{n}x_{n}=0$ , where $a_i \in \mathbb{R}$ are not all zero

A set $S$ is [[Linear Dependence|Linearly Dependent]] if there exists a linear dependence 
	A superset of a linearly dependent set will also be linearly dependent

A set $S$ is [[Linear Independence|Linearly Independent]] if for the vectors of $S$: **(1.4.4, 29)**
	$a_{1}x_{1}+...a_{n}x_{n}\neq 0$, or only equals zero when all $a_{i}\in  \mathbb{R}$ are zero
	A subset of a linearly independent set will also be linearly independent

### 1.5 Solving Systems of Linear Equations
32->46

A [[System of Linear Equations]] is a system of $m$ equations with $n$ unknowns $x_{1},...x_{n}$, in the form:
$$\begin{aligned} a_{11}x_{1}+...+a_{1n}x_{n}&=b_{1}\\a_{21}x_{1}+...+a_{2n}x_{n}&=b_{2}\\\vdots \ \ \ \ \ \  \ \ \ \ \ \ \ \  \ \\a_{m1}x_{1}+...+a_{mn}x_{n}&=b_{m}\end{aligned} $$

- A system is [[Homogenous]], if all $b_{i}=0$, and [[Inhomogenous]] otherwise
- Two **Systems of Linear Equations** are **Equivalent** if their sets of solutions are the same
A system obtained by 
- Adding any multiple of any one equation to any second equation, is an equivalent system
- Multiplying any one equation by a nonzero scalar and leaving the others unchanged is an equivalent system
- Interchanging any two equations is an equivalent system
- These are the [[Elementary Operations]] of systems of linear equations, they can be conducted while keeping the system equivalent

A [[System of Linear Equations]] is in [[Matrix#^99f2f5|Echelon Form]] if: 
- For each equation, all coefficients are 0, or the first nonzero coefficient is a 1
- For each row with a coefficient at column i, every other row has a coefficient of 0 at that column
- For each two columns on a row, the column to the left has a larger coefficient than the column to the right
	The variables in the leading terms of the equations are the **basic variables**
	All other variables are **free variables**
	For a [[Vector Space]] $W$ defined by a System of Linear Equations, the [[Dimension]] of $W$ is the number of free variables in echelon form

>**Theorem (1.5.6, 38)**
	Every system of linear equations has an **Echelon Form**

### 1.6 Bases and Dimension
47-60

A subset $S$ of a vector space $V$ is a [[Base]], or **Basis** of $V$ if: **(1.6.1, 47)**
	$V=Span(S)$
	$S$ is linearly independent
**Properties**
- If a vector space $V$ has a linearly independent subset $S$, then there exists a basis $S'$ of $V$,  where $S\subset S'$
	Or, you can make a basis out of any linearly independent subset/every linearly independent set may be *extended to a basis*
- $S$ is a basis of $V$ if and only if every vector $x\in V$ can be written *uniquely* as a linear combination of the vectors in $S$
- Not all **Vector Spaces** can have a finite base, take the set of all polynomials for examples, since it includes polynomials up to $x^\infty$, then it cannot be finite

>**Theorem (1.6.10, 52)** 
	Let $S$ be a spanning set of $V$ with $m$ elements, then there is no linearly independent set in $V$ with less than $m$ elements
	Or, if you find a set that can span $V$, then any set with a larger amount of elements will be included in $Span(S)$
	Thus, you can only have a linearly independent set with with $\leq m$ elements

The [[Dimension]] of a finite-dimensional vector space $V$ is the number of vectors in any [[Base]] of $V$ **(1.6.12, 53)**
	The subspace $W$ of a vector space $V$ has $dim(W) \leq dim(V)$
	$dim(W) = dim(V)$ only if $W=V$
	For a [[Vector Space]] $W$ defined by a System of Linear Equations, the [[Dimension]] of $W$ is the number of free variables in echelon form
**Properties**
- For a vector space defined by a system of [[Homogenous]] linear equations, its dimension is equal to the number of free variables in its echelon form

>**Theorem (1.6.18, 55)**
	$dim(W_{1}+W_{2})=dim(W_{1})+dim(W_{2})-dim(W_{1}\cap W_{2})$
	The **dimension** of two vector spaces added together, is the total number of unique dimensions in the sum

## Chapter 2
### 2.1 Linear Transformations
63-72

#### Linear Transformations
A function $T:V\rightarrow W$ is a [[Linear Transformations|Linear Transformation]] if: **(2.1.1, 64)**
-  $T(u+v)=T(u)+T(v), \forall u,v \in V$, and
-  $T(av)=aT(v), \forall a\in \mathbb{R}, v\in V$
	A **Linear Transformation** is one which *preserves the algebraic structure of [[Vector Space|Vector Spaces]]*
	$V$ is the [[Domain]] of $T$, and $W$ is the [[Target]] of $T$
**Properties**
- A linear transformation always takes $0$ to $0$ 
- Linear Transformations can convert **Vector Spaces** from one base to another

Following this,
	A function $T:V\rightarrow W$ is a linear transformation if $\forall a,b\in \mathbb{R}, \forall u,v \in V$:
		$T(au+bv)=aT(u)+bT(v)$
	A function $T:V\rightarrow W$ is a linear transformation if $\forall a_{1},...,a_{k}\in \mathbb{R}, \forall v_{1},...v_{k} \in V$:
		$T(\sum\limits_{i=1}^{k}a_{i}v_{i})=\sum\limits_{i=1}^{k}a_{i}T(v_{i})$

The [[Image]] of a **Linear Transformation** is the *result* of the linear transformation

Transformations
- The [[Identity Transformation]] is one where $\forall v, T(v)=v$
- The **Zero Transformation** is one where $\forall v, T(v)=v$
- [[Projection|Projections]] are linear transformations
- The process of differentiation and definite integration can be viewed as linear mappings

#### Dot Product
The [[Dot Product]], or **Inner Product** has two definitions, both of which are equivalent:
Geometric Definition
	$\vec{v}\cdot \vec{w} = || \vec{v}|| \ ||\vec{w}||cos\theta$
Algebraic Definition
	$\vec{v}\cdot \vec{w}=v_{1}w_{1}+v_{2}w_{2}+v_{3}w_{3}$ 

#### Projections
The [[Projection]] $P_{w}(v)=w$ of a vector $v$ on a line $W$ is point where, if you create a perpendicular line from the head of $v$, to $W$, $w$ is the point on $W$ where the line intersects 
The **Projection** can be calculated by: $P_{w}(v)=\frac{\langle w,b\rangle}{\langle w,w \rangle}w=\frac{w_{1}v_{1}+w_{2}v_{2}}{w^{2}_{1}+w_{2}^{2}}(w_{1},w_{2})=\frac{1}{w_{1}^{2}+w_{2}^{2}}(w_{1}^{2}v_{1}+w_{1}w_{2}v_{2},w_{1}w_{2}v_{1}+w^{2}_{2}v_{2})$ 

Properties
- The with this definition of a perpendicular line, the **Dot Product** of the vector $\langle W, (V-w)\rangle=0$
	The dot product of the vector being projected on, and the vector being projected-the projection is 0

### 2.2 Linear Transformations between Finite Dimensional Vector Spaces
73-83

#### Matrices and Linear Transformations
[[Linear Transformations]] can be uniquely determined by a system of linear equations for each value of its [[Base]]

A [[Matrix]] is a rectangular array of numbers. **(2.2.5, 75)**
	A **Matrix** can be used to represent a system of linear equations
		With this representations, columns represent variables, and rows represent an equation
Properties
- If the number of columns of a matrix $A$ is not equal to the number of rows in the vector $x$, matrix multiplication $Ax$ is not defined
- Let A be $l\times k$ matrix, and $u$ and $v$ be column vectors with $k$ entries. For every pair of real number $a$ and $b$ $$A(au+bv)=aAu+bAv$$
Linear transformations can be determined by a system of linear equations 
Thus, they can be defined by a [[Matrix]], representing that system of linear equations

Let $T:V\rightarrow W$ be a **Linear Transformation** between the finite dimensional vectors $V$ and $W$, and let $\alpha=\{v_{1},...,v_{k}\}$ and $\beta=\{w_{1},...,w_{l}\}$, respectively, be any bases for $V$ and $W$. 
Let $a_{ij},1\leq i \leq l$ and $1\leq j \leq k$ be the $l\cdot k$ scalars that determine $T$ with respect to the bases $\alpha$ and $\beta$. The matrix whose entries are the scalars $a_{ij}, 1\leq i \leq l, 1\leq j \leq k$ is called the **Matrix of the Linear Transformation $T$** with respect to the bases $\alpha$ for $V$and $\beta$ for $W$
	This matrix is denoted by $[T]_\alpha^\beta$ 
	When a transformation is wrapped with square brackets $[T]$, it is the **Matrix Representation** of that linear transformation
**Properties**
- The assignment of a matrix to a transformation is [[Injective]] and [[Surjective]]
- The assignment of a matrix to a transformation depends on the choice of bases, if the bases are different, the matrix representation will be different


> Each row of a matrix of a linear transformation determines what the $i$th value of the resulting vector will be
> And if $T(v_{i})=a_{11}w_{1}+...+a_{1j}w_{l}$, then the coefficients expressing $T(v_{i})$ in terms of $w_{1},...w_{j}$ form the $j$th column of $[T]_\alpha^\beta$ 
> 	This is evident in the following examples:

#### Transformations as Matrices
- The [[Identity Transformation]] $T:V\rightarrow V$, is the $k\times k$ matrix $\begin{bmatrix} 1 \\  & . \\  &   & .\\ &   &   &  1\end{bmatrix}$
- A **Rotation** of the angle $\theta$ for an arbitrary vector $v=(v_{1},v_{2})$can be defined by the equation:
	$R_\theta(v)=(v_{1}\cos(\theta-v_{2})\sin(\theta),v_{2}\sin(\theta)+v_{2}\cos(\theta))$
	Thus, $R_\theta(e_{1})=(\cos(\theta),sin(\theta))$ and $R_\theta(e_{2})=(-\sin(\theta),\cos(\theta))$
	And $[R_{a}]_\alpha^{\alpha}= \begin{bmatrix} cos(\theta) & -sin(\theta) \\ sin(\theta)  & cos(\theta)\end{bmatrix}$
	Where $\alpha$ is the standard basis in $\mathbb{R}^{2}$
- A **Projection** on a vector $a$ in $\mathbb{R^{2}}$ can be defined by $[P_{a}]_{\alpha}^{\alpha}= ||a||^{-2}\begin{bmatrix} a^{2}_{1} & a_{1}a_{2} \\ a_{1}a_{2} & a^{2}_{2}\end{bmatrix}$ 
	Try to solve for this using the equation for [[Projection]], look back at 2.1

To apply a matrix to a vector, and apply a linear transformation represented by a matrix to a vector, you must perform *matrix vector multiplication*
	Let $A$ be an $l\times k$ matrix, and let $x$ be a column vector with $k$ entries, then the *product of the vector $x$ by the matrix $A$* is defined as:
	$\begin{bmatrix} a_{11} & \dots & a_{1k} \\  & \vdots \\ a_{l1} & \dots & a_{1k}\end{bmatrix}\begin{bmatrix} x_{1} \\ \vdots \\x_{k}\end{bmatrix}=\begin{bmatrix} a_{11} x_{1} +...+ a_{1k} x_{k} \\ \vdots \\ a_{i1}x_{1}+...+a_{1k}x_{k}\end{bmatrix}$   
**Properties**
- If the number of columns of the matrix $A$ is not equal to the number of entries in the column vector $x$, matrix multiplication $Ax$ is not defined
- The $i$th row of $Ax$ can be thought of the product of the $i$th row of $A$

### 2.3 Kernel and Image
84-94

Let $T: V \rightarrow W$ be a [[Linear Transformations|Linear Transformation]]

The [[Kernel]] of $T$, $Ker(T)$ is the subset of $V$ consisting of all vectors $v\in V$ such that $T(v)=0$ **(2.3.1, 84)**
	The **Kernel** is a [[Subspace]] of $V$
	Given a matrix for a linear transformation, you can solve for the kernel, by solving for the set of vectors which results in 0
		This set of vectors will be the kernel

The [[Image]] of $T$, $Im(T)$ is the subset of $W$ consisting of all vectors $w\in W$ where $\exists v\in V$ s.t. $T(v)= w$
	The **Image** is a [[Subspace]] of $W$
**Properties**
- If $\{v_{1},...v_{m}\}$ is any set that spans $V$, then $\{T(v_{1}),...,T(v_{m})\}$ spans $Im(T)$
- $dim(Im(T))\leq dim(V)$ 

[[Matrix|Matrices]]
	The maximum number of linearly independent columns of a matrix $A$ is called the [[Rank]] of $A$
	The **Rank** of $[T]_{\alpha}^{\beta}$ is the [[Dimension]] of the [[Image]] of $T$

>**Theorem (2.3.17, 91)** The Dimension Theorem
	if $V$ is a finite-dimensional vector space and $T:V\rightarrow W$ is a linear transformation, then:
		$dim(Ker(T))+dim(Im(T))=dim(V)$

Conceptually, the Kernel is the set of all vectors, that when fed into the transformation $T$, get squashed into 0. These represent the dimensions which are *lost* after going through the linear transformation $T$
The Image is the resulting set of vectors from $T$. Since the Kernel is the dimensions which are lost from $T$, The Dimension of the Image, has to be $dim(V)-dim(Ker(T))$.
This also means, that once we solve for $Ker(T)$, if we can find the subspace of the vectors which are not $Ker(T)$, that is the subspace, that when fed into $T$, produce $Im(T)$

### 2.4 Applications of the Dimension Theorem
95-105

Let $T: V \rightarrow W$ be a **Linear Transformation**
A function between sets $S_{1}\rightarrow S_{2}$ is:

[[Injective]] if whenever $f(p_{1})=f(p_{2})$ for $p_{1},p_{2}\in S_{1}$, $p_{1}=p_{2}$
	"One to One"
**Properties
- A [[Linear Transformations|Linear Transformation]] is **Injective** if and only if $dim(Ker(T))= 0$
	This is obvious, if $dim(Ker(T))>0$, there is more than one $p\in S_{1}, f(p)=0$
- A **Linear Transformation** is **Injective** if and only if $dim(Im(T))=dim(V)$
	A result from the dimension theorem
- If $dim(W)<dim(V)$ and, $T$ is not injective 
	Or, $T$ can only be **Injective** if $dim(W)\geq dim(V)$
- A linear transformation is injective if and only if it is **Surjective**
	*Only true if $V$ and $W$ are finite dimensional* 

[[Surjective]] if for each $q\in S_{2}$, there is some $p\in S_{1}$, with $f(p)=q$
	"Onto"
	Or, that the [[Image]] of $T$, is all that of $W$
**Properties**
- A **Linear Transformation** is **Surjective** if and only if $dim(Im(T))=dim(W)$
- If $dim(V) < dim(W)$, there is no surjective linear mapping $T:V\rightarrow W$ 
	Follows from the earlier observation, because $dim(Im(T))\leq dim(V)$

>**Theorem (2.4.11, 98)**
	Let $T:V\rightarrow W$ be a linear transformation, $w\in Im(T)$, and $v_{1}$ be any vector where $T(v_{1})=w$
	Every vector $v_{2}\in T^{-1}(\{w\})$ can be written uniquely as $v_{2}=v_{1}+u$, where $u\in Ker(T)$
	For a proof,
		If $v_{1}\in T^{-1}(\{w\}), T(v_{1})=w$. if $v_{2}$ is some other element of $T^{-1}(\{w\})$, then $T(v_{2})=w$ as well
		Then, $T(v_{1})-T(v_{2})=T(v_{1}-v_{2})=0$, and $v_{1}-v_{2}\in Ker(T)$
		**Proof**: Let $u=v_{2}-v_{1}\in Ker(T)$ , $v_{2}=v_{1}+u$ 
	Conceptually, thinking of the Kernels of the "squashed" dimensions, we can retrieve the a vector $v_{1}$, by another vector which maps to the same location (because the transformation squashes the dimension), + an element of the kernel, which returns the squashed dimension 

Following the theorem, There is a unique vector $v\in V$ such that $T(v)=w$ if and only if 
- $w\in Im(T)$ and
- $dim(Ker(T))=0$
	If $dim(Ker(T))>0$, then there would be a squashed dimension, such that another value would map to $w$

For a [[Homogenous]] system of linear equations,
- The number of free variables is equal to $dim(Ker(T))$
- The number of basic variables is equal to $dim(Im(T))$
	The number of free variables, is the number of variables which solves the system = 0, so it's the kernel
	And the number of basic variables are the variables which don't, so it's the image

For an [[Inhomogenous]] system of equations $Ax=B$ is only true if $b\in Im(T)$, and any vector satisfying the system (where $x\neq 0$) is a **Particular Solution** to the system of equations

>**Theorem (2.4.18, 101)**
	Let $x_{p}$ be a solution to an inhomogenous system $A\vec{x_{p}}= b$. Then, every other solution to $A\vec{x}=b$ is of the from $\vec{x}=\vec{x}_{p}+\vec{x}_h$, where $\vec{x_{h}}$ is a solution for the solution $A\vec{x}= 0$
Follow up:
	The system $A\vec{x}=b$ has a unique solution if and only if $b\in Im(T)$, and the only solution to $A\vec{x}=0$ is $\vec{x}=0$

This theorem says, that every element in the Image, can be represented by a **particular solution**, + an element of the **Kernel**
	Practically, this means that when calculating the subspace of the **Image**, we can get an equation with Image = one particular solution + Kernel 

### 2.5 Composition of Linear Transformations
106-112

Let $U$, $V$ and $W$ be [[Vector Space|Vector Spaces]], and let $S:U \rightarrow V$ and $T:V\rightarrow W$ be linear transformations

The **Composition** of $S$ and $T$ is denoted $TS:U\rightarrow W$ and is defined by 
	$TS(v)=T(S(v))$ 
	The **composition** of two linear transformations *is* still a linear transformation, and satisfies all requirements to be a linear transformation
	The composition of two linear transformations is the multiplication of the two transformations matrices
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

To calculate the matrix of a composition of linear transformations, given their matrices, do [[Matrix|Matrix Multiplication]], and the resulting matrix is the matrix of the composition
**Matrix Multiplication Properties**
- $(AB)C=A(BC)$
- $A(B+C)=AB+AC$
- $(A+B)C=AC+BC$

### 2.6 Inverse of a Linear Transformation
112-122

Let $T:V\rightarrow W$ be a linear transformation

If $T$ has an inverse linear transformation $S$, then we say $T$ is [[Invertible]], and we denote the inverse of $T$ by $T^{-1}$
	$T$ only has an inverse, if it is [[Injective]] and [[Surjective]]
	The inverse transformation $S:W\rightarrow V$ is also a linear transformation
**Properties
- A linear transformation $T$ has an inverse $S$ if and only if $T$ is **injective** and **surjective**
- If $V$ and $W$ are finite-dimensional vector spaces, there is an isomorphism if and only if $dim(V)=dim(W)$
- For any choices of bases $\alpha$ for $V$ and $\beta$ for $W$,
	$[T^{-1}]_{\beta}^{\alpha}={[T]_\alpha^\beta}^{-1}$ 

If $T:V\rightarrow W$ has an invertible linear transformation, $T$ is called an *[[Isomorphism]]*, and the vector spaces $V$ and $W$ are *isomorphic vector spaces*
	Isomorphisms of vector spaces are a way to describe the way some vector spaces are really "the same", even though the elements may be written in different ways 
- If two vector spaces have the same dimension, they are isomorphic

Let $[T]_{\alpha}^{\beta}$ be the matric representation of a linear transformation $T$.
The [[Gauss-Jordan Method]] is a method for producing $[T^{-1}]_{\beta}^{\alpha}$, the matrix representation of the *inverse of the linear transformation* $T$
	To do the **Gauss-Jordan Method**, start with the augmented matrix
	$[T|I]=\begin{bmatrix} t_{11} & \dots & t_{1n} & | & 1 \\ \vdots &   & \vdots  & | &   & \ddots\\ a_{n1} & \dots & a_{nn}  &  | &   &   & 1\end{bmatrix}$, Where the left matrix is the matrix representation of $T$, and the right matrix is the Identity Matrix
	Then, perform row operations until the left side is the identity matrix.
	The resulting matrix on the right will be $[T^{-1}]_{\beta}^{\alpha}$

An $n\times n$ matrix $A$ is called *invertible* if there exists an $n\times n$ matrix $A$ is called *invertible* if there exists an $n\times n$ matrix $B$ so that $AB=BA=I$. $B$  is called the *inverse* of $A and is denoted by $A^{-1}$

### 2.7 Change of Basis
122 - 131

Let $T:V\rightarrow W$ be a linear transformation between finite-dimensional vector spaces $V$ and $W$

Given two different bases $\beta$ and $\alpha$, we can find the **Change of Base Matrix** $[I]_\beta^\alpha$ from $\beta$ to $\alpha$ by defining the vectors in $\beta$ with the vectors in $\alpha$, and using the results to construct a matrix

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

Let $A, B$ be matrices. $A$ and $B$ are **similar** if there is an invertible matrix $Q$ such that
	$B=Q^{-1}AQ$
