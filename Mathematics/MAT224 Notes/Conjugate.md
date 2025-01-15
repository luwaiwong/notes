#mathematics/linear-algebra 
#uoft/mat224 

In [[Group Theory]], the **Conjugate** of any element $x$, is another element of the form $gxg^{-1}$ or $g^{-1}xg$, where $g$ is another element

In [[Linear Algebra]], the **Conjugate** of a [[Complex Numbers|Complex Number]], notated $\overline z$ of a complex number $z=a+bi$, is $\overline z=a-bi$

---
# Group Theory
> See also:
## Definition
Any expression involving $g$ on one side and $g^{-1}$ on the other is an instance of *conjugation*
- $x$ and $gxg^{-1}$ and $g^{-1}x g$ are *Conjugate* elements
- $H$ and $gHg^{-1}$ are *Conjugate* [[Subgroup|Subgroups]]

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

### Properties
- For all $k-$cycles and all $f$'s $f(a_{1} \ \dots \ a_{k})f^{-1}=(f(a_{1}) \ \dots \ f(a_{k}))$
	- Conjugacy in $S_{n}$ amounts to *relabeling*
- If $a,b\in S_n$ have the same *cycle type*, they are conjugate in $S_n$
- For each $g$ in $G$, the function $c_{g}(x)=gxg^{-1}$ is an [[Automorphism]] of $G$
	- If $G$ is abelian, then $c_g(x)=x$ for all $x\in G$
- Conjugation moves subgroups to other subgroups
- If two elements are conjugate, then they have the same order

# Linear Algebra
## Properties
- Every real number $x\in \mathbb{R}$ equals its complex conjugate
- If a complex number $z=\overline z$, then it is a real number
- If a complex number $z=-\overline z$, then it is purely imaginary
- $\overline{zw}=\overline z \ \overline w$
- $\overline{\overline z}=z$ 