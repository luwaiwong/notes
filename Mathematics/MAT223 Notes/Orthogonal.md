#mathematics #uoft/mat223 #uoft/mat235 

Another way to describe [Perpendicular](../MAT235%20Notes/Perpendicular.md). 

Two vectors are **orthogonal** if their [Dot Product](Dot%20Product.md) equals to $\vec{0}$ 

---
# Definition
Two vectors are **orthogonal** if their [Dot Product](Dot%20Product.md) equals to $\vec{0}$ 

A set of nonzero vectors $v_{1},...,v_{k}\in V$ is called [Orthogonal](.md) if $\langle v_{i},v_{j}\rangle = 0$ for $i\neq j$ if in addition $\langle v_{i}, v_{i}\rangle = 1$, 

If a set of vectors are **Orthogonal**, and are [Unit Vectors](../MAT235%20Notes/Unit%20Vector.md), then they are [Orthonormal](Orthonormal.md)

## Projection Matrix to Vectors Orthogonal to $n$
^62d748

To project onto a plane in $\mathbb{R}^{3}$ that is perpendicular to $n$, use the formula
$$P=I-\frac{nn^{T}}{||n||^{2}}$$
	Where $I$ is the  [Identity Matrix](../MAT224%20Notes/Identity%20Matrix.md)