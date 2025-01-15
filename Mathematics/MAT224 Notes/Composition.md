#mathematics/linear-algebra 
#uoft/mat224 

The **Composition** of two [Functions](../MAT235%20Notes/Function.md)/[Transformations](../MAT223%20Notes/Transformation.md)   $S$ and $T$ is denoted $TS:U\rightarrow W$ and is defined by $TS(v)=T(S(v))$ 

---
# Definition
Let $U$, $V$ and $W$ be [Vector Spaces](Vector%20Space.md), and let $S:U \rightarrow V$ and $T:V\rightarrow W$ be linear transformations
Let $\alpha, \beta$ and $\gamma$ be bases for $U,V$ and $W$

Then $[TS]^{\gamma}_{\alpha}=[T]^{\gamma}_{\beta}[S]^{\beta}_{\alpha}$

>Takeaways:
>The resulting [Basis](../MAT223%20Notes/Base%20(Basis).md) of the **Composition** transformation is related to the bases of the bases of the transformation going in
>And the matrix of the composition of two linear transformations is the product of the matrices of the transformations

## Properties
The **composition** of two linear transformations *is* still a linear transformation, and satisfies all requirements to be a linear transformation
	The composition of two linear *transformations* is the multiplication of the two transformations matrices
-  $Ker(S) \subset Ker(TS)$
-  $Im(TS) \subset Im(T)$
- $dim(Ker(S))\leq dim(Ker(TS))$
- $dim(Im(TS)) \leq dim(Im(T))$

# Bases