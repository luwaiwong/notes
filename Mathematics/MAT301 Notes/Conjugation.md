#mathematics/group-theory #uoft/mat301 

**Conjugation** is any expression involving $g$ on one side and $g^{-1}$ on the other is an instance of *conjugation*

---

## Definition
**Conjugation** is the [[Action]]  
$$g.x=gxg^{-1}$$
Of a [[Group]] $g\in G$ on a set $X$

The orbits of this conjugation are called [[Conjugacy Class|Conjugacy Classes]], and The [[Index|Number]] of these classes is called the *class number* of $G$
	Denoted $k(G)$

If two elements are related by conjugation, we call them [[Conjugate]]
- $x$ and $gxg^{-1}$ and $g^{-1}x g$ are [[Conjugate]] elements
- $H$ and $gHg^{-1}$ are *Conjugate* [[Subgroup|Subgroups]]

If a subgroup $H\leq G$ is self conjugate where $gHg^{-1}=H$ , the following are equivalent
- $H\trianglelefteq G$. That is, $gHg^{-1}\subseteq H$ for all $g\in G$ [[Normal|Normality]]
- $gH = Hg$ for all $g\in G$ (left and right [[Coset|Cosets]] are equal)
- $G/H$ is a group under *coset multiplication* ([[Quotient Group]])

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

### Conjugate Elements

### Properties
- For all $k-$cycles and all $f$'s $f(a_{1} \ \dots \ a_{k})f^{-1}=(f(a_{1}) \ \dots \ f(a_{k}))$
	- Conjugacy in $S_{n}$ amounts to *relabeling*
- If $a,b\in S_n$ have the same *cycle type*, they are conjugate in $S_n$
- For each $g$ in $G$, the function $c_{g}(x)=gxg^{-1}$ is an [[Automorphism]] of $G$
	- If $G$ is abelian, then $c_g(x)=x$ for all $x\in G$
- Conjugation moves subgroups to other subgroups
- Normal subgroups are *self-conjugate*, $gHg^{-1}=H$ for all $g\in G$