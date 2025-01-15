#mathematics #uoft/mat235 

In [Linear Algebra](Linear%20Algebra), the **Normal** of a [Vector](../MAT223%20Notes/Vector.md) or a **Plane** is a vector or a plane [perpendicular/orthogonal](../MAT223%20Notes/Orthogonal.md) to it.  
The **normal** of a vector can be determined using the [Dot Product](../MAT223%20Notes/Dot%20Product.md). A vector $\vec{n}$ is **normal** to another vector $\vec{v}$ if and only if: $$\vec{v}\cdot\vec{n}=0$$

In [Group Theory](Group%20Theory), A [Subgroup](../MAT301%20Notes/Subgroup.md) $H$ of a [Group](../MAT301%20Notes/Group.md) $G$ is called **Normal** if $b^{-1}Hb\subseteq H$ for all $b\in G$, in which case we write $H\trianglelefteq G$ ]]

---

# Group Theory
## Definition
A subgroup $H$ of a group $G$ is called [Normal](.md) if $b^{-1}Hb\subseteq H$ for all $b\in G$, in which case we write $H\trianglelefteq G$ 

> Thoughts:  
> 	We define normality, based on the criteria of the requirements for the product of two [Cosets](../MAT301%20Notes/Coset.md), to produce another coset

Let $H\trianglelefteq G$ ($H$ is normal under $G$). Then $G/H$ is a group under [](../MAT301%20Notes/Coset.md#^69cd89|Coset%20Multiplication), called the [Quotient Group](../MAT301%20Notes/Quotient%20Group.md)  
**Properties**
- Taking the quotient of a finite group by a (proper) nontrivial normal subgroup always yields a smaller (nontrivial) group

If a subgroup $H\leq G$, then the following are equivalent
- $gH = Hg$ for all $g\in G$ (Left and Right Cosets are equal)
- $G/H$ is a group under *coset multiplication* ([Quotient Group](../MAT301%20Notes/Quotient%20Group.md))
- $H$ is self-conjugate: $gHg^{-1}=H$ for all $g\in G$ ([Conjugation](../MAT301%20Notes/Conjugation.md))
### Notation
- If a subgroup $H$ of a group $G$ is *Normal*, we write $H\trianglelefteq G$
	- $\trianglelefteq$ is `\trianglelefteq`
### Properties
- Every subgroup $H$ of an [Abelian](../MAT301%20Notes/Abelian.md) group $G$ is normal, because $g^{-1}hg=hg^{-1}g=h$ for all $h$ and $g$
- For any group, the trivial subgroup $\{e\}$, and $G$ itself are always normal subgroups of $G$
	- If those are the only normal subgroups in $G$, then $G$ is called [Simple](../MAT301%20Notes/Simple.md)
- If a subgroup is *Normal*, then both its left and right cosets are identical
	- Normality is not affected by if an action is defined on the *left* or on the *right*
		- If $H\trianglelefteq G$, then $aH=Ha$ for all $a$ in $G$
	- If $H\trianglelefteq G$, then $(aH)(bH)=(Ha)(Hb)$ for all $a,b$ in $G$ (See [](../MAT301%20Notes/Coset.md#^69cd89|Coset%20Multiplication))
	- If $H$ is normal then $H\backslash G=G/H$
- If $H$ is normal, then the product of any two cosets of $H$ will be a coset
- If the product (See [](../MAT301%20Notes/Coset.md#^69cd89|Coset%20Multiplication)) of all cosets in $H$ produce cosets, then $H$ is normal
	- Let $H\leq G$. If $(aH)(bH)\in G/H$ for all $a,b\in G$, then $H\trianglelefteq G$
- Let $H\trianglelefteq G$. Then $gHg^{-1}=H$ for all $g\in G$, normal subgroups are  *self conjugate*

### Finding if Subgroup is Normal
- Let $G$ be group an $H\leq G$. $H\trianglelefteq G$ iff $cl(x)\subseteq H$ for all  $x\in H$
- Every subgroup of an [Abelian](../MAT301%20Notes/Abelian.md) group is normal
- Trivial subgroup $\{e\}$ and $G$ itself are normal
- If the product (See [](../MAT301%20Notes/Coset.md#^69cd89|Coset%20Multiplication)) of all cosets in $H$ produce cosets, then $H$ is normal
	- Let $H\leq G$. If $(aH)(bH)\in G/H$ for all $a,b\in G$, then $H\trianglelefteq G$

### Result of Being Normal
- If $H$ is normal, then the product of any two cosets of $H$ will be a coset
- If $H\trianglelefteq G$, then $G/H$ is a group under Coset Multiplication ([Quotient Group](../MAT301%20Notes/Quotient%20Group.md)) 
## Normal Subgroups
- [Automorphisms](../MAT301%20Notes/Automorphism.md) of the form $c_{g}(x)=gxg^{-1}$ are called [Inner](Inner), automorphisms *not* of that form are called [Outer](Outer). *Inner Automorphisms* constitute a normal subgroup of $Aut(G)$
	- The quotient is denoted $Out(G)$
# Linear Algebra
## Normal Vectors and Planes
A **normal vector to a plane** is a vector that is [perpendicular](../MAT223%20Notes/Orthogonal.md) to every displacement vector between any two points to a plane

Given two points on a plane $P=(x,y,z)$ and $P_{0}=(x_{0},y_{0},z_{0})$, $\vec{P_{0}P}=(x-x_{0})\vec{i}+(y-y_{0})\vec{j}+(z-z_{0})\vec{k}$  is a vector whose head and tail both lie in the plane.  
The normal vector $\vec{n}$ is by definition, [Orthogonal](../MAT223%20Notes/Orthogonal.md) to $\vec{P_{0}P}$, so $\vec{n}\cdot\vec{P_{0}P}=0$ 

The equation of the plane with normal vector $\vec{n}=\vec{ai}+\vec{bj}+\vec{ck}$ and containing the point $P_{0}={x_{0},y_{0},z_{0}}$ can be calculated as $$a(x-x_0)+b(y-y_0)+c(z-z_0)=0$$  
Rewriting $d=ax_0+by_0+cz_0$, we can write the equation of the plane in the form $$ax+by+cz=d$$