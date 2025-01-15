#mathematics #uoft/mat223 #uoft/mat235 

The **Dot product** (also known as the **scalar product**, or **Inner Product** represents the angle between two [vectors](Vector.md), and produces a [Scalar](Scalar.md)

The [Hermitian Inner Product](../MAT224%20Notes/Hermitian%20Inner%20Product.md) is a version of the dot product, for **Complex Number Spaces**

> Note that definitions of the two notes have been merged

---
# Definition
An **Inner Product** on $V$ is any mapping $\langle , \rangle:V\times V\rightarrow \mathbb{R}$ with the following properties:  
For all $x,y\in V$
- **Linearity in the first slot:** For all $c\in \mathbb{R}$, $\langle cx+y,z\rangle = c\langle x,z\rangle+\langle y,z\rangle$
-  **Conjugate Symmetry:** $\langle x,y\rangle = \overline{\langle y,x\rangle}$
	- Note that in Real number spaces, $\overline{x}=x$, so we have regular symmetry $\langle x,y\rangle = \langle y,x\rangle$
- **Positivity:** For all $x\in V,\langle x,x\rangle \geq 0$, 
- **Positive Definiteness:** $\langle x,x\rangle = 0$ only if $x=0$

> Its easily verified that the two dot product definitions we have, satisfy these properties  
>Note that the second property says that $\langle v,v\rangle=\overline{\langle v,v\rangle}$, which implies that $\langle v,v\rangle\in \mathbb{R}$  
	This ensures that the length of a vector is a non-negative real number  
>**Sesquilinearity**  
	This also means that the inner product is [Conjugate](../MAT224%20Notes/Conjugate.md) linear in the second variable rather than linear  
	$\langle u,av\rangle=\overline{\langle av,u\rangle}=\overline{a\langle v,u\rangle}=\overline{a}\overline{\langle v,u\rangle}=\overline a \langle u,v\rangle$  
	This property is sometimes called **Sesquilinearity**

There are two equivalent dot products for regular vectors:  
Geometric Definition  
	$\vec{v}\cdot \vec{w} = || \vec{v}|| \ ||\vec{w}||cos\theta$  
Algebraic Definition  
	$\vec{v}\cdot \vec{w}=v_{1}w_{1}+v_{2}w_{2}+v_{3}w_{3}$ 

Two nonzero vectors $\vec{v}$ and $\vec{w}$ are  [perpendicular/orthogonal](Orthogonal.md) if, and only if $$\vec{v}\cdot\vec{w} = 0$$

The [Norm](../MAT224%20Notes/Norm.md) of a vector $v$ is the product  
$$||v||=\sqrt{ \langle v,v \rangle  }$$
## Notation
The dot product between two vectors $\vec v, \vec w$ can be notated:
- $\vec v\cdot \vec w$
- $\langle \vec v,\vec w\rangle$  
	Notation in [MAT224](MAT224) and [MAT246](../MAT246/MAT246.md)

Both are equivalent, but $\langle v,w \rangle$ will be used more

## Properties
- $\langle u+v,u+v \rangle = \langle u,u \rangle + \langle u,v \rangle+ \langle v,u \rangle+ \langle v,v \rangle$
- $\langle \vec{v},\vec{v} \rangle =||\vec{v}||^2$ (See [Norm](../MAT224%20Notes/Norm.md))
- [Cauchy-Schwarz Inequality](../MAT246/Cauchy-Schwarz%20Inequality.md)
- [Triangle Inequality](Triangle%20Inequality): $|x+y|\leq|x_{1}|+|x_{2}|$
- [Parallelogram Law](Parallelogram%20Law):
	- |$x-y|^{2}+|x+y|^{2}=2(|x|^{2}+|y|^{2})$
	- $||x+y||^{2}+||x-y||^{2}=2(||u||^{2}+||v||^{2})$
