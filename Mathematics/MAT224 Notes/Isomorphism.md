#uoft/mat224 #mathematics/linear-algebra 

In Group Theory, an **Isomorphism** is a [Function](../MAT235%20Notes/Function.md) $\phi$ which is [Bijective](../MAT301%20Notes/Bijective.md), and such that  
$$\phi(ab)=\phi(a)\phi(b)$$

---
# Linear Algebra

In Linear Algebra, A Linear Transformation is an Isomorphism if it is Invertible

If $T:V\rightarrow V$ is a linear transformation of a two-dimensional [Vector Space](Vector%20Space.md) $V$, $T$ is an [Isomorphism](.md) if and only if $det([T]_{a}^{a})\neq 0$

Related  
	[Isomorphic](Isomorphic.md)

---
# Group Theory
An **Isomorphism** is a [Function](../MAT235%20Notes/Function.md) $\phi: G\rightarrow H$ which is [Bijective](../MAT301%20Notes/Bijective.md), and such that  
$$\phi(ab)=\phi(a)\phi(b)$$  
If there exists an *isomorphism* between [Groups](../MAT301%20Notes/Group.md) $G$ and $H$, then we can say $G$ and $H$ are [Isomorphic](Isomorphic.md)


## Properties
- The order of an element under an *isomorphism* is: $o(g)=o(\phi(g))$ 
	- A function with this property is not necessarily an isomorphism
- For groups $G,H$ with generators $G=\langle g_{1},...,g_{k}\rangle$, the isomorphism $\varphi: G\rightarrow H$ is uniquely determined by what it maps the generators of $G$ to
- An Isomorphism from a group $G$ to itself, is called an [Automorphism](../MAT301%20Notes/Automorphism.md)
