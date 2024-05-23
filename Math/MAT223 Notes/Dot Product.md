#mathematics #uoft/mat223 #uoft/mat235 

The **Dot product** (also known as the **scalar product**, or **Inner Product** represents the angle between two [vectors](Vector.md), and produces a [Scalar](Scalar.md)

The [Hermitian Inner Product](../MAT224%20Notes/Hermitian%20Inner%20Product.md) is a version of the dot product, for **Complex Number Spaces**

---
# Definition
## Notation
The dot product between two vectors $\vec v, \vec w$ can be notated:
- $\vec v\cdot \vec w$
- $\langle \vec v,\vec w\rangle$ 
	Notation in [MAT224](MAT224)

## Definitions
The **dot product** has two definitions, both of which are equivalent:
Geometric Definition
	$\vec{v}\cdot \vec{w} = || \vec{v}|| \ ||\vec{w}||cos\theta$
Algebraic Definition
	$\vec{v}\cdot \vec{w}=v_{1}w_{1}+v_{2}w_{2}+v_{3}w_{3}$ 

Two nonzero vectors $\vec{v}$ and $\vec{w}$ are  [perpendicular/orthogonal](Orthogonal.md) if, and only if $$\vec{v}\cdot\vec{w} = 0$$
## Formal General Definition
An **Inner Product** on $V$ is any mapping $\langle , \rangle:V\times V\rightarrow \mathbb{R}$ with the following three properties:
- For all vectors $x,y,z\in V$ and all $c\in \mathbb{R}$, $\langle cx+y,z\rangle = c\langle x,z\rangle+\langle y,z\rangle$
- For all $x,y\in V, \langle x,y\rangle = \langle y,x\rangle$
- For all $x\in V,\langle x,x\rangle \geq 0$, and $\langle x,x\rangle = 0$ only if $x=0$

> Its easily verified that the two dot product definitions we have, satisfy these properties


## Properties
1. $\vec{v}\cdot\vec{w}=\vec{w}\cdot\vec{v}$
2. $\vec{v}\cdot(\lambda\vec{w})=\lambda(\vec{v}\cdot\vec{w})=(\lambda\vec{v})\cdot\vec{w}$
3. $(\vec{v}+\vec{w})\cdot\vec{u}=\vec{v}\cdot\vec{u}+\vec{w}\cdot\vec{u}$

Taking a dot product of a vector with itself results in $$\vec{v}\cdot\vec{v}=||\vec{v}||^2$$This can be used to calculate the length of a vector 

# Calculations
