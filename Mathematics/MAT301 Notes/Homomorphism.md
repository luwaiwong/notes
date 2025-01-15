#uoft/mat301 #mathematics/group-theory 

A **Homomorphism** is a function $f:G\rightarrow H$ where $f(a\cdot_{G}b )=f(a)\cdot_{H}f(b)$, where $G$ and $H$ are groups with composition laws $\cdot_{G}$ and $\cdot_{H}$ respectively.

---
## Definition
Let $G$ and $H$ be groups with composition laws $\cdot_{G}$ and $\cdot_{H}$ respectively.
A function $f:G\rightarrow H$ is called a [[Homomorphism]] if 
$$f(a\cdot_{G}b )=f(a)\cdot_{H}f(b)$$
	For all $a,b\in G$ 

### Notation
Many times, the distinction between composition laws $\cdot_{G}$ and $\cdot_{H}$ are not written, and instead of $f(a\cdot_{G}b )=f(a)\cdot_{H}f(b)$, we simply write $f(ab)=f(a)f(b)$
- Assume $f(a\cdot_{G}b )=f(a)\cdot_{H}f(b)$ when this is written if no further information is given
- If $G$ and $H$ are written *additively*, we write $f(a+b)=f(a)+f(b)$
- If $G$ is written multiplicatively, and $H$ additively, we write $f(ab)=f(a)+f(b)$
- And if $G$ is written additively and $H$ multiplicatively, $f(a+b)=f(a)f(b)$

Many properties of homomorphisms are written differently to functions

| function terms | homomorphism terms | Symbols                                      |     |
| -------------- | ------------------ | -------------------------------------------- | --- |
| Injection      | [[Monomorphism]]   | $\hookrightarrow$ `\hookrightarrow`          |     |
| Injective      | Monic              |                                              |     |
| Surjection     | [[Epimorphism]]    | $\twoheadrightarrow$ `\twoheadrightarrow`    |     |
| Surjective     | Epic               |                                              |     |
| Bijection      | [[Isomorphism]]    | $\overset{\sim}{\to}$  `\overset{\sim}{\to}` |     |
| Bijective      | Isomorphic?        |                                              |     |
| Self-Map       | [[Endomorphism]]   |                                              |     |
| Permutation    | [[Automorphism]]   |                                              |     |
| Constant       | Trivial            |                                              |     |
> Note:
> 	Since monic and epic are dumb terms, many people don't use them, and use the function versions instead
> Examples of Homomorphisms:
> 	For a real number $a$, the function $x\rightarrow a^{x}$ is a homomorphism $\mathbb{R}\rightarrow \mathbb{R}^{X}$
> 		$a^{x+y}=a^{x}a^{y}$
> 	For any real exponent $\alpha$, $x\to x^{a}$  is a homomorphism $\mathbb{R}_{>0}\to \mathbb{R}_{>0}$
> 		$(xy)^{a}=x^{a}y^{a}$

### Properties
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
- ==Kernels of Homomorphisms are [[Normal]]== 
- Let $f:G\to H$ be a Homomorphism, suppose $G$ is finite. $o(G)=o(im \ f)o(ker \ f)$

### Relation to Normal Subgroups
The single more important source of normal subgroups is kernels of homomorphisms

Kernels of Homomorphisms are [[Normal]], and the [[First Isomorphism Theorem]], which states that If $f:G\to H$ is a [[Homomorphism]], then 
$$G /ker \ f \cong im \ f$$

> Simplification:
> 	The *Group of Cosets*  of the kernel of the homomorphism $f$, is isomorphic to the image of $f$

### Relation to Actions
Given any [[Action]] of a [[Group]] $G$ on $X$ we can get a Homomorphism $\phi:G\to Sym(X)$ as $\phi(g)=x\to g \ .x$
	Informally, $\phi(g)=g \ .-$ for all $g\in G$
**Properties**
- If $G$ is any group, then a *Homomorphism* from $G$ to a symmetric group is termed a *permutation representation*
- Every permutation representation gives rise to a left action $G\curvearrowright X$
- Whenever $G\curvearrowright X$, we should think of the elements of $g$  pretending to be permutations of $G$