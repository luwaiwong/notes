#uoft/mat223 #mathematics/linear-algebra 

# Overview
- [-] review mat223 notes, create overview #task  [scheduled:: 2024-02-09]

[[Set|Sets]], are collections of objects, which can have **subsets**, and **supersets**. [[Scalar|Scalars]] are ordinary numbers (Because they "scale" vectors). And [[Vector|Vectors]] represent a relationship between points, like the displacement between two points.

A [[Linear Combination]] of two **Vectors** is

The [[Vector Form of a Line]] is a line expressed as $$\vec{x}=t\vec{d}+\vec{p}$$



# Textbook Notes

---
## Appendixes

### Appendix 1
Say you have a system on equations, $t\vec{u} + s\vec{v} + r\vec{w} = \vec{p}$, where $$\vec{u} =\begin{bmatrix} 1 \\ 2 \\ 1 \end{bmatrix}, \ \vec{v} =\begin{bmatrix} 2 \\ 1 \\ -4 \end{bmatrix} , \ \vec{w} =\begin{bmatrix} -2 \\ -5 \\ 1 \end{bmatrix}, \ \vec{p} =\begin{bmatrix} -15 \\ -21 \\ 18 \end{bmatrix}
$$
You can represent this equation as a system of linear equations, like:
$$
\begin{cases}
      t+2s-2r=-15  \text{, row 1} \\ 
      2t+s-5r=-21  \text{, row 2}\\
      t-4s+r \ =18 \ \ \ \ \text{, row 3} 
\end{cases}
$$To solve a system like this, we can use *substitution* and other techniques from algebra. [[Row Reduction]] is a similar method to substitution, where we subtract rows from one another to simplify the equations
![[Pasted image 20231002143519.png|850]]
Now instead of doing these calculations the current notation, we can rewrite the numbers in an *augmented matrix*, and write them like: 
$$\begin{bmatrix} 1 & 2 & -2 & | & -15 \\ 2 & 1 & -5 & |  & -21 \\ 1 & -4 & 1 & | & 18\end{bmatrix}$$ Row reduction can then be calculated on this matrix

### Appendix 2
---

## Module 1

[[Set]]s are *unordered* collection of **distinct** objects. A [[Scalar]] number is an ordinary number. A [[Vector]] represents the relationship/direction/displacement between two points.

A [[Linear Combination]] of a [[set]] of [[vector]]s $\vec{v}_{1},\ ... \ \vec{v}_{n} \in V$  is a vector
$$\vec{w} \ = \ a_1\vec{v}_{2} \ + \ ... \ + a_{n}\vec{v}_n$$
with the scalars $a_{1}, a_{2}, \ ... \ a_{n}$ being any number and called the *coefficients* of the linear combination

## Module 2

Lines can be defined using Vectors. The vector form of a line describes a line using two points/vectors. If P and Q are two points that lie on our line, and d is the vector from P to Q, we can describe our line as x = td + P, where t can be any real number. Here, P acts as the b in y = mx+B, and P->Q acts as the slope/m
![[Pasted image 20230918155540.png]]

Lines in higher dimensions (3 Dimensions or above) are only parallel if$$ \exists x\ s.t\ x(a, b, c) = x(d,e,f)$$
The same way lines can be defined with two points, a plane can be defined using three points. These points cannot all be on the same line however.

Using vectors, we can define many geometric objects, using restrictions.
For example, you can describe a rays and planes, and restrict them
Examples
	![[Pasted image 20230920113030.png]]
	![[Pasted image 20230920113038.png]]

## Module 3
Any vector can be obtained with linear combinations of other vectors (Adding other vectors together)
Example
	![[Pasted image 20230920113359.png]]
Every vector can be obtained with linear combinations of only two vectors

The [[Span]] of a set of vectors is the set of all linear combination of those vectors
	Any and only line or planes which cross through the origin can be expressed as spans.

## Module 4
**Dot products and Normal Forms**
The [[Dot Product]](Also called *Scalar product*) of two vectors $\vec{a}$ and $\vec{b}$, and $\theta$, the smaller of the two angles between them, is $$\vec{a} \cdot \vec{b} = ||\vec{a}|| \ ||\vec{b}|| \ cos\theta$$
This is the *geometric definition* of the dot product
Dot product can also be defined as $$[a_{1},a_2,...a_3]\cdot[b_1,b_2,...b_{n}]=a_1b_1+a_2b_2+...+a_nb_n $$This is the *algebraic definition* of the dot product

**Orthogonality**
$\vec{a} \cdot \vec{b} = 0$ can be for two reasons, either $\vec{a}$ = 0, $\vec{b}$ = 0, or  both meet at a $90^\degree$ angle 

## Module 5
Projections & Vector Components

### Projections
Let $X \subseteq R^n$ The **Projection** of the vector $\vec{v} \in R^n$ onto X, written $proj_{x}\vec{v}$is the closest point in $X$ to $\vec{v}$

To help visualize, say you have a vector, the **projection** of the vector on the $xy$ plane would be the "shadow" the vector would cast on the $xy$ plane if the sun were directly overhead

