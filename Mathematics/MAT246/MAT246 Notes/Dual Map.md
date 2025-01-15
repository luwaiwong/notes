#mathematics/linear-algebra #uoft/mat246 

The **Dual Map** of a [[Linear Transformation]] $T\in L(V,W)$, is the linear map $T'\in L(W', V')$ defined for each $\varphi\in W'$ by 
$$T'(\varphi)=\varphi\circ T$$

---
# Notes
## Notation
The **Dual Map** of a linear transformation $T$, is denoted $T'(\varphi)$

## Definition
The [[Dual Map]] of a transformation $T\in L(V,W)$ is the linear map $T'\in L(W', V')$ defined for each $\varphi\in W'$ by 
$$T'(\varphi)=\varphi\circ T$$
$T'$ takes an element $\varphi$ of $W'$, a linear functional from $W\to \mathbb{F}$, and turns it into a linear functional from $V\to F$
	Then $T'(\varphi)$ takes elements from $V\rightarrow \mathbb{F}$

> Note:
> 	So, the dual map for a transformation from $W\rightarrow V$, takes [[Linear Functional|Linear Functionals]] of $W$ to Linear Functionals of $V$, or $W'\rightarrow V'$ 
> 		$T'(\varphi)$ takes elements from $V\rightarrow \mathbb{F}$, while $\varphi$ took elements from $W\rightarrow F$
> 		$T'(\varphi)$ converts the [[Dual Space]] of $W$ to be compatible with $V$
> 	Its defined $T'(\varphi)=\varphi\circ T$, where an element from $W$ is passed to $T$, which then through $\varphi \in W'$ becomes an element of $\mathbb{F}$
> Notation:
> 	$T'(\varphi)$ means the *composition* of $\varphi$ and $T$

## Properties
- Dual maps are *Linear Maps*
- $(S+T)'=S'+T'$ for all $S\in L(V,W)$
- $(\lambda T)'=\lambda T'$ for all $\lambda\in \mathbb{F}$
- $(ST)'=T'S'$)