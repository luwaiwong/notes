#uoft/mat301 #notes 

Notes for [[MAT301]]

[[MAT301 Questions]]
[Quercus](https://q.utoronto.ca/courses/355359)

---

# Table of Contents
[[MAT301 Cheat Sheet]]
[[#Chapter 0 Preliminary]]
	[[#Intro]]
	[[#Sets]]
	[[#Functions]]
	[[#Relations]]
	[[#Division]]
	[[#Complex Numbers]]
	[[#Matrices]]
[[#Chapter 1 Groups & Subgroups]]
	[[#Binary Operations]]
	[[#Groups]]
	[[#Types of Groups]]
	[[#Subgroups]]
	[[#Isomorphisms]]
	[[#Group Actions]]
	[[#Order]]
[[#Chapter 2 Families of Groups]]
	[[#$ mathbb{Z}/n mathbb{Z}$ and $( mathbb{Z}/n mathbb{Z}) x$]]
	[[#Dihedral Groups]]
	[[#Center of a Group]]
	[[#Presentation]]
	[[#Symmetric Groups]]
		[[#Cycles]]
[[#Chapter 3 Quotients and Morphisms]]
	[[#Normality and Quotients]]
	[[#Morphisms]]
	[[#Quotients vs. Morphisms]]
	[[#The Alternating Group]]
[[#Chapter 4]]
	[[#Homomorphisms & Actions]]
	[[#Stabilizers]]
	[[#Orbit Stabilizer Theorem]]
	[[#Freeness & Transitivity]]
	[[#Burnside's Lemma]]
	[[#Groups Acting on Groups]]
[[#Chapter 5]]

## Weekly Material
Most Recent Lecture Note: [[MAT301 Lecture Notes (12-04).pdf]]
GCD & $\varphi$: [[MAT301 GCD & Totient.pdf]]
Week 2
	[[MAT301 Tutorial 2.pdf]]
Week 3
	[[MAT301 Tutorial 3.pdf]]
Week 4
	[[MAT301 Tutorial 4.pdf]]
Week 5
	[[MAT301 Tutorial 5.pdf]]
Week 6
	[[MAT301 Tutorial 6.pdf]]
Week 7
	[[MAT301 Tutorial 7.pdf]]
Week 8
	[[MAT301 Tutorial 8.pdf]]

# Notes
## Chapter 0: Preliminary
>Lecture Notes: [[MAT301 Lecture Notes (09-01).pdf]]
>The first set of lecture notes are preliminary definitions for [[Set|Sets]], [[Function|Functions]], [[Relation|Relations]], Division, [[Complex Numbers]], and [[Matrix|Matrices]]

### Intro
Group theory is the study of *symmetry*, or an invertible transformation of some object that *preserves the object*

> "The theory of groups is a branch of mathematics in which one does something to something then compares the results with the result of doing the same thing to something else, or doing something else to the same thing"
### Sets
A [[Set]] is a collection of things. A set can be any collection of things, and can be denoted by writing down all its elements like such:
$$S_{1}=\{1,2,3,4\}$$
Or with set builder notation like:
$$S_{1}=\{x: x<4\}$$
	Read $x$, where $x$ is less than $4$
**Properties**
- A [[Subset]] is a collections of things from a set
- The [[Union]] of two sets is the set of elements contained in at least one of them
- The [[Intersection]] of two sets is the set of elements contained in both of them
- Two sets are [[Mutually Exclusive(Disjoint)|Disjoint]] if their intersection is empty
- The [[Complement]] of a subset is the set of things *not* in it
- The [[Relative Complement]] of one set $A$ *in* another set $B$ is the set of things in $B$ that are not in $A$

The [[Partition]] of a set is the collection of subsets that divide it up
	If for sets $A_{i}\subset X$ for all $i$, $x=\bigcup_{i}A_{i}$, and $A_{i}\cup A_{j}=\emptyset$ for all $i\neq j$, then we say the $A_{i}$'s [[Partition]] $X$ (or *form a partition* of $X$)

>Definition
	$x=\bigcup_{i}A_{i}$ means the Union of all the subsets $A_{i}$

The [[Cartesian Product]] of two sets $A$ and $B$ is the set of ordered pairs $(a,b)$ where $a$ is in $A$ and $b$ is in $B$
$$A\times B=\{(a,b : a\in A, b\in B\}$$

Some common sets in this course are
- $\mathbb{N}=\{1,2,3,...\}$: The set of  [[Natural Numbers]] (sometimes including 0)
- $\mathbb{Z}=\{...,-1,0,1,2,...\}$: The set of [[Integers]]
- $\mathbb{Q}=\{\frac{p}{q}:p,q\in \mathbb{Z}, q\neq 0\}$: Set of [[Rational Numbers]]
- $\mathbb{R}$: Set of real numbers
- $\mathbb{C}$ set of [[Complex Numbers]]

### Functions
A [[Function]]/Map is a *rule* for assigning outputs to inputs
Given sets $X,Y$, and a map $f:X\rightarrow Y$
	$f:X\rightarrow Y$ is read as $f$, which *takes* $X$ to $Y$, function with domain $X$ and image $Y$
- The set of inputs is the [[Domain]]
- The set of outputs is called the [[Codomain]]
- If $f(x)=y$ then we say that $y$ is in the [[Image]] of $x$
	- The [[Image]] of subset $A\subset X$ *under* $f$ is the set: $f(A)=\{y:y=f(a) \text{ for some a in } A\}$ 
	- The *Image of* $f$ means the image of $X$ under $f$, denoted $im f=f(X)$
- The [[Graph]] of $f$ is the set of pairs $(x,f(x))$ where $x\in X$, or formally:
	$\Gamma(f)=\{(x,y)\in X\times Y: f(x)=y\}$
- $f$ is [[Injective]] if it doesn't send different inputs to the same output
- $f$ is [[Surjective]] if the image equals the codomain 
	- Note that this only makes sense, if you specify a codomain
- The [[Preimage]] of a function for a set $S\subset Y$ is the set of element of which the [[Image]] under $f$ is $S$:
	- Formally: $f^{-1}(S):=\{x\in X: f(x)\in S\}$ 

A [[Function]] is [[Bijective]] if it is both [[Injective]] and [[Surjective]]

> Example of Injective, Surjective, and Bijective on $\mathbb{R}\rightarrow \mathbb{R}$
> 	![[Pasted image 20240927112917.png]]

> Note a lot of these definitions are the same as how we refer to [[Linear Transformation|Linear Transformations]] in [[MAT244 Notes|MAT244]]
>You can define functions in the typical way, creating formulas, but you can also use [[Two Line Notation]] to define functions, seen below:
>	![[Pasted image 20240913101856.png]]
>	Two line notation for the function $f(x)=x^{2}$
>		Top line are the inputs, bottom line is the outputs
>	You are only allowed to use this notation, when the domain is finite

The [[Inverse]] of a function $f:X\rightarrow Y$, is a function $g:Y\rightarrow X$ such that $g\circ f = id_{X}$ and $f\circ g = id_{Y}$
- $f$ has an inverse if and only if $f$ is [[Bijective]]
- The inverse can be denoted $f^{-1}$

The [[Preimage]] of a set $S\subset Y$ under $f$ is: $f^{-1}(S)=\{x\in X: f(x)\in S\}$
> Preimage is the set of values $x\in X$ which map to all elements $s\in S$ where $f(x)\in S$

A function $f$ is a [[Self Map]] if $Y=X$, or if $f$ maps $X$ to itself
- The *identity map* $x\to x$ is a self map
	- Denoted $id$ or $id_{X}$
A [[Bijective]] [[Self Map]] is called a [[Permutation]]

> An example of a self-map
> 	![[Pasted image 20241004141005.png]]

A function $f:X\rightarrow X$ is an [[Involution]] if it's its own inverse, or $f^{2}(x)=x$

An element $x$ is an [[Involution]] if it is its own inverse

### Relations
A [[Relation]] on a set $X$, is a subset $R$ of $X\times X$ ([[Cartesian Product]])
	For any $x,y$ in $X$, we say that $x$ is *related* to $y$ (not necessarily vice versa) if $(x,y)\in R$, or $xRy$
- A relation is  [[Reflexive]] if all elements are related to themselves, $xRx$ for all $x$
- [[Symmetric]] if the relation goes both ways, if $xRy$ then $yRx$
- [[Antisymmetric]] if *no* two distinct elements are mutually related, if $xRy$ and $yRx$, $x=y$
- [[Transitive]] if you can "remove the middleman" in a chain of relations, if $xRy$, $yRz$, then $xRz$

A relation which is [[Reflexive]], [[Symmetric]], and [[Transitive]] is called an [[Equivalence Relation]]
- These are denoted $\sim$ 

An [[Equivalence Class]] is a **complete** set of elements that are all related to one another with an [[Equivalence Relation]] $\sim$

### Division
The formal definition of [[Division]]:
For any integer $a$ and ay nonzero integer $b$, there are unique integers $q$ and $r$ where 
$$a=bq+r \text{ and } 0\leq r\leq |b|$$
	$q$ is the *quotient* and $r$ is the *remainder*
	$q$ can be found as $q=\lfloor \frac{a}{b} \rfloor$
	And then $r$ can be found as$r=a-bq$
- When $r=0$, we say $b$ *divides* $a$, and we can write $b | a$
- A number is [[Prime]] if it has just two *divisors*

Divisibility Relation Properties
- **Divisibility** is [[Transitive]] and [[Reflexive]] on $\mathbb{Z}$
- It is neither [[Symmetric]] nor [[Antisymmetric]]
- If $a|b, b|a$ then $a=b$ or $a=-b$

With an integer $m$ called the [[Modulus]], we can define a [[Congruence]] relation as the set of integers where $a\equiv b (\mod m)$
We define $a\equiv b  \ (\text{mod } m)$, if and only if $m \ | \ a-b$

[[Congruence]] is an [[Equivalence Relation]], and denote the [[Equivalence Class]] with [[Congruence]] with the [[Modulus]] $m$ as:
$$\mathbb{Z} /m \mathbb{Z}$$
This set inherits addition, subtraction, and multiplication from $\mathbb{Z}$

> [[Congruence]] [[Equivalence Class]] example
> 	![[Pasted image 20241004200309.png]]

### Complex Numbers
[[Complex Numbers]] are numbers of the form $z=x+iy$, where $x$ and $y$ are real numbers, and $i$ satisfies $i^{2}=-1$
- $x$ is the *real part*
- $y$ is the *imaginary part*
- Addition of two complex numbers: $(a+bi)+(c+id)=(a+c)+i(b+d)$
- Multiplication: $(a+ib)(c+id)=(ac-bd)+i(ad+bc)$

> Recall:
> 	 Complex numbers are a number system, where every number has a root
> 	It is essentially a two-dimensional coordinate system, and can often be visualized as a plane
> 		$x$ as one axis, and $y$ as another

The [[Conjugate]] of $z=x+iy$ is the number $\overline z=x-iy$
- **Conjugating twice** "gets us back where we started"
- **Conjugation is an [[Involution]]**
- $z\overline{z}=x^{2}+y^{2}$, which is a real number
- The [[Modulus]] of $z$ is the distance between $z$ and the origin, or
$$|z|=\sqrt{x^{2}+y^{2}}$$
nth root of unity has the form $e^{2\pi ik/n}$
### Matrices
$m$-by-$n$ [[Matrix]] over $\mathbb{R}$ is an array of real numbers with $m$ rows and $n$ columns
- The [[Transpose]] of $m\times n$ matrix $A$ is the $n\times m$ matrix whose rows are columns of $A$
- A matrix $A$ has an [[Inverse]] if there exists a matrix $B$ such that $AB=BA=I$
	- Not every matrix has matrix
- Determinant can be calculated $detA=\sum\limits^{n}_{j=1}(-1)^{i+j}a_{i,j}det\overline A_{i,j}$
	- $detAB=detAdetB$
## Chapter 1: Groups & Subgroups

### Binary Operations
A [[Binary Operation]] on a set $S$ is a [[Function]] denoted with *infix notation* $*:S\times S\rightarrow S$
	Given two elements $a,b\in S$, $a*b$ is the [[Image]] of $(a,b)$ under the function $*$
		Or in other words, $a*b=*(a,b)$
**Properties**
- A [[Binary Operation]] where $a*b=b*a$ for all $a,b\in S$ is called [[Commutative]]
- A [[Binary Operation]] where $(a*b)*c=a*(b*c)$ is called [[Associative]]
	A [[Composition Law]] is an [[Associative]] [[Binary Operation]]
- A function can only be a [[Binary Operation]] if it is a function $S\times S\rightarrow S$ 

> Example
> 	Addition for integers is a a binary operation $+:\mathbb{Z}\times \mathbb{Z} \rightarrow \mathbb{Z}$
> 	The pair $(a,b)$ is sent to its sum $a+b$
> 	Addition is associative binary operation, but subtraction is not
> 		$(1-2)-3 \neq 1-(2-3)$
> Note the notation being used, $+:\mathbb{Z}\times \mathbb{Z} \rightarrow \mathbb{Z}$ 
> 	$+$ is an operation that takes $\mathbb{Z}\times \mathbb{Z}$ to $\mathbb{Z}$
> 	Or that it takes all pairs of elements in $\mathbb{Z}$ to another element in $\mathbb{Z}$ 

A [[Cayley Table]] can be used to represent [[Binary Operation|Binary Operations]]
	Caley tables are indexed by row and then column.
	The $(a,b)$-entry in the Caley table is $a*b$

> Example of a Caley Table
> 	![[Pasted image 20240925122215.png]]

### Groups
A [[Group]] is a set $G$ with two properties
- It has a [[Composition Law]] ([[Binary Operation]] that is [[Associative]]) $*$, called its *group operation*
- It has a unique element $e$ satisfying two axioms
	- **Identity**: $a*e=e*a=a$ for all $a$ in $G$
	- **Inversion**: for each $a$ in $G$ there exists $b$ in $G$ such that $a*b=b*a=e$
		- We also denote this element the [[Inverse]] of $a$ and denote it $a^{-1}$
We denote this group $(G,*,e)$. we often write $(G,*)$ or $G$ and just imply the rest
Properties
- The identity element $e$ is unique
- The inverse for any element is unique
- We can perform *right cancellation* and *left cancellation* on any group
	![[Right & Left Cancellation.png]]

If a [[Composition Law]] is [[Commutative]], we call its corresponding [[Group]] [[Abelian]]
	Sometimes people write the composition law in abelian groups using a plus sign +
	Never assume Commutativity

> There are many notations for [[Composition Law|Composition Laws]], but when we're dealing with a single group and only one composition law, we can use **Multiplicative Notation**, and not write a symbol for the composition law at all
> 	So writing $ab$ instead of $a*b$ 

The **Power** $g^{n}$ of an element in a group $G$ with $e$, and $g\in G$. $\forall n\in \mathbb{Z}$, is defined:
	If $n>0, g^{n}=g\cdot...\cdot g$ 
	If $n<0, g^{n}=(g^{-1})^{-n}$
	If $n=0, g^{0}=e$
[[Exponent Laws]]
^5061d8

> With the definition of $g^{n}$ we can simplify long expressions such as:
> 	$aabbbcddd=a^{2}b^{3}cd^{4}$
> 	For [[Abelian]] groups written **Additively**, $g^{n}$ can be written $ng$ (We usually use multiplicative notation however)
> Note the definition of groups does **not** include $a*b=b*a$ ([[Commutative|Commutativity]])

> Whenever Addition is defined, we may have a group, the set in question must contain $0$ (additive identity), and be closed under negation (additive inverses)
> 	So $\mathbb{N}$ is not a group under addition, but $\mathbb{Z, Q, R, C}$ are.
> Similarly for whwerever multiplication is defined, if the set contains 1 (multiplicative identity), and is closed under reciprocation (multiplicative inverses).
> 	So $\mathbb{Q,R,C}$ without $0$ are groups under multiplication
### Types of Groups
The [[Trivial Group]] is a set $G$ with one element, $e$.
	There is only one possible binary operation on $G$: $e*e=e$

A [[Cyclic Group]] is a group in which every element is is an [[#^5061d8|Integer Power]] of a single element, called a [[Generator]]
	We write $G=\langle g \rangle$ to mean $G$ is **cyclic** with generator $g$

The [[Dihedral Group]] $D_{n}$ is the set of reflections and rotations (**Symmetries**) of a regular [[n-gon]], under [[Composition]]

> Example of a Dihedral Group
> 	![[Pasted image 20240925182240.png]]

The [[Symmetric Group]] on a set $X$ is the set of all permutations on $X$ under [[Composition]], denoted $S_{X}$
- The Symmetric group on $\{1,...,n\}$ is denoted $S_{n}$, while the symmetric group on $\mathbb{N}$ is denoted $S_{\infty}$ 

A [[Permutation Group]] is a [[Subgroup]] of a symmetric group


> Example of a symmetric group $S_{2}$
> 	The only two elements of $S_{2}$ are its permutations 
> 	$id = \begin{bmatrix} 1 & 2 \\ 1 & 2\end{bmatrix}$ and $r=\begin{bmatrix} 1 & 2 \\ 2 & 1\end{bmatrix}$
> 		Here, the function $r^{2}$ sends $1\rightarrow 2\rightarrow 1$ and $2\rightarrow 1\rightarrow 2$, so $r^{2}=id$.
> 		Thus $S_{2}=\langle r\rangle$ is [[Cyclic Group|Cyclic]] with 2 elements
> 	($id$ is used to denote the identity function)

### Subgroups
> In additive notation, $ab ^ {-1}$ means $a-b$

A group $H$ is a [[Subgroup]] of a group $G$ is $H$ is a subset of $G$ and the group operation on $H$ is the same as the operation on $G$.
 Denoted $H\leq G$
	Meaning "$H$ is a subgroup of $G$"
Properties
- Subgroups are also groups themselves
- $H\leq G$ if and only if $H$ is non-empty and $ab^{-2}\in H$ for all $a,b\in H$


To check if a **subset** $H$ is a **subgroup**, check:
- $ab\in H$ for all $a,b\in H$ (The operation in $G$ restricted to $H$ is still a binary operation)
- $e\in H$ (Identity Element)
- $a^{-1}\in H$ for all $a$ in $H$ (Inverse in $G$ of every element of $H$ is in $H$)

A [[Generated Subgroup]] with a subset $S$ is the set of all possible combinations of the elements of $S$ (and inverses)
Denoted $\langle S \rangle$

>Sort of like [[Linear Combination|Linear Combinations]]

A [[Matrix Group]] is a subgroup of $GL_{n}$ 

### Isomorphisms
Two groups are [[Isomorphic]] if they have the same "structure"
Or, two groups are [[Isomorphic]] If between two groups $(G,*), (H,\circ)$, there is a [[Bijective|Bijection]] $\phi:G\rightarrow H$ such that for all $a,b\in G$, $\phi(a*b)=\phi(a)\circ \phi(b)$
	The function $\phi$ is called an [[Isomorphism]]
Denoted $G\cong H$ if $G$ and $H$ are [[Isomorphic]]

>So, two groups are [[Isomorphism|Isomorphisms]] is they have the same kind of "structure"
>A visual way to check if two groups are isomorphisms, is to dray [[Cayley Table|Cayley Tables]], color the elements, and see if the two elements have the same "patterns"

### Group Actions & Orbits
A Left [[Action]] of a group $G$ on a set $X$ is a function $G\times X\rightarrow X$ on a group which produces a set
An action must satisfy
- Identity: $e \ .x =x$ for all $x$
- Compatibility: $g \ .(h \ . x)=gh \ . x$
Denoted $G\curvearrowright X$ to mean"$G$ *acts* on $X$", and $g \ .x$ for an element of $G$ acting on an element $x$

> "a function $G\times X\rightarrow X$"
> 	Or a function which takes an element from $G$ and an element from $X$, to an element of $X$
> How an element $g\in G$ acts on an element $x\in X$ depends solely on how the action is defined
> An example of a simple action, is $g \ . x =x$

The [[Relation]] $x\sim y$ if and only if $g\ .x=y$ for some $g$ in $G$, is an [[Equivalence Relation]]
[[Equivalence Class|Equivalence Classes]] from this relation are called an [[Orbit]]

The [[Orbit]] of a group $G$ on an element $X$ is the *equivalence class* created from the *relation* defined by our (left or right) action
	Denoted $Orb_{G}(x)$, or $Gx$ to mean $g \ .x: \forall g\in G$ (All the ways $G$ acts on $x$), and $X/G$ to be the set of all orbits 
Properties
- $X/G$ is the set of all orbits
- Orbits *partition* their groups (Like equivalence classes)

Given $H\leq G$
- The number of orbits (size of $X/G$) is the *[[Index]] (of $X$ (in $G$))*, is denoted $[G : H]$ 

> Simplification
> 	The orbit is a set of all the ways that an element $x$, is related to other elements in $X$, via the set $G$ and the [[Action]] between $G$ and $X$

The (Left or Right) [[Coset]] of a group element $g\in G$ on a subgroup $H$ is the specific [[Orbit]] $gH$
The (Left or Right) [[Coset|Cosets]] of a group $G$ on a subgroups $H$ is the set of all the [[Coset|Cosets]] $gH$, or $H/G$

> Example of an orbit/coset which *partitions* its group
> 	Also note how each orbit is the same size, and the [[Index]] $[G : H] \times o(H)= o(G)$

### Order
The [[Order]] of a group is number of elements in G. If the number of elements in a group is infinite, then the group has *infinite order*
Properties
- The order of any subset $H$ of a group divides order of $G$


Denoted $o(G)=x$, or $|G|=x$ if a group has order $x\in \mathbb{Z}$, if a group has infinite order, then $o(G)=\infty$

The order of an element is least positive integer exponent $n$ such that $g^n=e$
- Identity element is only element of order 1

### GCD and Totient
The [[Greatest Common Divisor (GCD)]] of two numbers $a$ and $b$ is the largest natural number that is a factor of both $a$ and $b$
Denoted $gcd(a,b)$

Two numbers are [[Coprime]] (or **Relatively Prime**) if their [[Greatest Common Divisor (GCD)]] is $1$, meaning they have no common factors other than $1$

The [[Totient]] of $n$ is the number of integers between 1 and $n$ which are [[Coprime]] to $n$
Denoted $\varphi$

## Chapter 2: Families of Groups
### $\mathbb{Z}/n \mathbb{Z}$ and $(\mathbb{Z}/n \mathbb{Z})^x$
>Recall:
> 	$\mathbb{Z}/n \mathbb{Z}$ means the "[[Cyclic Group#^9baa47|Additive Group of Integers Modulus]] $n$", where every element becomes its *remainder* to $n$.
> In this section, We are covering properties of families of groups, starting with $\mathbb{Z}/n \mathbb{Z}$ and [[Cyclic Group|Cyclic Groups]]

We know from above that the *additive group of integers modulo $n$* is [[Cyclic Group|Cyclic]] with 1, such that:
$$\mathbb{Z}/n \mathbb{Z}=\langle[1]\rangle$$

**Properties of $\mathbb{Z}/n \mathbb{Z}$:**
- Integer $a$ generates $\mathbb{Z}/n \mathbb{Z}$ if and only if $gcd(a,n)=1$
	- Thus, the number of generators of $\mathbb{Z}/n \mathbb{Z}$ is $\varphi(n)$ ([[Totient]])
- If $[a]=[b]$, then $gcd(a,n)=gcd(b,n)$
- $\mathbb{Z}/n \mathbb{Z}$ is [[Abelian]] (because addition is abelian)


>Recall
>	$(\mathbb{Z}/n \mathbb{Z})^x$ means the "[[Cyclic Group#^5da85d|Multiplicative Group of Integers Modulus]] $n$", where every element becomes its *remainder* to $n$, and which is *invertible* under multiplication. 
>	This group is not necessarily cyclic, but teaches us a lot about *finite abelian groups*

A [[Residue Class]] $[a]$ is an element in a cyclic group, and also represents the set which can be generated with $[a]$
	A residue class $[a]$ is [[invertible]] if there exists a $[b]$ such that $[a][b]=[1]$

**Determining if an element $[a]$ in $\mathbb{Z}/n \mathbb{Z}$ is invertible**
- If $[a][b]=[0]$ but $[a],[b] \neq [0]$, then neither $[a]$ nor $[b]$ are invertible modulo $n$
- If $gcd(a,n)>1$, then $[a]$ is not invertible under $(\mathbb{Z}/n \mathbb{Z})^x$
- If $gcd(a,n)=1$, then $[a]$ is invertible modulo $n$

$(\mathbb{Z}/n \mathbb{Z})^x$ or $U(n)$ is the set of *Invertible Residue Classes* modulo $n$, or the [[Cyclic Group#^5da85d|Multiplicative Group of Integers Modulus]] $n$

**Properties of $(\mathbb{Z}/n \mathbb{Z})^x$ or $U(n)$**
- $U(n)$ is not necessarily cyclic
- An element $[a]\in (\mathbb{Z}/n \mathbb{Z})^x$ if and only if $gcd(a,n)=1$
- $o(U(n))=\varphi (n)$ ([[Totient]])
	- This is because we know if $gcd(a,n)=1$, then $[a]$ is invertible modulo $n$. So obviously number of elements where $gcd(a,n)=1$ is its order

The Euler-Fermat theorem states that if $a$ and $n$ are coprime, then
$$a^{\varphi(n)}\equiv1 \text{ mod($n$)}$$
	This is because $a^{o(G)}=e$ in any group $G$

> The properties of $\mathbb{Z}/n \mathbb{Z}$ and $(\mathbb{Z}/n \mathbb{Z})^x$ are very connected to the greatest common divisor

**Properties of Cyclic Groups**
- Any two cyclic groups of the same order are [[Isomorphic]]
- Every subgroup of a cyclic group is cyclic

### Dihedral Groups
> Originally, we defined a [[Dihedral Group]] $D_{n}$ as the set of reflections and rotations of a shape with $n$ sides
> We revise this definition, to a more general description of dihedral groups

A [[Dihedral Group]] is one that is generated by a pair of *nontrivial (identity) involutions* 
For the typical geometric analogy of the set of reflections ($f$) and rotations ($r$) of a shape with $n$ sides, every single reflection and rotation of a shape can be generated by 
- $f$, a flip
- $fr$, a flip and then a rotation

> Note:
> 	Dihedral Groups are similar to [[Cyclic Group|Cyclic Groups]], but instead of being generated by a single element, they are generated by a pair of elements, which are involutions
> How $f$ and $fr$ generate every possible flip and rotation:
> 	![[Dihedral Group Flips and Rotations.png]]

We can merge our *two involutions* definition with our *geometric* definition with:
Let $G$ be a dihedral group with generating involutions $a$ and $b$. $G$ is generated by the:
- Flip $f=a$
- Rotation $r=fb$
Where
- $f$ and $r$ are distinct
- $frf=r^{-1}$

And, if a group $G$ is generated by two distinct elements $f$ and $r$ such that 
- $o(f)=2$
- $frf=r^{-1}$
Then $G$ is [[Dihedral Group|Dihedral]] with generating involutions $f$ and $fr$

> Note:
> 	The fundamental relation between flip and rotation, is the identity $frf=r^{-1}$

Properties of Dihedral Groups
- If $o(r)$ is finite, $o(G)=2o(r)$
- Any two dihedral groups of the same order are [[Isomorphic]]
- [[Subgroup|Subgroups]] of dihedral groups are either *dihedral* or *cyclic*

### Center of a Group
The [[Center]] of a group $G$ is the set
$$Z(G)=\{g\in G:gh=hg \ \text{ for all $h$ in $G$ }\}$$
Elements in the center of a group are called **central**
**Properties**
- $Z(G)\leq G$, with equality if and only if $G$ is [[Abelian]]
- If a group's center is [[Trivial]], we say the group is **centerless**

>Explanation:
>	The center of the group is the group of elements in $G$ which [[Commutative|Commute]] with one another
>	Its a way to measure the "non-[[Abelian|Abelianness]]" of a group

### Presentation
The [[Presentation]] of a group $G$ is a way of describing a group, which takes the form:
$$G=\langle S|R\rangle$$
Where $S$ is a set of [[Generator|Generators]] for $G$ and $R$ is a list of [[Relation|Relations]] they satisfy

### Symmetric Groups
The [[Symmetric Group]] on the set $X$ is the set of all [[Permutation|Permutations]] on $X$ under *composition*
	Denoted $S_{X}$, or also $Sym(X)$ or
	The symmetric group on $\{1,...,n\}$ is denoted $S_{n}$
	Elements of a symmetric groups are usually denoted by *Greek Letters* and sometimes called *Substitutions*, while elements of underlying set $X$ are sometimes called *letters*
Properties
- A [[Permutation Group]] is any subgroup of a symmetric group

> Recall:
> 	A [[Permutation]] is by definition a [[Bijective]] [[Self Map]].
> 	You can imagine a permutation as a function which takes a set and "mixes" it up.
> 		Like imagine what a permutation is in the context of numbers, a random rearrangement of a set of numbers
> 		For example the permutation of the numbers :
> 			1 2 3 4 5 6 7 8
> 		Could be
> 			2 4 3 5 6 1 7 8
> 		The group theory permutation, would be the function which maps each number to its new value after the permutation (1->2, 2->4)
> 			Which is why it must be [[Injective]] and [[Surjective]], and be a self map
> 			If it isn't surjective or injective, it wouldn't be a permutation of the original set, because it would be missing some element.
> 			And it's a self map because the set of elements the permutation covers is the same

Let $\sigma$ be a permutation. A letter $i$ is said to be *moved* if $\sigma(i)\neq i$ and *fixed* if $\sigma(i)=i$. 
	The *Identity map* $\epsilon$ fixes everything
A *transposition* is a permutation that moves just two points

[[Cayley's Theorem]] says that *Subgroups of symmetric groups are "every group"*
	Formally: Every [[Group]] is [[Isomorphic]] to some permutation group

The isomorphism which creates the *permutation representation* of a group $G$ is
$$F:G\rightarrow Sym(G), g\to f_{g}$$
Where 
$$f_{g}:G\rightarrow G, f_{g}(x)=g \ .x$$
- $f_{g}$ is a self map, and can be proved to be *bijective*, thus it is a [[Permutation]]
- $F$ can be proved to be an [[Isomorphism]], and maps $G$ to permutations, thus $G$ is isomorphic to some permutation group

> Note:
	The reason this is true, is because every group can have as many *permutations* as elements
	And a map can be created which maps elements from the group, to permutations of that group?

#### Cycles
A **Cycle** in a [[Permutation]], is a set of elements which *loops back on itself* as the permutation is applied

A  $k$-*cycle* (with $k\geq 2$), denoted $(a_{1} \ a_{2} \ ... \ a_{k})$, is a [[Permutation]] which
- *Moves* $a_{i}$ to $a_{i+1}$ for $1\leq i\leq k$, 
- *Moves* $a_{k}$ to $a_1$, and
- *Fixes* everything else
Properties
- The *inverse* of a cycle can be obtained by writing it backwards such that $(a \ b \ c \ d \ e)^{-1}=(e\ d \ c\ b\ a)=(a\ e\ d\ c\ b)$
	- The *inverse* of a cycle is **always** a cycle
- The product of cycles is not necessarily a cycle
- An *infinite cycle* is a permutation denoted $(... \ a_{-1} \ a_{0} \ a_{1} \ a_{2}\ ...)$

> Example of a Cycle
> 	![[Cycle Example Image.png]]
> 	In this example, there are the cycles:
> 		$\uptau: 1\rightarrow 4\rightarrow 3\rightarrow 2\rightarrow 1 \rightarrow ...$  
> 		$\rho:1\rightarrow 2\rightarrow 3\rightarrow 4\rightarrow 5\rightarrow 1 \rightarrow ...$
> 		$\overline 3: 1\rightarrow 3\rightarrow 2\rightarrow 6\rightarrow 4 \rightarrow 5\rightarrow 1\rightarrow ...$  
> 	Using $k$-*cycle* notation,
> 		$\uptau = (1 \ 4 \ 3 \ 2)$
> 		$\rho = (1 \ 2 \ 3 \ 4 \ 5)$
> 		$\overline 3 = (1 \ 3 \ 2 \ 6 \ 4\ 5)$
> 	Note that cycles can be written in multiple ways, by "rotating" the elements
> 	They are all equally valid, but we prefer to write the "smallest" element first
> 		![[Cycle Rotation Example Image.png]]

We can also define the action and accompanying [[Orbit]] below, and use it to more formally define a cycle
	Let $X$ be a set and let $\sigma\in S_{X}$. Define $x\sim y$ [[IFF]] $\sigma^{k}(x)=y$ for some integer $k$. Then $\sigma$ is an [[Equivalence Relation]]
Properties
- This relation relates two elements if they are in the same *cycle
- The orbit of a particular $x\in X$ under this action is denoted $\langle \sigma\rangle x$
	- Called, the *orbit of $x$ under $\sigma$* 
	- The set of orbits *the orbits of $\sigma$*
	- $\langle \sigma\rangle x=\{\sigma^{k}(x):k\in \mathbb{Z}\}$

With this, a **Cycle** is a permutation with just one nontrivial orbit. If that orbit has size $k$, the cycle is called a $k$-*cycle* and $k$ is called the *length*

*Cycle Decomposition Theorem* says that every permutation can be written as a product of *disjoint cycles*, and each decomposition is *unique*. Formally, with our cycle orbit definition above,
	Let $X$ be a set and let $\sigma\in S_{X}$. Then there exists pairwise-disjoint cycles $\sigma_{i}\in S_{X}$ such that 
		$\sigma=\prod_{i}\sigma_{i}$
	Moreover, this decomposition into cycles is unique up to reordering. That is, if $\uptau_{j}\in S_{X}$ are any other pairwise-disjoint cycles whose product is $\sigma$, then there exists a bijection $\varphi$ such that $\uptau_{j}=\sigma_{\varphi(j)}$ for all $j$

The **Cycle Type** of a [[Permutation]] is a list of the number of cycles of every possible length, for that permutation
Formally, Let $\sigma\in S_{X}$ for each $k=1,2,\dots,\infty$ let $c_{k}$ be the number of orbits of size $k$. The *Cycle Type* of $\sigma$ is the ordered list of the $c_{k}$'s
Properties
- When $X$ is finite of order $n$, then so is every orbit, and $\sum\limits_{k\geq 1}kc_{k}=n$

> Example of Cycle Type
> 	The cycle type of $\sigma=\begin{pmatrix}1 & 2 & 3 & 4 & 5 \\ 2 & 1 & 4 & 5 & 3 \end{pmatrix}$ is $(0,1,1,0,0)$
> 	The cycle type of $\uptau=\begin{pmatrix}1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\ 4 & 7 & 1 & 3 & 8 & 6 & 2 & 5 \end{pmatrix}$ is $(1,2,1,0,0,0,0,0)$

## Chapter 3: Quotients and Morphisms

### Normality and Quotients
> Recall
> 	A [[Coset]] of $H$ in $G$ is a subset of the form $gH=\{gh:h\in H\}$, where $g\in G$
> 	Coset**s** are the [[Equivalence Class|Equivalence Classes]] of the *Coset Relation*, $a\sim b$ iff $b^{-1}a\in H$ iff $aH=bH$
> 	The set of [[Equivalence Class|Equivalence Classes]] (All Cosets of $H$ in $G$) is denoted $G/ H$ 

The product of two cosets $(aH)(bH)$ is the set of all products of elements of $aH$, with elements of $bH$, or the set:
$$\{ah_{1}bh_{2}:h_{1},h_{2}\in H\}$$
Properties
- Products of Cosets are cosets, or $(aH)(bH)=cH$ *if and only if* 
	- For all $h_{1},h_{2}$ in $H$, there exists $h_{3}$ in $H$ such that $ah_{1}bh_{2}=ch_{3}$
	- And for all $h_{3}$ in $H$, there exists $h_{1},h_{2}$ in $H$ such that $ch_{3}=ah_{1}bh_{2}$
- If the product of two cosets $aH, bH$ *does* produce a coset $cH$, then $c\sim ab$
	- Or the product of two cosets is the coset $cH=(ab)H$
- If $b^{-1}hb\in H$ for all $h\in H$, then $(aH)(bH)=abH$ (See [[Conjugation]])

> Examples:
> 	Let $G= \mathbb{Z}$ and $H=10 \mathbb{Z}$. Consider cosets $2+10 \mathbb{Z}$ and $3+10 \mathbb{Z}$
> 	$\begin{aligned} (2+10 \mathbb{Z})+(3+10 \mathbb{Z})&=\{\dots, -8, 2, 12, \dots\}+\{\dots, -7,3,13,\dots\} \\ &=\{\dots,-15,-5,5,15,25,\dots\} \\&= 5+10\mathbb{Z}\end{aligned}$
> 	Which is the same as $[2]+[3]=[5]$ in $\mathbb{Z}/10\mathbb{Z}$ 

A subgroup $H$ of a group $G$ is called [[Normal]] if $b^{-1}Hb\subseteq H$ for all $b\in G$, in which case we write $H\trianglelefteq G$ 
**Properties**
- Every subgroup $H$ of an [[Abelian]] group $G$ is normal, because $g^{-1}hg=hg^{-1}g=h$ for all $h$ and $g$
- For any group, the trivial subgroup $\{e\}$, and $G$ itself are always normal subgroups of $G$
	- If those are the only normal subgroups in $G$, then $G$ is called [[Simple]]
- If a subgroup is *Normal*, then both its left and right cosets are identical
- If $H$ is normal, then the product of any two cosets of $H$ will be a coset
- If the product of all cosets in $H$ produce cosets, then $H$ is normal
	- Let $H\leq G$. If $(aH)(bH)\in G/H$ for all $a,b\in G$, then $H\trianglelefteq G$

> Thoughts:
> 	We define normality, based on the criteria of the requirements for the product of two cosets, to produce another coset

Thus with the findings of products of cosets above
Let $H\trianglelefteq G$ ($H$ is normal under $G$). Then $G/H$ is a group under [[Coset#^69cd89|Coset Multiplication]], called the [[Quotient Group]]
**Properties**
- Taking the quotient of a finite group by a (proper) nontrivial normal subgroup always yields a smaller (nontrivial) group


> Simplification:
> 	The *cosets of a group under a subgroup* is a group, if that subgroup is *normal* 

All this is tied together by [[Conjugation]]
Any expression involving $g$ on one side and $g^{-1}$ on the other is an instance of *conjugation*
- $x$ and $gxg^{-1}$ and $g^{-1}x g$ are [[Conjugate]] elements
- $H$ and $gHg^{-1}$ are *Conjugate* [[Subgroup|Subgroups]]

> Notes:
> 	Informally, conjugacy can be see as a "change in perspective"
> 	And normal subgroups are ones which look the same from all "points of view"

> Example of Conjugates:
> Symmetric Groups
> 	Let $\sigma=(1 \ 2\ 3)(4 \ 5) \in S_5$ (Remember [[Symmetric Group|Symmetric Groups]]) 
> 	Let $f=\begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 5 & 4 & 3 & 2 & 1\end{pmatrix}$
> 		What permutation is $f\sigma f^{-1}$?
> 	$f\sigma f^{-1}=(1 \ 2)(3 \ 5 \ 4)$
> 	With a little rewriting, $f\sigma f^{-1}=(5 \ 4 \ 3)(2 \ 1)$
> 		Which looks like $\sigma$ originally, but with the letters replaced by their images under $f$
> 	This makes the "change in perspective" view make a little more sense
> Dihedral Groups:
> 	In $D_{n}$, $frf^{-1}=frf=r^{-1}$
> 		In other words, observing a clockwise rotation from behind makes it look like a counterclockwise rotation
> Linear Transformations
> 	Say we have a transformation $T$ in a vector space with a given basis, and a change of basis vector $B$
> 	To convert our linear transformation to the new basis, we compute $B^{-1}TB$ 
> 		Or, *conjugation*, a "change in perspective"

Properties of Conjugates
- For all $k-$cycles and all $f$'s $f(a_{1} \ \dots \ a_{k})f^{-1}=(f(a_{1}) \ \dots \ f(a_{k}))$
	- Conjugacy in $S_{n}$ amounts to *relabeling*
- If $a,b\in S_n$ have the same *cycle type*, they are conjugate in $S_n$
- For each $g$ in $G$, the function $c_{g}(x)=gxg^{-1}$ is an [[Automorphism]] of $G$
	- If $G$ is abelian, then $c_g(x)=x$ for all $x\in G$
- Conjugation moves subgroups to other subgroups
- Normal subgroups are *self-conjugate*, $gHg^{-1}=H$ for all $g\in G$

We summarize the above in the theorem
Let $G$ be a group and let $H\leq G$ 
- $H\trianglelefteq G$. That is, $gHg^{-1}\subseteq H$ for all $g\in G$ [[Normal|Normality]]
- $gH = Hg$ for all $g\in G$ (left and right [[Coset|Cosets]] are equal)
- $G/H$ is a group under *coset multiplication* ([[Quotient Group]])
- $H$ is self-conjugate: $gHg^{-1}=H$ for all $g\in G$ ([[Conjugation]])

### Morphisms
> Recall:
> 	[[Isomorphism|Isomorphisms]] are *Bijective Maps* between groups, which *preserve the group structure*
> 	What if we consider maps between groups, which preserve the group structure, but aren't Bijective Maps?

Let $G$ and $H$ be groups with composition laws $\cdot_{G}$ and $\cdot_{H}$ respectively.
A function $f:G\rightarrow H$ is called a [[Homomorphism]] if 
$$f(a\cdot_{G}b )=f(a)\cdot_{H}f(b)$$
	For all $a,b\in G$ 

> Examples of Homomorphisms:
> 	For a real number $a$, the function $x\rightarrow a^{x}$ is a homomorphism $\mathbb{R}\rightarrow \mathbb{R}^{X}$
> 		$a^{x+y}=a^{x}a^{y}$
> 	For any real exponent $\alpha$, $x\to x^{a}$  is a homomorphism $\mathbb{R}_{>0}\to \mathbb{R}_{>0}$
> 		$(xy)^{a}=x^{a}y^{a}$
> 

When talking about *homomorphisms*, we use different terms to refer to properties like injectivity, surjectivity, etc.

| function terms | homomorphism terms | Symbols                                      |
| -------------- | ------------------ | -------------------------------------------- |
| Injection      | [[Monomorphism]]   | $\hookrightarrow$ `\hookrightarrow`          |
| Injective      | Monic              |                                              |
| Surjection     | [[Epimorphism]]    | $\twoheadrightarrow$ `\twoheadrightarrow`    |
| Surjective     | Epic               |                                              |
| Bijection      | [[Isomorphism]]    | $\overset{\sim}{\to}$  `\overset{\sim}{\to}` |
| Bijective      | Isomorphic?        |                                              |
| Self-Map       | [[Endomorphism]]   |                                              |
| Permutation    | [[Automorphism]]   |                                              |
| Constant       | Trivial            |                                              |
> Note:
> 	Since monic and epic are dumb terms, many people don't use them, and use the function versions instead

**Properties of Homomorphisms**
- The image of a homomorphism $f:G\to H$ is the set $im \ f=\{f(a):a\in G\}$  
	- The image is a subgroup of $H$, $im \ f\leq H$
- The [[Kernel]] of $f:G\to H$ is the set $ker \ f=\{a\in G: f(a)=e\}$
	- A homomorphism is *injective* [[IFF]] its kernel is trivial
	- the kernel is a subgroup of $G$, $ker \ f\leq G$
- Composition of two injective (or surjective or bijective) homomorphisms is again an injective (or surjective or bijective) homomorphism
- Let $G$ and $H$ be groups with identity elements $e_{G}$ and $e_{H}$ respectively, and let $f:G\to H$ be a homomorphism. 
	- $f(e_{G})=e_{H}$
	- $f(x^{-1})=f(x)^{-1}$ for all $x$ in $G$
- Every homomorphism is an epimorphism onto its image, or $f:G\twoheadrightarrow f(G)$
- Every [[Monomorphism]] $f_{1}:G\hookrightarrow H$ yields an [[Isomorphism]] onto its image $f_{2}: G\overset{\sim}{\to} f_{1}(G)$
	- Because of this, monomorphisms are also called *embeddings*
- An [[Embedding]] is a generalization of the notion of subgroup. If $H\leq G$, then the inclusion map $f:H\to G$, $f(x)=x$ is an embedding

### Quotients vs. Morphisms
The single more important source of normal subgroups is kernels of homomorphisms

**Other Properties of Homomorphisms**
- Kernels of Homomorphisms are [[Normal]]
- Let $f:G\to H$ be a Homomorphism, suppose $G$ is finite. $o(G)=o(im \ f)o(ker \ f)$

The [[First Isomorphism Theorem]] states that
	If $f:G\to H$ is a [[Homomorphism]], then $G /ker \ f \cong im \ f$

> Note:
> 	Vector spaces are abelian groups under addition, and the first isomorphism theorem can be used to give a neat proof of the *Rank Nullity* theorem from linear algebra 
> 	(See page 117 in the lecture notes)

### The Alternating Group
> Recall:
> 	A [[Permutation Group]] is any subgroup of a symmetric group

The most important *permutation groups* are the *Alternating Groups* $A_{n}$. We will construct them here

The [[Parity]] (Or **Sign**) of a [[Permutation]] is the *parity* of the number of factors, in any decomposition of $\sigma$ into [[Transposition|Transpositions]]. If:
$$\sigma = \sigma_{1}\dots\sigma_{m}$$
	Then $sgn(\sigma)=(-1)^{m}= \begin{cases} \ \ \ 1  \text{ if } m \text{ is even} \\ -1 \text{ if } m \text{ is odd} \end{cases}$
**Properties**
- Let $\sigma\in S_{n}$ if $\sigma = \uptau_{1}\dots\uptau_{k}=\rho_{1}\dots\rho_{l}$ are two decompositions of $\sigma$ into transpositions, then $k$ and $l$ have the same *parity*
- Transpositions are odd - there is only one factor, and 1 is odd
- In general, the parity of a k-cycle is *opposite* the parity of $k$-cycle is *opposite* the parity of $k$
	- Cycles of even length are odd
	- Cycles of odd length are even
- $sgn: S_{n}\rightarrow \mu_{2}=\{1, -1\}$ is a [[Homomorphism]]

> Recall:
> 	The *parity* of a number, is whether its even, or odd
> Examples:
> 	The Identity Permutation is even
> 	The 4-cycle $(a \ b \ c\ d)$ can be written as $(a \ b)(b \ c)(c \ d)$ which has 3 factors, so it's odd
> 	The 7-cycle $(1 \ 2 \ 3 \ 4 \ 5 \ 6 \ 7)=(1 \ 7)(1 \ 6)(1 \ 5)(1 \ 4)(1 \ 3)(1 \ 2)$ has 6 factors, so it's its even
> 	In general, the parity of a k-cycle is *opposite* the parity of $k$-cycle is *opposite* the parity of $k$. 

The [[Alternating Group]] is the set of *even permutations in* $S_{n}$
$$A_{n}=\{\sigma\in S_{n}: sgn(\sigma)= 1\}$$
**Properties**
- $A_{n}\trianglelefteq S_{n}$
- $[S_{n}:A_{n}]=2$ for $n>1$
	- This means that the order of any $A_{n}$, is half the order of $S_{n}$
- $A_{1}$ and $A_{2}$ are trivial

> Examples of Alternating Groups
> 	$A_{3}$ has order $3$ because $S_{3}$ has order $6$. The signs of all the elements of $S_{3}$ are:
> 		 $\sigma = \{e, (1 \ 2), (1 \ 3), (2 \ 3),(1 \ 2 \ 3),(1 \ 3 \ 2)\}$
> 		 $sgn(\sigma)=\{1, -1, -1, -1, 1,1\}$
> 		 Thus $A_{3}=\{e, (1 \ 2 \ 3),(1 \ 3 \ 2)\}$. Note that $A_{3}$ is cyclic
> 	$A_{4}$ has order $12$ because $S_{4}$ has order 24

> Why Alternating Groups?
> 	Alternating Groups $A_{n}$ are an interesting groups, have a lot of interesting properties, and generally is a great source of examples (and counterexamples)

## Chapter 4
### Homomorphisms & Actions
> Recall:
> 	A Group [[Action]] of a group $G$ on a set $X$, is a function $G\times X\rightarrow X$, denoted $(g,x)\to g \ . \ x$, satisfying
> 		Identity, $e \ .x=x$ for all $x\in X$
> 		Compatibility, $g \ . h \ . x=gh  \ . x$ for all $x\in X | g,h\in G$ 
> 		We write $G\curvearrowright X$ to mean $G$ acts on $X$
> 	For $x\in X$, the [[Orbit]] of $x$ is the set of elements that $G$ sends $x$ to.
> 		$Orb_{G}(x)=Gx=\{g\ . x:g\in G\}$   
> 		The set of all orbits in $X$ is denoted $X/G$
> 		A subset $Y$ of $X$ is called [[G-Invariant]] if $g \ .y\in Y$ for all $y\in Y$ and all $g\in G$. 
> 			If $Y\subseteq X$ is $G$-invariant, then $G$ acts on $Y$ the same way it acts on $X$
> 	Unless otherwise specified, this course always talks about and notates in *left actions* (but assume all results can be proved about right actions too)

Given any action of $G$ on $X$ we can get a [[Homomorphism]] $\phi:G\to Sym(X)$ as $\phi(g)=x\to g \ .x$
	Informally, $\phi(g)=g \ .-$ for all $g\in G$
**Properties**
- If $G$ is any group, then a *Homomorphism* from $G$ to a symmetric group is termed a *permutation representation*
- Every permutation representation gives rise to a left action $G\curvearrowright X$
- Whenever $G\curvearrowright X$, we should think of the elements of $g$  pretending to be permutations of $G$

Let $G$ be an action on $X$, we can create more actions derived from this
**Actions**
- [[Pullback Action]]
	Let $f:H\rightarrow G$ be a [[Homomorphism]]. Then $H$ acts on $X$ by $h \ .x=f(h) \ . x$ for all $x\in X$ and $h\in H$
- [[Powerset Action]]
	Let $P(X)$ denote the [[Power Set]] of $X$ (Collection of all subsets of $X$)
	Then $G$ acts on $P(X)$ by $g \ . A=\{g \ .x=x\in A\}$ 
- Every group $G$ [[Action|Acts]] on itself by [[Conjugation]], then action $g. x=gxg^{-1}$
- $G$ [[Action|Acts]] on the set $S(G)$ of its own subgroups by [[Conjugation]], then action $g. H=gHg^{-1}$
### Stabilizers
Suppose $G\curvearrowright X$ and let $x\in X$. The [[Stabilizer]] (in $G$) of an element $x$ is the set of elements in $G$ that [[Fix]] $x$
$$Stab_{G}(x)=G_{x}=\{g\in G:g \ .x=x\}$$
**Properties**
- If two different elements move $x$ to the same place, then their "difference" must leave $x$ alone. If $g_{1}\ . x=g_{2} \ . x$, then $g_{2}^{-1}g_{1} \ . x=x$ and $g_{2}^{-1}g_{1}\in G_{x}$

A Stabilizer (in $G$) of a *subset* $S\in G$ is defined in two ways
The *Pointwise Stabilizer* of $S$ is:
$$\{g\in G:g\ .x=x \text{ for all $x$ in $S$}\}=\bigcap\limits_{x\in S}G_{x}$$
And the *Setwise Stabilizer* of $S$ (On the [[Powerset Action]]) is:
$$\{g\in G:g\ . S=S\}=G_{S}$$

> Example of Stabilizers:
> 	![[Stabilizer Puzzle Piece Example Image.png]]
> 	o(stabilizer) represents all the ways the piece can be rotated, so that it still looks identical

### Orbit Stabilizer Theorem
The [[Orbit Stabilizer Theorem]] states the relationship between orbits and stabilizer, where if $G\curvearrowright X$ and $x\in X$
$$[G:G_{x}]=|Gx|$$
In particular, $G$ is finite iff both $Gx$ and $G_{x}$ are finite, in which case
$$o(G)=|Gx|\cdot o(G_{x})$$

> Simplifying:
> 	The relationship between orbits and stabilizers is very close. 
> 		If $x$ has a large orbits, then most elements of $G$ are busy moving $x$ around, while if $x$ has a small orbit, then most of the elements of $G$ leave $x$ alone
> 	The above is true, because we already know from lagranges theorem, $o(G)=[G:G_{x}]o(G_{x})$ 
> 		Thus if $o(G)=|Gx|\cdot o(G_{x})$, then $[G:G_{x}]=|Gx|$
> 	The product of the size of the orbit of an element, with the order of its stabilizer, is always the order of the group
> 		You can view this anecdotally in examples of orbits and stabilizers

### Freeness & Transitivity
An action $G\curvearrowright X$ is called
- [[Faithful]] if no nontrivial element acts trivially, if $g \ .x=x$ for all $x$, then $g=e$
- [[Free]] (Fixed-Point) If every stabilizer is trivial, if $g \ .x=x$ then $g=e$
- [[Transitive]] if there is only one orbit, for any $x,y$ there is some $g$ such that $g \ .x=y$
We say $G$ acts on $X$ *faithfully / freely / transitively* in these cases respectively
**Properties**
- every free action is faithful
- "freeness" and "transitivity" can be seen as opposing forces
- An action which is both free and transitive is called *regular*
- Let $G\curvearrowright X$ with the permutation representation $\phi : G\rightarrow  S_{X}$. $\phi$ is injective iff the action is faithful

### Burnside's Lemma
The [[Fix Set]] of $g$ (Given $G\curvearrowright X$ and let $g\in G$) is:
$$X^{g}=\{x\in X: g\ .x=x\}$$

> Note:
> 	Fix-sets are *not* the same as stabilizers; $X^{g}\subseteq X$ while $G_{x}\leq G$
> 	Stabilizer is all the elements in $G$, which fix $x$, while fix-set is all the elements in $X$, which $g$ fixes

[[Burnside's Lemma]] says that *number of orbits = average number of fixed points*, 
If a finite group $G$ acts on a finite set $X$, then:
$$|X/ G|=\frac{1}{o(G)}\sum\limits_{g\in G}|X^{g}|$$
With this result, we can find that $k(G)=\frac{1}{o(G)}\sum\limits o(C_{G}(g))$

### Groups Acting on Groups
Group Actions
- Every group $G$ acts on itself by multiplication: $g \ .x=gx$
	- This action is transitive
	- This action is free
- Every group $G$ acts on itself by *conjugation* $g \ .x=gxg^{-1}$
	- The corresponding *permutation representation* $G\to Sym(G)$ is the map $g\to c_{g}$. Where $c_{g}$ is the conjugation action where $c_{g}(x)=gxg^{-1}$ 

The [[Conjugacy Class]] of an element $x\in G$ is the [[Orbit]] of $x$ under [[Conjugation]]
- Denoted $cl(x)$
- The number of conjugacy classes of $G$ is called the [[Class Number]] of $G$, denoted $k(G)$
**Properties**
- If $G$ is abelian, $cl(x)=\{x\}$ for all $x\in G$, so $k(G)=o(G)$
- This action is neither transitive, nor free, nor faithful
- Let $G$ be group an $H\leq G$. $H\trianglelefteq G$ iff $cl(x)\subseteq H$ for all  $x\in H$
- $|cl(x)|=[G:C_{G}(x)]$
	- $C_{G}$ is the *centralizer*, defined below
	- This states essentially the same thing as the [[Orbit Stabilizer Theorem]] but for specifically conjugacy classes

> Simplification
> 	"Conjugacy Class of an element is orbit of that element under conjugation"
> 	So all elements which there exists some $g$ where $x=gyg^{-1}$

The [[Centralizer]] of an element $x\in G$ is:
$$\begin{aligned} C_{G}(x)&=\{g\in G: g \ .x=x\} \\  &=\{g\in G: gxg^{-1}=x\} \\ &= \{g\in G : gx=xg\}\end{aligned}$$
**Properties**
- $Z(G)=\bigcap\limits_{x\in G} C_{G}(x)$

> Note: 
> 	The Centralizer is sort of like a merging/extended definition of the [[Stabilizer]] of an element, and the [[Center]] of a group

The [[Class Equation]] states that
$$o(G)=o(Z(G))+\sum\limits_{\text{one x per  nontrivial class}} [G:C_{G}(x)]$$

If $o(G)=p^{n}$ for some prime number $p$ and some integer $n\geq 1$, then $G$ is called a p-*group*
**Properties**
- *p-groups* have nontrivial centers, $Z(G)\neq e$

### Theorems of Cauchy and Sylow
[[Cauchy's Theorem]] states that if a prime number $p$ divides the order of a group $o(G)$ then $G$ has an element of order $p$

[[Sylow's Theorems]] are actually *three* theorems concerning the existence, properties, and number of subgroups of size $p^{k}$

A [[Sylow P-Subgroup]] of $G$ is a subgroup of order $p^{k}$ where $p^{k+1}\nmid o(G)$. The set of all Sylow p-subgroups of $G$ is denoted $Syl_{p}(G)$

Let $G$ be a finite group and let $p$ be a prime, then:
- $Syl_{p}(G)\neq \emptyset$
- $Syl_{p}(G)$ is a single conjugacy class of subgroups in of $G$. Every p-subgroup of $G$ is contained in a Sylow p-subgroup
- $|Syl_{p}(G)|\equiv 1 (\mod p)$, and if $o(G)=p^{k}r$ with $p\nmid r$, then $|Syl_{p}(G)| \ |  \ r$
## Chapter 5
> Time to revisit the classification of groups, and see what more we know now

### Direct Products
Given two groups $H$ and $K$, the [[Direct Product]] is the [[Composition Law]]
$$(h,k)(h',k')=(hh', kk')$$
**Properties**
- If $h$ and $k$ have finite order, then $o((h,k))=lcm\{o(h), o(k)\}$
- We can use this operation for a group structure on $H\times K$
- $C_{n}\times C_{m}$ is cyclic iff $gcd(n,m)=1$

**Other properties of $H$ and $K$**
- The projection maps $\pi_{1}:H\times K\to H$ and $\pi_{2}:H\times K\to K$ are epimorphisms
- $H\times \{e\}$ and $\{e\}\times K$ are normal subgroups of $H\times K$ with trivial intersection
- $(H\times K)/(H\times\{e\})\cong K$ and $(H\times K)/(\{e\}\times K)\cong H$

If $H$ and $K$ are subgroups of $G$, when is $G\cong H\times K$?
Let $G$ be a group with subgroups $H$ and $K$, when:
- $HK=G$
- $H\cap K$ is trivial
- Every element of $H$ commutes with every element of $K$
Then the multiplication map $m:H\times K\to G$ is an isomorphism
	$m(h_{1},k_{1})=h_{1}k_{1}$

We can also find that 
- If $HK=G$
- $H\cap K$ is trivial
Then every element $H$ commutes with every element of $K$ if and only if $H$ and $K$ are both normal in $G$

### Fundamental Theorem of Finite Abelian Groups
> We can use direct products to fully classify finite abelian groups
> The fundamental theorems of finite abelian groups says that every finite abelian group can be written uniquely as a direct product of cyclic groups of prime power order

The [[Fundamental Theorem of Finite Abelian Groups]] says that if  $G$ is a finite abelian group, There exists an integer $s\geq 0$, prime numbers $p_{1},\dots, p_{s}$(not necessarily distinct), and positive integer exponents $k_{1},\dots, k_{s}$ such that 
$$G\cong C_{p_{1}^{k_{1}}}\times \dots \times C_{p_{s}^{k_{s}}}$$
	Using the multiplication map

> Example:
> 	One example of this theorem is  $C_{60}\cong C_{4}\times C_{3}\times C_{5}$
> Note:
> 	This theorem is similar to the fundamental theorem of arithmetic
> 		Let $n$ be a positive integer. There exists an integer $s\geq 0$ and prime numbers $p_{1},\dots,p_{s}$ (not necessarily distinct) such that $n=p_{1}\dots p_{s}$
> 	And similar to the cycle decomposition theorem
> 		Let $\sigma$ be a permutation on a finite set. Then there exists an integer $s\geq 0$ and cycles $\sigma_{1},\dots,\sigma_{s}$ (pairwise disjoint) such that $\sigma=\sigma_{1}\dots\sigma_{s}$

**Properties Of Multiplying Groups**
Let $G,H,K$ be groups and let $1$ denote the trivial group
- "Identity": $G\times 1\cong 1\times G \cong G$
- "Associativity": $G\times (H\times K)\cong (G\times H)\times K\cong G\times H\times K$
	- Elements of $G\times (H\times K)$ looks like $(g,(h,k))$
	- Elements of $(G\times H)\times K$ looks like $((g,h),k)$
	- Elements of $G\times H\times K$ looks like $(g,h,k)$
- "Commutativity": $H\times K\cong K\times H$

> All groups of every order up to 15r
> 	![[MAT301 Notes Group Orders.png]]

### Isometries
> Lecture Slides: [[MAT301 Isometries Lecture.pdf]]

An [[Isometry]] is a bijective function $f:\mathbb{R}^{n}\to \mathbb{R}^{n}$ satisfying
$$d(f(u),f(v))=d(u,v)$$
	For all $u,v\in \mathbb{R}^{n}$
	The set of all isometries of $\mathbb{R}^{n}$ is denoted $Isom(\mathbb{R}^{n})$
**Properties**
- $Isom(\mathbb{R}^{n})\leq Sym(\mathbb{R}^{n})$
- $Isom(\mathbb{R}^{n})=TO$
- Every Isometry of $\mathbb{R}^{n}$ is affine, and has the form $x\to Ax+b$ for some orthogonal matrix $A$ and some vector $b$

The two most important kind of isometries are:
- Translations
	For every vector $v$, the function $t(x)=x+v$ is called *translation by $v$*. The set of all translations of $\mathbb{R}^{n}$ is denoted $T$
	- $T\cong \mathbb{R}^{n}$ and $T\leq Isom(\mathbb{R}^{n})$
- Isometries that fix the origin. 
	The set of all origin-fixing isometries of $\mathbb{R}^{n}$ is denoted $O$ 
	- $O$ is the group of orthogonal matrices $O_{n}(\mathbb{R})$ 
- $Isom(\mathbb{R}^{n})=TO$

Let $S\subseteq \mathbb{R}^{n}$. The *relative isometry group* of $S$ is the setwise stabilizer of $S$ in $Isom(\mathbb{R}^{n})$:
$$Isom_{\mathbb{R}^{n}}(S)=Stab_{Isom (\mathbb{R}^{n})}(S)=\{ f\in Isom(\mathbb{R}^{n}):f(S)=S\}$$
	Called "The isometry group of $S$ in $\mathbb{R^{n}}$", or "the symmetry group of $S$"