**Projecting on axis**
A projection of a vector $\vec{v}=\begin{bmatrix} 1\\2\\3\end{bmatrix}$ on the $xy$ plane in $R^3$ would simply be $\vec{v} = \begin{bmatrix} 1\\2\\0\end{bmatrix}$ 
The projection of any vector on the y axis, would take the form $\vec{v}_{t}= \begin{bmatrix}0\\t\\0\end{bmatrix}$ for some $t \in \mathbb{R}$ 

 **Example of calulating projection**
 Say you want to calculate the projection of  $\vec{v}=\begin{bmatrix} 1\\2\\3\end{bmatrix}$ on the y axis. or $\vec{u}_{t}= \begin{bmatrix}0\\t\\0\end{bmatrix}$ for some $t \in \mathbb{R}$ . we can calculate the distance between $\vec{u}_t$ and $\vec{v}$ with $$||\vec{u}_t-\vec{v}|| = ||\begin{bmatrix}0\\t\\0\end{bmatrix}-\begin{bmatrix}1\\2\\3\end{bmatrix}|| = \sqrt{1^2}+(t-2)^2+3^2$$Since $(t-2)^2$ is always positive, the distance is minimized when $(t-2)^2=0$, or when $t=2$. Therefore, $$proj_y\vec{v}=\begin{bmatrix}0\\2\\0\end{bmatrix}$$


##### Components
Vectors can be decomposed into [[Components]]


## Module 6
**Subspaces & Bases**

Remember, [[Span]]s **must** pass through the origin, a line or plane that doesn't pass through the origin cannot be written as a span, it must be expressed as a *translated* span

