#mathematics #uoft/mat235 

In [[Linear Algebra]], the **Normal** of a [[Vector]] or a **Plane** is a vector or a plane [[Orthogonal|perpendicular/orthogonal]] to it.
The **normal** of a vector can be determined using the [[Dot Product]]. A vector $\vec{n}$ is **normal** to another vector $\vec{v}$ if and only if: $$\vec{v}\cdot\vec{n}=0$$

In [[Group Theory]], A [[Subgroup]] $H$ of a [[Group]] $G$ is called **Normal** if $b^{-1}Hb\subseteq H$ for all $b\in G$, in which case we write $H\trianglelefteq G$ ]]

---

# Group Theory
## Definition
A subgroup $H$ of a group $G$ is called [[Normal]] if $b^{-1}Hb\subseteq H$ for all $b\in G$, in which case we write $H\trianglelefteq G$ 

> Thoughts:
> 	We define normality, based on the criteria of the requirements for the product of two [[Coset|Cosets]], to produce another coset

Let $H\trianglelefteq G$ ($H$ is normal under $G$). Then $G/H$ is a group under [[Coset#^69cd89|Coset Multiplication]], called the [[Quotient Group]]
**Properties**
- Taking the quotient of a finite group by a (proper) nontrivial normal subgroup always yields a smaller (nontrivial) group

If a subgroup $H\leq G$, then the following are equivalent
- $gH = Hg$ for all $g\in G$ (Left and Right Cosets are equal)
- $G/H$ is a group under *coset multiplication* ([[Quotient Group]])
- $H$ is self-conjugate: $gHg^{-1}=H$ for all $g\in G$ ([[Conjugation]])
### Notation
- If a subgroup $H$ of a group $G$ is *Normal*, we write $H\trianglelefteq G$
	- $\trianglelefteq$ is `\trianglelefteq`
### Properties
- Every subgroup $H$ of an [[Abelian]] group $G$ is normal, because $g^{-1}hg=hg^{-1}g=h$ for all $h$ and $g$
- For any group, the trivial subgroup $\{e\}$, and $G$ itself are always normal subgroups of $G$
	- If those are the only normal subgroups in $G$, then $G$ is called [[Simple]]
- If a subgroup is *Normal*, then both its left and right cosets are identical
	- Normality is not affected by if an action is defined on the *left* or on the *right*
		- If $H\trianglelefteq G$, then $aH=Ha$ for all $a$ in $G$
	- If $H\trianglelefteq G$, then $(aH)(bH)=(Ha)(Hb)$ for all $a,b$ in $G$ (See [[Coset#^69cd89|Coset Multiplication]])
	- If $H$ is normal then $H\backslash G=G/H$
- If $H$ is normal, then the product of any two cosets of $H$ will be a coset
- If the product (See [[Coset#^69cd89|Coset Multiplication]]) of all cosets in $H$ produce cosets, then $H$ is normal
	- Let $H\leq G$. If $(aH)(bH)\in G/H$ for all $a,b\in G$, then $H\trianglelefteq G$
- Let $H\trianglelefteq G$. Then $gHg^{-1}=H$ for all $g\in G$, normal subgroups are  *self conjugate*

### Finding if Subgroup is Normal
- Let $G$ be group an $H\leq G$. $H\trianglelefteq G$ iff $cl(x)\subseteq H$ for all  $x\in H$
- Every subgroup of an [[Abelian]] group is normal
- Trivial subgroup $\{e\}$ and $G$ itself are normal
- If the product (See [[Coset#^69cd89|Coset Multiplication]]) of all cosets in $H$ produce cosets, then $H$ is normal
	- Let $H\leq G$. If $(aH)(bH)\in G/H$ for all $a,b\in G$, then $H\trianglelefteq G$

### Result of Being Normal
- If $H$ is normal, then the product of any two cosets of $H$ will be a coset
- If $H\trianglelefteq G$, then $G/H$ is a group under Coset Multiplication ([[Quotient Group]]) 
## Normal Subgroups
- [[Automorphism|Automorphisms]] of the form $c_{g}(x)=gxg^{-1}$ are called [[Inner]], automorphisms *not* of that form are called [[Outer]]. *Inner Automorphisms* constitute a normal subgroup of $Aut(G)$
	- The quotient is denoted $Out(G)$
# Linear Algebra
## Normal Vectors and Planes
A **normal vector to a plane** is a vector that is [[Orthogonal|perpendicular]] to every displacement vector between any two points to a plane

Given two points on a plane $P=(x,y,z)$ and $P_{0}=(x_{0},y_{0},z_{0})$, $\vec{P_{0}P}=(x-x_{0})\vec{i}+(y-y_{0})\vec{j}+(z-z_{0})\vec{k}$  is a vector whose head and tail both lie in the plane.
The normal vector $\vec{n}$ is by definition, [[Orthogonal]] to $\vec{P_{0}P}$, so $\vec{n}\cdot\vec{P_{0}P}=0$ 

The equation of the plane with normal vector $\vec{n}=\vec{ai}+\vec{bj}+\vec{ck}$ and containing the point $P_{0}={x_{0},y_{0},z_{0}}$ can be calculated as $$a(x-x_0)+b(y-y_0)+c(z-z_0)=0$$
Rewriting $d=ax_0+by_0+cz_0$, we can write the equation of the plane in the form $$ax+by+cz=d$$