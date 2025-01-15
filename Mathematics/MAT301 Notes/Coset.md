#mathematics/group-theory #uoft/mat301 

A  (Left of Right) **Coset** of a [Subgroup](Subgroup.md) $H$ of a [Group](Group.md) $G$ is a subset of the form  
 $$gH=\{gh: h\in H\}$$
 
A (Left or Right) **Coset** of a [Group](Group.md) element $g\in G$ under an [Action](Action.md) on a [Subgroup](Subgroup.md) $H$ is the specific [Orbit](Orbit.md) ([Equivalence Class](Equivalence%20Class.md)) $gH$
- The *coset relation* relates $a\sim b$ [IFF](IFF) $b^{-1}a\in H$ [IFF](IFF) $aH=bH$

The space of all the (Left or Right) **Cosets** of a [Group](Group.md) $G$ on a [Subgroup](Subgroup.md) $H$ is denoted $GH$, and $G/H$ or $H \backslash G$  
	Cosets of a Group are the [Equivalence Classes](Equivalence%20Class.md) of the *Coset Relation* 

>Thoughts:  
>	A coset is either left or right, depending on how the [Action](Action.md) between $H$ and $G$ is defined  
>Simplification  
>	The coset of a group element $g\in G$, is, the set of all elements  $x\in G$, which are related to $g$ such that where $gH= xH$

---
# Definition

A  (Left of Right) **Coset** of a [Subgroup](Subgroup.md) $H$ of a [Group](Group.md) $G$ is a subset of the form  
 $$gH=\{gh: h\in H\}$$
 
The *coset relation* relates $a\sim b$ [IFF](IFF) $b^{-1}a\in H$ [IFF](IFF) $aH=bH$

A (Left or Right) **Coset** of a [Group](Group.md) element $g\in G$ under an [Action](Action.md) on a [Subgroup](Subgroup.md) $H$ is the specific [Orbit](Orbit.md) ([Equivalence Class](Equivalence%20Class.md)) $gH$
- The Equivalence Class created by the coset relation defined above

>Simplification  
>	The coset relation relates two elements $a,b\in G$, If they create the same *coset* on $H$  
>	The coset of a group element $g\in G$, is, the set of all elements  $x\in G$, which are related to $g$ such that where $gH= xH$

All the (Left or Right) **Cosets** of a [Group](Group.md) $G$ on a [Subgroup](Subgroup.md) $H$, $GH$ is denoted $G/H$
- The elements $G/H$ are cosets

>Understanding:  
>	A coset is either left or right, depending on how the [Action](Action.md) between $H$ and $G$ is defined

If the left and right cosets of a subset $H\leq G$ are equal, then the following are equivalent
- $H\trianglelefteq G$. That is, $gHg^{-1}\subseteq H$ for all $g\in G$ [Normality](../MAT235%20Notes/Normal.md)
- $G/H$ is a group under *coset multiplication* ([Quotient Group](Quotient%20Group.md))
- $H$ is self-conjugate: $gHg^{-1}=H$ for all $g\in G$ ([Conjugation](Conjugation.md))
## Notation
- *Left Cosets* are denoted $G/ H$ and $gH$, while *Right Cosets* are denoted $H \backslash G$  and $Hg$
- Most of the time when "cosets" are mentioned without specifying left or right, they mean left cosets
 
## Properties
- Cosets being [Equivalence Relations](Equivalence%20Relation.md), means that two cosets are either *identical*, or *disjoint*
	- Cosets *cannot* partially overlap
- An element $a\in G$ has $aH=H$ [IFF](IFF) $a\in H$
- $eH=H$

## Coset Multiplication
^69cd89

The product of two cosets $(aH)(bH)$ is the set of all products of elements of $aH$, with elements of $bH$, or the set:  
$$\{ah_{1}bh_{2}:h_{1},h_{2}\in H\}$$

> Examples:  
> 	Let $G= \mathbb{Z}$ and $H=10 \mathbb{Z}$. Consider cosets $2+10 \mathbb{Z}$ and $3+10 \mathbb{Z}$  
> 	$\begin{aligned} (2+10 \mathbb{Z})+(3+10 \mathbb{Z})&=\{\dots, -8, 2, 12, \dots\}+\{\dots, -7,3,13,\dots\} \\ &=\{\dots,-15,-5,5,15,25,\dots\} \\&= 5+10\mathbb{Z}\end{aligned}$  
> 	Which is the same as $[2]+[3]=[5]$ in $\mathbb{Z}/10\mathbb{Z}$ 

### Properties
- Products of Cosets are cosets, or $(aH)(bH)=cH$ *if and only if* 
	- For all $h_{1},h_{2}$ in $H$, there exists $h_{3}$ in $H$ such that $ah_{1}bh_{2}=ch_{3}$
	- And for all $h_{3}$ in $H$, there exists $h_{1},h_{2}$ in $H$ such that $ch_{3}=ah_{1}bh_{2}$
	- Or, all products of cosets in $H$ produce cosets, if and only if $H$ is [Normal](../MAT235%20Notes/Normal.md)
		- And if all cosets in $H$ produce cosets, then $H$ is [Normal](../MAT235%20Notes/Normal.md)
- If the product of two cosets $aH, bH$ *does* produce a coset $cH$, then $c\sim ab$
	- Or the product of two cosets is the coset $cH=(ab)H$
- If $b^{-1}hb\in H$ for all $h\in H$, then $(aH)(bH)=abH$ (See [Conjugation](Conjugation.md))
