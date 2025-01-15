#mathematics/group-theory #uoft/mat301 

The **Symmetric Group** on the set $X$ is the set of all [Permutations](../../Statistics/STA237%20Notes/Permutation.md) on $X$ under *composition*


---
## Definition
The **Symmetric Group** $S_{X}$ on the set $X$ is the set of all [Permutations](../../Statistics/STA237%20Notes/Permutation.md) on $X$ under [Composition](../MAT224%20Notes/Composition.md)  
	An element of $S_{X}$ is typically denoted as $\sigma \in S_{X}$

The [Inverse](../MAT224%20Notes/Inverse.md) of a *permutation* $\sigma \in S_{X}$ in two-line notation can be found by swapping the lines, and sorting the columns so the top line matches the original  
	![Two Line Notation Inverse Example](Two%20Line%20Notation%20Inverse%20Example.png)

> The symmetric group is a group of bijective *functions* $X\rightarrow X$.  
> Thus *composition* here is the composition of functions  
> 	An example of function composition in two-line notation  
> 		![Symmetric Group Function Composition](Symmetric%20Group%20Function%20Composition.png)


A **Symmetric Group** has an [Action](Action.md) on its set $X$ by function evaluation  
	$S_{X} \curvearrowright X$ for any set in the way $\sigma . x=\sigma(x)$

