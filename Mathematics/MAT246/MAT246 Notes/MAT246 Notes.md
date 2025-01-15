#uoft/mat246 #notes 

Notes for [MAT246](../MAT246.md)


---
# Table of Contents
[MAT246 Textbook](attachments/MAT246%20Textbook.pdf)  
[MAT246 Lin Alg Done Right Textbook](MAT246%20Lin%20Alg%20Done%20Right%20Textbook.pdf)

[MAT246 Questions](../MAT246%20Questions.md)

Weeks  
    [#Week 1](#Week%201)  
    [#Week 2](#Week%202)  
    [#Week 3](#Week%203)  
    [#Week 4](#Week%204)  
    [#Week 5](#Week%205)  
    [#Week 6](#Week%206)  
    [#Week 7](#Week%207)  
    [#Week 8](#Week%208)  
    [#Week 9](#Week%209)  
    [#Week 10](#Week%2010)  
    [#Week 11](#Week%2011)
# Notes
## Week 1
> Readings:  
> 	Chapter 4 Vector Spaces  
> Exercises for Chapter 4 starting on p. 46  
> 	Calculational Exercises: #1 through #5  
> 	Proof-Writing Exercises: #1 and #2  
> This material is very similar to [MAT224 Notes](../../MAT224%20Notes/MAT224%20Notes.md), possible reference for help

### Vector Space
A [Vector Space](../../MAT224%20Notes/Vector%20Space.md) is a [Set](../../MAT223%20Notes/Set.md) $V$ with two operations defined for its elements
- Vector Addition
- Scalar Multiplication  
These two operations must satisfy the properties
 - **Commutativity**: $u+v=v+u$ for all $u,v\in V$
 - **Associativity**: $(u+v)+w=u+(v+w)$ and $(ab)b=a(bv)$ for all $u,v,w\in V$ and $a,b\in F$
 - **Additive Identity**: There exists an element $0\in V$ such that $0+v=v$  for all $v\in V$
 - **Additive Inverse**: For every $v\in V$, there exists an element $w\in V$ such that $v+w=0$
 - **Multiplicative Identity**: $1v=v$ for all $v\in V$
 - **Distributivity**: $a(u+v)=au+av$ and $(a+b)u=au+bu$ for all $u,v\in V$ and $a,b\in F$

The symbol $V$ is for any [Vector Space](../../MAT224%20Notes/Vector%20Space.md), and $F$  here is for the set of all [Scalars](../../MAT223%20Notes/Scalar.md)

### Subspaces
A [Subspace](../../MAT223%20Notes/Subspace.md) is a [Subset](Subset) of a [Vector Space](../../MAT224%20Notes/Vector%20Space.md) which still retains all the properties of a [Vector Space](../../MAT224%20Notes/Vector%20Space.md)  
Properties
- The union of two subspaces is not necessarily a subspace

Although that is its definition, and we can check if a subset is a [Vector Space](../../MAT224%20Notes/Vector%20Space.md) itself to verify that it is a [Subspace](../../MAT223%20Notes/Subspace.md), we can also check that the following three conditions hold 
- An **Additive Identity** exists: $0\in U$
- There is **closure Under Addition**: $u,v\in U$ implies $u+v\in U$
- There is **closure under scalar multiplication**:$a\in \mathbb{F}, u\in U$ implies that $au\in U$ 

> Why does the three conditions work?  
> 	The first implies additive identity  
> 	The second implies that vector addition is well defined  
> 	The third ensures that scalar multiplication is well defined  
> 	Some of the other requirements of a vector space we can assume, because it is a subset of a vector space

Let $U_{1},U_{2}\subset V$ be [Subspaces](../../MAT223%20Notes/Subspace.md) of $V$. The [Subspace Sum](Subspace%20Sum.md) of $U_{1}$ and $U_{2}$ is the set:  
	$U_{1}+U_{2}=\{u_{1}+u_{2}|u_{1}\in U_{1}, u_{2}\in U_{2}\}$  
**Properties**
- The subspace sum of $U_{1},U_{2}\subset V$ is also a subset of $V$

> An example of the result of [Subspace Sums](Subspace%20Sum.md)  
> 	Let $U_{1}=\{(x,0,0)\in \mathbb{F^{3}}|x\in \mathbb{F}\}$  
> 	Let $U_{2}=\{(x,0,0)\in \mathbb{F^{3}}| x\in \mathbb{F}\}$  
> 	Then $U_{1}+U_{2}=\{(x,y,0)\in \mathbb{F^{3}}|x,y \in \mathbb{F}\}$

We can say that $U$ is a  [Direct Sum](Direct%20Sum.md) of $U_{1}$ and $U_{2}$, if every $u\in U$ can be uniquely written as $u=u_{1}+u_{2}$ for $u_{1}\in U_{1}$ and $u_{2}\in U_{2}$  
We notate that $U$ is a  [Direct Sum](Direct%20Sum.md) of $U_{1}$ and $U_{2}$ with:  
	$U=U_{1} \bigoplus U_{2}$  
**Properties**
- Let $U_{1}, U_{2}\subset V$ be [Subspaces](../../MAT223%20Notes/Subspace.md), Then $V=U_{1}\bigoplus U_{2}$ if and only if:
	- $V=U_{1}+U_{2}$
	- If $0=u_{1}+u_{2}$ with $u_{1}\in U_{1}$ and $u_{2}\in U_{2}$, then $u_{1}=u_{2}=0$
		- Or that $U_{1}\cup U_{2}=\{0\}$

## Week 2
>Readings Chapter 5?  
>Exercises for Chapter 5 starting on p. 61  
>	Calculational Exercises: #1,  #4, #5(b-e)  
>	Proof-Writing Exercises: #1 through #3  
>Note: In the formulation of the problems in the textbook, the general field F is to be replaced by the set of real numbers R.
### Span & Bases
A [Vector](../../MAT223%20Notes/Vector.md) $v\in V$ [Linear Combination](../../MAT223%20Notes/Linear%20Combination.md) of a set of vectors $v_{1},...,v_{m}$ if there exists [Scalars](../../MAT223%20Notes/Scalar.md) $a_{1},...,a_{m}\in \mathbb{F}$ where:  
	$v=a_{1}v_{1}+a_{2}+v_{2}+...+a_{m}v_{m}$

A [Span](../../MAT223%20Notes/Span.md) (Also called a **Linear Span**) is defined as:  
	$span(v_{1},...,v_{m}) = \{a_{1}v_{1}+...+a_{m}v_{m}|a_{1},...,a_{n}\in \mathbb{F}\}$  
**Properties**
- $span(v_{1},v_{2},...,v_{m})$ is a [Subspace](../../MAT223%20Notes/Subspace.md) of $V$, when $v_{1},v_{2},...,v_{m}\in V$ 
- A $span(v_{1},v_{2},...,v_{m})$ is the smallest subspace of $V$ containing each of $v_{1},v_{2},...,v_{m}$
- If $span(v_{1},...,v_{m})=V$, then we say that $(v_{1},...,v_{m})$ **spans** $V$, and $V$ is [Finite Dimensional](Finite%20Dimensional.md)
	- A vector space that is not finite dimensional is called  [Infinite Dimensional](Infinite%20Dimensional)

> A vector $v$ is a [Linear Combination](../../MAT223%20Notes/Linear%20Combination.md) of another set of vectors, if its possible to add those vectors together with different scalars to get $v$  
> A [Span](../../MAT223%20Notes/Span.md) is the set of all the [Linear Combinations](../../MAT223%20Notes/Linear%20Combination.md) from a set of [Vectors](../../MAT223%20Notes/Vector.md)

### Linear Independence
A set of vectors $v_{1},...,v_{m}$ is [Linearly Independent](../../MAT223%20Notes/Linear%20Independence.md) if the only solution for $a_{1},...,a_{m}\in \mathbb{F}$ to the equation:  
	$a_{1}v_{1}+...+a_{m}v_{m}=0$  
Is $a_{1}=...=a_{m}=0$

> So, a set of vectors is [Linearly Independent](../../MAT223%20Notes/Linear%20Independence.md) if there is only one [Linear Combination](../../MAT223%20Notes/Linear%20Combination.md) of them which results in 0, and that is, when all the scalars are 0  
> If you imagine the concept geometrically, a set of vectors is **Linearly Independent** if none of them  "lie on the same path".  
> 	If there were two vectors in the set, where $v_{1}=a\cdot v_{2}$ (where one vector is the same as another vector scaled), then one linear combination of 0 could be $v_{1}-a\cdot v_{2}=0$, which means there is a $a_{1}=...=a_{m}\neq 0$ where $a_{1}v_{1}+...+a_{m}v_{m}=0$  
> 	Thus, for a set of vectors to be [Linearly Independent](../../MAT223%20Notes/Linear%20Independence.md), they must not have any two vectors which "lie on the same path"

A set of vectors $v_{1},...,v_{m}$ is [Linearly Dependent](../../MAT224%20Notes/Linear%20Dependence.md) if there exists $a_{1},...,a_{m}\in \mathbb{F}$ which are not all zero such that:  
	$a_{1}v_{1}+...+a_{m}v_{m}=0$  
	A set being Linearly Dependent is just a set of vectors is not Linearly Independent

### Bases
A [Basis](../../MAT223%20Notes/Base%20(Basis).md) of a [Finite Dimensional](Finite%20Dimensional.md) [Vector Space](../../MAT224%20Notes/Vector%20Space.md) is a [Spanning List](../../MAT223%20Notes/Span.md) that is [Linearly Independent](../../MAT223%20Notes/Linear%20Independence.md)  
**Properties**
- If $V=span(v_{1},...,v_{m})$, then either $(v_{1},...,v_{m})$ is a basis of $V$ or some $v_{i}$ can be removed to obtain a basis of $V$ 
- Every finite-dimensional vector space has a basis
- Every linearly independent list of vectors in a finite-dimensional vector space $V$ can be extended to a basis of $V$


[Dimension](../../MAT223%20Notes/Dimension.md) of a [Vector Space](../../MAT224%20Notes/Vector%20Space.md) $V$ is the number of [Bases](../../MAT223%20Notes/Base%20(Basis).md) in any given basis of $V$  
**Properties**  
Let $V$ be a finite-dimensional vector space with $dim(V)=n$
- Any two bases of $V$ have the same length
- If $U\subset V$ is a subspace of $V$,then $dim(U)\leq dim(V)$
- If $V=span(v_{1},...,v_{n})$, then $(v_{1},...,v_{n})$ is a basis of $V$
- If $(v_{1},...,v_{n})$ is linearly independent in $V$, then $(v_{1},...,v_{n})$ is a basis of $V$
- If $U,W,\subset V$ are subspaces of a finite dimensional vector space, then $dim(U+W)=dim(U)+dim(W)-dim(U\cap W)$
## Week 3
>Readings: Chapter 5 & Chapter 9?  
>Exercises for Chapter 5 starting on p. 61  
> 	Calculational Exercises: #2, 3, 5(a)  
> 	Proof-Writing Exercises: #5, 6  
>Exercises for Chapter 9 starting on p. 136  
> 	Proof-Writing Exercises: #1, 2, 4  
> [MAT246 Week 3 Solutions.pdf](MAT246%20Week%203%20Solutions.pdf)

An [Inner Product](Inner%20Product) on $V$ is a [Map](Map)  
$$\langle .,.\rangle:V\times V\rightarrow \mathbb{F}$$  
With the following properties
- Linearity in the first slot: $\langle u+v,w\rangle = \langle u,w \rangle +\langle v,w\rangle$ and $\langle au,v \rangle = a\langle u,v \rangle$ for all $u,v,w\in V$ and $a\in \mathbb{F}$
- Positivity: $\langle u,v\rangle \geq 0$ for all $v\in V$
- Positive Definiteness: $\langle v,v\rangle = 0$ if and only if $v=0$
- [Conjugate](../../MAT224%20Notes/Conjugate.md) symmetry: $\langle u,v\rangle = \overline{\langle v,u\rangle}$ for all $u,v\in V$  
**Other Properties**
- The Inner product is *anti-linear* in the second slot, or: 
	- $\langle u,v+w\rangle = \langle u,v\rangle+ \langle u,w\rangle$ and,
	- $\langle u,av\rangle = \overline a\langle u,v\rangle$

For a typical vector space $V=\mathbb{F}^{n}$ (over $\mathbb{F}$) and $u=(u_{1},...,u_{n}), v=(v_{1},...,v_{n})\in \mathbb{F}^{n}$, an [Inner Product](Inner%20Product) can be defined as:  
$$\langle u,v \rangle = \sum\limits_{i=1}^{n}u_{i}\overline{v}_{i}$$  
	For $\mathbb{F}=\mathbb{R}$, this is the usual [Dot Product](../../MAT223%20Notes/Dot%20Product.md)

An [Inner Product Space](Inner%20Product%20Space) is a Vector Space with an [Inner Product](Inner%20Product) $\langle .,.\rangle$ 

> So, the Inner Product is the *formal definition* of the [Dot Product](../../MAT223%20Notes/Dot%20Product.md).  
> Instead of defining a specific formula, we define its general properties, as different vector spaces can have *different inner products*

The [Norm](../../MAT224%20Notes/Norm.md) of a [Vector](../../MAT223%20Notes/Vector.md) in a [Inner Product Space](Inner%20Product%20Space) represents like the "length" or "magnitude" of a vector in $\mathbb{R^{n}}$  
A [Norm](../../MAT224%20Notes/Norm.md) on $V$ over $F$ is a [Map](Map)  
$$||\cdot||:V\rightarrow \mathbb{R}, v\to ||v||$$  
With the following properties:
- Positive Definiteness: $||v||=0$ if and only if $v=0$
- Positive Homogeneity: $||av||=|a| \ ||v||$ for all $a\in \mathbb{F}$ and $v\in V$
- Triangle Inequality: $||v+w||\leq ||v||+||w||$ for all $v,w\in V$

A norm can always be defined from an inner product $\langle .,.\rangle$ via the formula  
$$||v||=\sqrt{\langle v,v\rangle} \text{  for all }v\in V$$

## Week 4
>Readings: Chapter 9  
>Exercises for Chapter 9 starting on p. 136  
> 	Calculational Exercises: #1, 2, 3, 4  
> 	Proof-Writing Exercises: #1, 2, 3, 4 (Note, #1, 2 and 4 were assigned last week)

Two vectors $u,v\in V$ are [Orthogonal](../../MAT223%20Notes/Orthogonal.md) if $\langle u,v\rangle = 0$
## Week 5
>Readings: Chapter 6  
>Exercises for Chapter 6 starting on p. 82  
>	Calculational Exercises: #1 (a), (b), 2 (c), (d), 4  
>	Proof-Writing Exercises: #2, 3, 4  
>[MAT246 Week 5 Answers](MAT246%20Week%205%20Answers.pdf)

## Week 6
>Readings: Chapter 6  
>Exercises for Chapter 6 starting on p. 82  
>	Calculational Exercises: #1 (d), (e), (f)  
>	Proof-Writing Exercises: #1, 5, 8  
>[MAT246 Week 6 Answers](MAT246%20Week%206%20Answers.pdf)

## Week 7
> Readings: Chapter 10  
> Exercises for Chapter 10 starting on p. 145  
	Calculational Exercises: #1, 3(a)  
	Proof-Writing Exercises: #1, 2  
> [MAT246 Week 7 Answers](MAT246%20Week%207%20Answers.pdf)

## Week 8
> Readings: Chapter 2, 4, 5, 6  
> 	Exercises for Chapter 2 starting on p. 24  
> 		Calculational Exercises: #1, 2, 5, 6, 7  
> 		Proof-Writing Exercises: #1, 2, 3  
> 	Exercises for Chapter 4 starting on p. 46  
> 		Calculational Exercises: #5  
> 	Exercises for Chapter 5 starting on p. 61  
> 		Calculational Exercises: #2  
> 	Exercises for Chapter 9 starting on p. 136  
> 		Proof-Writing Exercises: #5


## Week 9
> Readings: Chapter 6  
> Exercises for Chapter 6 starting on p. 24  
> 	Calculational Exercises: #3  
> 	[MAT301 DSProblems](MAT301%20DSProblems.pdf)

## Week 10
> Readings: Section 3F from [MAT246 Lin Alg Done Right Textbook](MAT246%20Lin%20Alg%20Done%20Right%20Textbook.pdf)  
> Exercises from [MAT246 Lin Alg Done Right Textbook](MAT246%20Lin%20Alg%20Done%20Right%20Textbook.pdf)  
> 	Section 3F starting on p.115  
> 		#1, 3, 5, 8, 9, 11, 12, 13, 16, 25, 32  
> Topics:  
> 	Linear Functionals  
> 	Dual Space  
> 	Dual Basis  
> 	Dual Map  
> 	Annihilators

A [Linear Functional](Linear%20Functional.md) on $V$ is a *linear map* from $V$ to $F$.  
	A linear functional is an element of $L(V,F)$

> Notation:  
> 	$L(V,F)$ defines the set of all [Linear Transformations](../../MAT223%20Notes/Linear%20Transformation.md) from $V$ to $F$  
> 	$F$ is the set of all *scalars* (all numbers, and complex numbers?)  
> Examples of Linear Functionals
> 	1. Define $\varphi: \mathbb{R}^{3}\rightarrow \mathbb{R}$ by $\varphi(x,y,z)=4x-5y+2z$. $\varphi$ is a linear functional on $\mathbb{R^{3}}$
> 	2. Fix $(c_{1},...,c_{n})\in \mathbb{F}^{n}$. Define $\varphi:\mathbb{F}^{n}\rightarrow \mathbb{F}$ by $\varphi(x_{1},...,x_{n})=c_{1}x_{1}+\dots +c_{n}x_{n}$. $\varphi$ is a linear functional on $\mathbb{F}^{n}$
> 	3. Define $\varphi:P(\mathbb{R})\rightarrow \mathbb{R}$ by $\varphi(p)=3p^{n}(5)+7p(4)$ 
> 	4. Define $\varphi:P(R)\rightarrow \mathbb{R}$ by $\varphi(p)=\int_{0}^{1}p$ for each $p\in P(\mathbb{R})$  
> 	Remember that $P$ refers to the set of all *polynomials*

The [Dual Space](Dual%20Space.md) of $V$, denoted $V'$ is the vector space of *all linear functionals* on $V$  
	$V'=L(V,F)$  
Properties
- $\dim V'=\dim V$  

If $v_{1},...,v_{n}$ is a basis of $V$, then:  
The [Dual Basis](Dual%20Basis.md) of $v_{1},...,v_{n}$ is the list $\varphi_{1},...,\varphi_{n}$ of elements in $V'$ where each $\varphi_{j}$ is the [Linear Functional](Linear%20Functional.md) on $V$ such that  
$$\varphi_{j}(v_{k}) = \begin{cases}1 \ \text{ if $k=j$} \\ 0  \ \text{ if $k\neq j$} \end{cases}$$  
Properties
- The dual basis of a basis of $V$, is a basis of $V'$
- For each $v\in V$, $v=\varphi_{1}(v)v_{1}+\dots+\varphi_{n}(v)v_{n}$, where $v_{1},...,v_{n}$ is a basis of $V$ and $\varphi_{1},...,\varphi_{n}$ is a basis for $V'$ and a [Dual Basis](Dual%20Basis.md) of $v_{1},...,v_{n}$
	- The dual basis gives the *coefficients* for any vector for its basis

> Note:  
> 	$V'$ is a vector space, in which all its elements are *functions/transformations* which take $V\rightarrow \mathbb{F}$

The [Dual Map](Dual%20Map.md) of a transformation $T\in L(V,W)$ is the linear map $T'\in L(W', V')$ defined for each $\varphi\in W'$ by  
$$T'(\varphi)=\varphi\circ T$$  
$T'(\varphi)$ takes elements from $V\rightarrow \mathbb{F}$  
Properties
- Dual maps are *Linear Maps*
- $(S+T)'=S'+T'$ for all $S\in L(V,W)$
- $(\lambda T)'=\lambda T'$ for all $\lambda\in \mathbb{F}$
- $(ST)'=T'S'$)

> Note:  
> 	So, the dual map for a transformation from $W\rightarrow V$, takes [Linear Functionals](Linear%20Functional.md) of $W$ to Linear Functionals of $V$, or $W'\rightarrow V'$  
> 		$T'(\varphi)$ takes elements from $V\rightarrow \mathbb{F}$, while $\varphi$ took elements from $W\rightarrow F$  
> 		$T'(\varphi)$ converts the [Dual Space](Dual%20Space.md) of $W$ to be compatible with $V$  
> 	Its defined $T'(\varphi)=\varphi\circ T$, where an element from $W$ is passed to $T$, which then through $\varphi \in W'$ becomes an element of $\mathbb{F}$  
> Notation:  
> 	$T'(\varphi)$ means the *composition* of $\varphi$ and $T$

For any $U\subseteq V$, the [Annihilator](Annihilator.md) of $U$, denoted $U^{0}$ is:  
$$U^{0}=\{\varphi\in V':\varphi(u)=0 \text{ for all } u\in U\}$$  
Properties
- $U^{0}$ is a subspace of $V'$
- $\dim U^{0}=\dim V-\dim U$
- $U^{0}=\{0\}\iff U=V$
- $U^{0}=V'\iff U=\{0\}$

We can use the [Annihilator](Annihilator.md) to define the [Null Space](../../MAT223%20Notes/Null%20Space.md) of a [Dual Map](Dual%20Map.md)
 - $\text{null } T'=(\text{range } T)^{0}$ 
 - $\dim \text{null } T'=\dim \text{null } T+\dim W-\dim V$
## Week 11
> Readings: Section 3E and 9D from [MAT246 Lin Alg Done Right Textbook](MAT246%20Lin%20Alg%20Done%20Right%20Textbook.pdf)  
> Exercises from [MAT246 Lin Alg Done Right Textbook](MAT246%20Lin%20Alg%20Done%20Right%20Textbook.pdf)  
> 	Section 3E starting on p.103  
> 		#1, 5  
> 	Section 9D starting on p.380  
> 		#1, 3, 5, 9, 10, 12, 13  
> [Week 11 Solutions](Week%2011%20Solutions.pdf)

The [Product of Vector Spaces](Product%20of%20Vector%20Spaces.md) $V_{1}\times \dots \times V_{m}$ is defined by  
$$V_{1}\times\dots\times V_{m}=\{(v_{1},\dots, v_{m}): v_{1}\in V_{1},\dots v_{m}\in V_{m}\}$$  
**Properties**
- Addition on $V_{1}\times \dots \times V_{m}$ is defined by  
	$(u_{1},\dots ,u_{m})+(v_{1},\dots v_{m})=(u_{1}+v_{1},\dots,u_{m}+v_{m})$
- Scalar multiplication on $V_{1}\times \dots \times V_{m}$ is defined by  
	$\lambda(v_{1},\dots,v_{m})=(\lambda v_{1},\dots,\lambda v_{m})$
- If $V_{1},\dots, V_{m}$ are vector spaces over $\mathbb{F}$, $V_{1}\times \dots \times V_{m}$ is a vector space over $\mathbb{F}$
	- The product of vector spaces, is a vector space with the operations of addition and scalar multiplication defined above
- $dim(V_{1}\times \dots \times V_{m})=dim(V_{1})+\dots +dim(V_{m})$
- We can define a linear map $\Gamma: V_{1}\times \dots \times V_{m}\rightarrow V_{1}+\dots+V_{m}$  with $\Gamma(v_{1},\dots, v_{m})=v_{1}+\dots+v_{m}$. Then $V_{1}+\dots+V_{m}$ is a [Direct Sum](Direct%20Sum.md) if and only if  $\Gamma$ is [Injective](../../MAT224%20Notes/Injective.md)

A [Bilinear Functional](Bilinear%20Functional.md) on $V\times W$ is a function $\beta:V\times W\rightarrow F$ such that:
- $v\rightarrow \beta(v,w)$ is a linear functional on $V$  for each $w\in W$, and
- $w\rightarrow \beta(v,w)$ is a linear functional on $W$ for each $v\in V$  
Properties
- The vector space of bilinear functionals on $V\times W$ is denoted $B(V,W)$
- $dim(B(V,W))=(dim(V))(dim(W))$

> Simplification:  
> 	Bilinear Functionals are [Functionals](Linear%20Functional.md) for [Products of Vector Spaces](Product%20of%20Vector%20Spaces.md)  
> 	They take any product of vector spaces, to a number  
> Examples
> 	1.  Suppose $\varphi\in V'$ and $\uptau\in W'$. Define $\beta:V\times W\rightarrow F$ by $\beta(v,w)=\varphi(v)\uptau(w)$. $\beta$ is a bilinear functional

The [Tensor](Tensor.md) $V\otimes W$ is defined as $B(V', W')$ (Vector Space of Bilinear Functionals of the [Dual Space](Dual%20Space.md) of $V$ and $W$), where for any $v\in V$ and $w\in W$, $v\otimes w$ is the element of $V\otimes W$ defined by  
$$(v\otimes w)(\varphi,\uptau)=\varphi(v)\uptau(w)$$  
	For all $(\varphi, \uptau)\in V'\times W'$  
Properties
- $(dim(V\otimes W))=dim(V)dim(W)$ 
- $(v_{1}+v_{2})\otimes w=v_{1}\otimes w+v_{2}\otimes w$ and $(w_{1}+w_{2})\otimes v=w_{1}\otimes v+w_{2}\otimes v$ 
- For any linearly independent lists $e_{1},\dots,e_{m}\in V$ and $f_{1},\dots,f_{n}\in W$, then $\{e_{j}\otimes f_{k}\}_{j=1,\dots,m; k=,\dots n}$ (Or, every combination of $e_{j}$ and $f_{k}$) is a linearly independent list in $V\otimes W$
- And if $e_{1},\dots,e_{m}\in V$ and $f_{1},\dots,f_{n}\in W$ are bases for $V$ and $W$, then $\{e_{j}\otimes f_{k}\}_{j=1,\dots,m; k=,\dots n}$ (Or, every combination of $e_{j}$ and $f_{k}$) is a [Base (Basis)](../../MAT223%20Notes/Base%20(Basis).md) of $V\otimes W$
	- If $e_{1},\dots,e_{m}\in V$ and $f_{1},\dots,f_{n}\in W$ are [Orthonormal](../../MAT223%20Notes/Orthonormal.md) Bases of $V$ and $W$, then $\{e_{j}\otimes f_{k}\}_{j=1,\dots,m; k=,\dots n}$ is an orthonormal basis of $V\otimes W$
- The [Inner Product](../../MAT223%20Notes/Dot%20Product.md) on $V\otimes W$ is the function $\langle v\otimes w, u\otimes x\rangle = \langle v,u\rangle \langle w,x\rangle$ for all $v,u\in V$ and $w,x\in W$
- $||v\otimes w||=||v|| \ ||w||$


> Simplification:  
> 	The Tensor of two vector spaces, is the vector space of bilinear functionals, of the [Dual Spaces](Dual%20Space.md) of the two vector spaces  
> 	So an element $v\in V\otimes W$, is a function which takes $(\varphi, \uptau)\in V'\times W$

A [Bilinear Map](Bilinear%20Map.md) from $V\times W$ to a vector space $U$ is a function $\Gamma:V\times W\rightarrow U$ such that:
- $v\rightarrow \Gamma(v,w)$ is a linear map from $V$ to $U$  for each $w\in W$, and
- $w\rightarrow \Gamma(v,w)$ is a linear map from $W$ to $U$ for each $v\in V$  
Properties
- Every [Bilinear Functional](Bilinear%20Functional.md) on $V\times W$ is a **Bilinear map** from $V\times W$ to $F$
- For any Bilinear Map $\Gamma:V\times W\rightarrow U$, there exists a linear map $\hat\Gamma:V\otimes W\rightarrow U$ where $\hat\Gamma(v\otimes w)=\Gamma(v,w)$ for all $(v,w)\in V\times W$
- And for any Linear Map $T:V\otimes W\rightarrow U$, there exists a [Bilinear Map](Bilinear%20Map.md) $\hat T:V\otimes W\rightarrow U$ where  $\hat T(v, w)=T(v\otimes w)$ for all $(v,w)\in V\times W$

> Thoughts:  
> 	Bilinear maps are essentially just a broader definition of [Bilinear Functionals](Bilinear%20Functional.md)

An [M-Linear Functional](M-Linear%20Functional) on $V_{1}\times \dots \times V_{m}$ is a function $\beta:V_{1}\times \dots \times V_{m}\rightarrow \mathbb{F}$, that is a [Linear Functional](Linear%20Functional.md) in each slot when the other slots are held fixed  
Properties
- The vector space of $m$-linear functionals on $V_{1}\times \dots \times V_{m}$ is denoted by $B(V_{1}\times \dots \times V_{m})$
- $dim(B(V_{1},\dots,V_{m}))=dim(V_{1})\times\dots\times dim(V_{m})$

Now with this definition, we can define the [Tensor](Tensor.md) Product $V_{1}\otimes\dots\otimes V_{m}$ as $B(V_{1}',\dots,V_{m}')$, where for $v\in V_{1},\dots,v_{m}\in V_{m}$, $v_{1}\otimes\dots\otimes v_{m}$ is the element of $V_{1}\otimes\dots\otimes V_{m}$  
$$(v_{1}\otimes\dots\otimes v_{m})(\varphi_{1},\dots,\varphi_{m})=\varphi_{1}(v_{1})\dots\varphi_{m}(v_{m})$$  
	For all $(\varphi_{1},\dots,\varphi_{m})\in V_{1}'\times \dots\times V_{m}'$ 
- $dim(V_{1}\otimes\dots\otimes V_{m})=dim(V_{1})\dots dim(V_{m})$