A subspace is a span that is *closed* with respect to linear combination, or, by taking combinations of vectors in a span, you cannot escape the span.
##### Subspace
A non empty subset $V\subseteq \mathbb{R}^n$ is called a [[Subspace]] if $\forall \vec{u},\vec{v}\in V$ and all scalars $k$:
- $\vec{u}+\vec{v}\in V$(also called being *closed with respect to vector addition*, and
- $k\vec{u}\in V$(also called being *closed with respect to scalar multiplication*)
Subspaces represent the idea of *flat spaces through the origin*, They include lines, planes, volumes, and more.

[[Subspace-Span Theorem]]. Every [[Subspace]] is a [[Span]], and every span is a subspace. More precisely, $V \subseteq\mathbb{R}^n$ is a subspace if and only if $V=spanX$ for some set $X$

##### Bases
A [[Base]] for a [[Subspace]] $V$ is a linearly independent([[Linear Independence]]) set of vectors, $B$, so that $spanB=V$ 
1. Bases are not unique. Every subspace (except for the [[Trivial Subspace]]) has multiple bases
2. Every vector in the base of a subspace can be written as a *unique* linear combination of vectors in that basis
3. Any 2 bases for the same subspace have the smae number of elements

The [[Dimension]] of a [[Subspace]] $V$ is the number of elements in a basis for $V$.

The [[Standard Basis]] for $\mathbb{R}^n$ is the [[Base]] set $\{\vec{e}_{1},...,\vec{e}_n\}$ where $$\vec{e}_1=\begin{bmatrix}1\\0\\0\\\vdots\end{bmatrix} \vec{e}_2=\begin{bmatrix}0\\1\\0\\\vdots\end{bmatrix}\vec{e}_3=\begin{bmatrix}0\\0\\1\\\vdots\end{bmatrix}$$That is, $\vec{e}_i$ is the vector with a 1 in its ith coordinate and zeros elsewhere. 
The **Standard basis** describes all the elements in $R^n$

## Module 7
**Matrix Representations of Systems of Linear Equations**

You can represent systems of linear equations using [[Matrix-Vector Multiplication]]: 
Consider a system of linear equations$$\begin{cases} x+2y-2z &=-15  \\
 2x+y-5z &= -21 \\
 x-4y+z &= 18\end{cases}$$This is equivalent to the vector equation: $$\begin{bmatrix}x+2y-2z  \\ 2x+y-5z \\ x-4y+z\end{bmatrix} =\begin{bmatrix} -15 \\ -21 \\ 18\end{bmatrix}$$Rewriting using [[Matrix-Vector Multiplication]] $$\begin{bmatrix} 1  & 2 & -2 \\ 2 & 1 & -5 \\ 1 & -4 & 1\end{bmatrix}\begin{bmatrix} x \\ y \\ z\end{bmatrix}=\begin{bmatrix} -15 \\ -21 \\ -18\end{bmatrix}$$
 The [[Matrix]] on the left is called the **Coefficient Matrix**, because it is made out of coefficients from the equations. Using **coefficient matrices**, every system of linear equations can be rewritten as a single matrix equation of the form $$A\vec{x}=\vec{b}$$Where $A$ is a coefficient matrix, $\vec{x}$ is a column vector of variables, and $\vec{b}$ is a column vector of constants

## Module 8
**Coordinates & Change of Basis 1**

[[Representing Vectors in Multiple Bases]]
Vectors can be represented by different bases, instead of $\vec{x} =\begin{bmatrix} 2 \\ 3\end{bmatrix}$ representing $(2,3)$ where 2 represents 2x and 3 represents 3y, (This is called the [[Standard Basis]]), $\vec{x}$ could be represented by $\mathbb{B} = \{\vec{b}_{1} ,\vec{b}_{2}\}$, where $\vec{b}_{1}=\begin{bmatrix} 2 \\ 1 \end{bmatrix}$ and $\vec{b}_{2}=\begin{bmatrix} 0,1\end{bmatrix}$
The coordinates of $\vec{x}$ with respect to $\mathbb{B}$ are $(1,2)$ instead of $(2,3)$
Image example
	![[Pasted image 20231016171935.png]]\

The [[Orientation of a Base]] represents the direction that a base is pointing in, and can be either **right handed** or **left handed**.

The [[Standard Basis]], or for a 2D space $\varepsilon = \{\begin{bmatrix} 1 \\ 0\end{bmatrix}, \begin{bmatrix} 0 \\ 1\end{bmatrix} \}$ would be considered **right handed**. However reversed, $\varepsilon_1 = \{\begin{bmatrix} 0 \\ 1\end{bmatrix}, \begin{bmatrix} 1 \\ 0\end{bmatrix} \}$  would be considered **left handed**

## Module 9
**Linear transformations**

A [[Transformation]] (or [[Map]]) is another word for a [[Function]]. **Transformations** show up any time you need to describe vectors changing

The [[Image of a Set]] $X$ under a [[Transformation]] L is the set of all outputs of $L$ when the inputs come from $X$

[[Linear Transformations]] are a category of [[Transformation]]s

[[Matrix-Vector Multiplication]] can also be interpreted

## Module 10
**The Composition of Linear Transformations**

A **Composition** of Functions is a function which takes another function in as an input

We can use compositions of function to understand complicated linear transformations by breaking them up into the composition of simpler ones

### Example:
Define: $$T:\mathbb{R}^{2}\rightarrow \mathbb{R}^{2} \ \text{ by } \ T(\vec{x})=\begin{bmatrix} \sqrt{2} & -\sqrt{2} \\ \frac{\sqrt{2}}{2} & \frac{\sqrt{2}}{2}\end{bmatrix}\vec{x}$$
We can define $T$ as $$T=S \circ R$$

$S$ is a stretch in the x axis
$R$ is a rotation counter clockwise by $45\degree$ 

If we have the [[Linear Transformations#^04984c|Matrix form of a Linear Transformation]] for two linear transformations, and we want to find the result of their composition, or if we have 
$$A\vec{x}=M_{A}\vec{x} \ \text{ and } \ B\vec{x}=M_{B}\vec{x}$$
then $$A(B\vec{x})=M_{A}(M_{B}\vec{x})$$
or the composition of A and B are the multiplication of their matrix transformation

## Module 11
**Range & Nullspace of a Linear Transformation**

The [[Range]] of a linear transformation is the set of vectors that it can output

> Theorem:
> 	Let $T:R^{n}\rightarrow R^{m}$ be a [[Linear Transformations|Linear Transformation]]. Then $range(T)\subseteq R^{m}$ is a [[Subspace]]

The [[Rank]] of a linear transformation, is the [[dimension]] of the [[range]] of the linear transformation
The rank of a linear transformation can be used to measure its *complexity* or *compressibility*
> Alternatively, the rank of a matrix is also equal to the number of pivots in the [[Row Reduced Echelon Form]] of the matrix.


The [[Fundamental Subspaces]] of a matrix $M$ are:
	The [[Row Space]], which is the [[Span]] of the rows of $M$ 
	The [[Column Space]], which is the [Span] of the columns of $M$
	The [[Null Space]], the set of solutions to $M\vec{x}=\vec{0}$
	
The [[Null Space]] of a linear transformation is the set of vectors that get mapped to the zero vector for that linear transformation. 
	The [[Dimension]] of the null space is called the [[Nullity]]

>Theorem: 
>	Let $T:R^{n}\rightarrow R^{m}$ be a [[Linear Transformations|Linear Transformation]]. Then $null(T)\subseteq R^{n}$ is a [[Subspace]]

The [[Transpose]] of a matrix $M$ is the matrix produced by swapping the rows and columns of $M$

>[[Row-Col Dimension Theorem]]
>	For a matrix $A$, the dimension of the row space equals the dimension of the dolumn space

>Induced Transformation
>	Let M be an $n\times m$ matrix. We say $M$ *induces* a linear transformation $T_{M}:R^{m}\rightarrow R^{n}$ when: $$[T_{M}\vec{v}]_\epsilon=M[\vec{v}]_\epsilon$$
>	where $\epsilon$ is the standard basis for $R^{m}$ and $\epsilon$ is the standard basis for $R^{n}$

>[[Rank-Nullity Theorem For Matrices]]:
>	For a matrix $A$, $$rank(A)+nullity(A) = \text{Number of columns in } A$$