### Notation
- A Symmetric Group on a Set $X$ is denoted $S_{X}$, or also $Sym(X)$
- An element of $S_{X}$ is typically denoted as $\sigma \in S_{X}$
- The symmetric group on $\{1,...,n\}$ is denoted $S_{n}$
- A element $i$ is **moved** under a permutation $\sigma$ if $\sigma(i)\neq i$ 
- An element is **fixed** if $\sigma(i)=i$. 
- A *transposition* is a permutation that moves just two points
- A [Permutation Group](Permutation%20Group.md) is any [Subgroup](Subgroup.md) of a symmetric group
- $(a_{1} \ a_{2} \ ... \ a_{k})$ denotes a [k-cycle](#^b70f6f)

[Two Line Notation](Two%20Line%20Notation) is often used to represent elements of a symmetric groups  
	A permutation $\sigma \in S_X$ can be written in *two-line notation* as:  
	$\sigma=\begin{pmatrix} a & b& c&d&e&f&g&h&i&\dots \\ b& c&a&g&d&h&i&e&f&\dots\end{pmatrix}$  
	Where $\sigma(a)=b, \sigma(g)=i$, etc...

>Elements of a symmetric groups are usually denoted by *Greek Letters* and sometimes called *Substitutions*, while elements of underlying set $X$ are sometimes called *letters*
### Subgroups
[Cayley's Theorem](Cayley's%20Theorem.md) says that that every  [Group](Group.md) is [Isomorphic](../MAT224%20Notes/Isomorphic.md) to some [Permutation Group](Permutation%20Group.md)  
	The reason this is true, is because every group can have as many *permutations* as elements  
	And a map can be created which maps elements from the group, to permutations of that group?

And thus by extension, every subgroup of a symmetric group is still a symmetric group

> Subgroups of symmetric groups are *every group*., any group is isomorphic to a subgroup of a permutation group

### Properties
- If $X$ has $n$ elements, then $S_{X}$ has $n!$ elements

[Conjugate](../MAT224%20Notes/Conjugate.md) Properties
- For all $k-$cycles and all $f$'s $f(a_{1} \ \dots \ a_{k})f^{-1}=(f(a_{1}) \ \dots \ f(a_{k}))$
	- Conjugacy in $S_{n}$ amounts to *relabeling*
- If $a,b\in S_n$ have the same *cycle type*, they are conjugate in $S_n$

> Example of Conjugates Under Symmetric Groups  
> 	Let $\sigma=(1 \ 2\ 3)(4 \ 5) \in S_5$  
> 	Let $f=\begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 5 & 4 & 3 & 2 & 1\end{pmatrix}$  
> 		What permutation is $f\sigma f^{-1}$?  
> 	$f\sigma f^{-1}=(1 \ 2)(3 \ 5 \ 4)$  
> 	With a little rewriting, $f\sigma f^{-1}=(5 \ 4 \ 3)(2 \ 1)$  
> 		Which looks like $\sigma$ originally, but with the letters replaced by their images under $f$  
> 	This makes the "change in perspective" view make a little more sense
## Cycles
^b70f6f

A [Cycle](../../Computer%20Science/CSC236/CSC236%20Notes/Cycle.md) in a [Permutation](../../Statistics/STA237%20Notes/Permutation.md), is a set of elements which *loops back on itself* as the permutation is applied

A  $k$-*cycle* (with $k\geq 2$), denoted $(a_{1} \ a_{2} \ ... \ a_{k})$, is a [Permutation](../../Statistics/STA237%20Notes/Permutation.md) which
- *Moves* $a_{i}$ to $a_{i+1}$ for $1\leq i\leq k$, 
- *Moves* $a_{k}$ to $a_1$, and
- *Fixes* everything else

We can also define the action and accompanying [Orbit](Orbit.md) below, and use it to help formally define a cycle  
	Let $X$ be a set and let $\sigma\in S_{X}$. Define $x\sim y$ [IFF](IFF) $\sigma^{k}(x)=y$ for some integer $k$. Then $\sigma$ is an [Equivalence Relation](Equivalence%20Relation.md)  
Properties
- This relation relates two elements if they are in the same *cycle
- The orbit of a particular $x\in X$ under this action is denoted $\langle \sigma\rangle x$
	- Called, the *orbit of $x$ under $\sigma$* 
	- The set of orbits *the orbits of $\sigma$*
	- $\langle \sigma\rangle x=\{\sigma^{k}(x):k\in \mathbb{Z}\}$

Then, A **Cycle** is a *permutation* with just one nontrivial orbit. If that orbit has size $k$, the cycle is called a $k$-*cycle* and $k$ is called the *length

> Example of a Cycle  
> 	![Cycle Example Image](Cycle%20Example%20Image.png)  
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
> 		![Cycle Rotation Example Image](Cycle%20Rotation%20Example%20Image.png)

The [Cycle Type](Cycle%20Type.md) of a [Permutation](../../Statistics/STA237%20Notes/Permutation.md) is a list of the number of cycles of every possible length, for that permutation  
Formally, Let $\sigma\in S_{X}$ for each $k=1,2,\dots,\infty$ let $c_{k}$ be the number of orbits of size $k$. The *Cycle Type* of $\sigma$ is the ordered list of the $c_{k}$'s  
Properties
- When $X$ is finite of order $n$, then so is every orbit, and $\sum\limits_{k\geq 1}kc_{k}=n$

> Example of Cycle Type  
> 	The cycle type of $\sigma=\begin{pmatrix}1 & 2 & 3 & 4 & 5 \\ 2 & 1 & 4 & 5 & 3 \end{pmatrix}$ is $(0,1,1,0,0)$  
> 	The cycle type of $\uptau=\begin{pmatrix}1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\ 4 & 7 & 1 & 3 & 8 & 6 & 2 & 5 \end{pmatrix}$ is $(1,2,1,0,0,0,0,0)$

### Properties of Cycles
- $\sigma$ is a *transposition* [IFF](IFF) $\sigma$ is a 2-cycle
- The *inverse* of a cycle can be obtained by writing it backwards such that $(a \ b \ c \ d \ e)^{-1}=(e\ d \ c\ b\ a)=(a\ e\ d\ c\ b)$
	- The *inverse* of a cycle is **always** a cycle
	- The composition of any cycle with its inverse is the *identity map*, which is not a cycle
- The product of cycles is not necessarily a cycle
- An *infinite cycle* is a permutation denoted $(... \ a_{-1} \ a_{0} \ a_{1} \ a_{2}\ ...)$
	- Also called $\infty$-cycles, or *chains* because they aren't really "cycles" in the literal sense
- Two permutations are *disjoint* if they do not move any of the same elements. Formally, $\sigma$ and $\uptau$ are *disjoint* if for all $x$ in $X$, $\sigma(x)\neq x$ implies $\uptau (x)=x$
	- Disjoint permutations commute, or $\sigma\uptau = \uptau \sigma$ for disjoint cycles $\sigma$ and $\uptau$
- Any $k$-cycle $(a_{1} \ \dots \ a_{k})$ can be written as a product of *transpositions* 
	- $(a_{1} \ \dots \ a_{k})=(a_{1} \ a_{2})\dots(a_{k-1} \ a_{k})$
	- Since any permutation in $n$ can be written as a product of transpositions, $S_{n}$ is generated by the transpositions in $S_{n}$
		- $S_{n}$ is generated by the transpositions $(1 \ 2),(2 \ 3), \dots, (n-1 \ n)$
		- $S_{n}$ is also generated by $\sigma=(1\ 2 \ \dots \ n)$ and $\uptau= (1\ 2)$


### Order of a Permutation
- If $\sigma$ and $\uptau$ are disjoint permutations of finite order, then $o(\sigma\uptau)=lcm(o(\sigma),o(\uptau))$ 
- If $\sigma$ has *cycle type* $(c_{1},c_{2},\dots ;c_\infty)$, and $c_{\infty}=0$ and $c_{k}=0$ for all but finitely many $k$, then $o(\sigma)=lcm(k:c_{k}>0)$

### Cycle Decomposition Theorem

[Cycle Decomposition Theorem](Cycle%20Decomposition%20Theorem) says that every permutation can be written as a product of *disjoint cycles*, and each decomposition is *unique*

> Examples of breaking up permutations in terms of cycles  
> 	Take the permutation $\sigma = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 2 & 1 & 4 & 5 & 3\end{pmatrix}$  
> 		This permutation is obviously *not* a cycle, but it is a product of the cycles  
> 			$(1\ 2)$ and $(3\ 4\ 5)$  
> 		Such that $\sigma=(1 \ 2)(3\ 4\ 5)=(3\ 4\ 5)(1\ 2)$  
> 	Or take $\uptau=\begin{pmatrix}1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\ 4 & 7 & 1 & 3 & 8 & 6 & 2 & 5 \end{pmatrix}$  
> 		$\uptau=(1 \ 4\ 3)(2\ 7)(5\ 8)$  
> 	Note that we can technically break a permutation into cycles in multiple different ways, the important factor here is we are looking for *disjoint cycles*  
> 		Take for example $(1\ 2\ 3\ 4\ 5)=(1\ 2)(2\ 3)(3\ 4)(4\ 5)=(1\ 4\ 5)(1\ 2\ 3)$

Formally, it says:  
Let $X$ be a set and let $\sigma\in S_{X}$. Then there exists pairwise-disjoint cycles $\sigma_{i}\in S_{X}$ such that  
$$\sigma=\prod_{i}\sigma_{i}$$  
Moreover, this decomposition into cycles is unique up to reordering. That is, if $\uptau_{j}\in S_{X}$ are any other pairwise-disjoint cycles whose product is $\sigma$, then there exists a bijection $\varphi$ such that $\uptau_{j}=\sigma_{\varphi(j)}$ for all $j$
## Permutations
- The identity map is denoted $\epsilon$, and **fixes** every element
	- Is the only element in any symmetric group to do so
- Permutation of [Dihedral Groups](Dihedral%20Group.md)
	- ![Permutation of Dihedral Group image](Permutation%20of%20Dihedral%20Group%20image.png)