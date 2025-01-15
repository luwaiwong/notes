#mathematics/linear-algebra 
#uoft/mat246 

The **sum of two subspaces** can be defined in various ways 

---
## Built Up Definition
The [Sum](../../MAT224%20Notes/Sum.md) of two [Subspaces](../../MAT223%20Notes/Subspace.md) $W_{1}, W_{2}$ is the set $W_{1}+W_{2}=\{x\in V \  | \ x = x_{1}, \text{ for some }x_{1}\in W_{2} \}$ **(1.3.4, 23)**
	$W_{1}+W_{2}$ can be thought of as the set of vectors that can be "built up" from the vectors in $W_1 +W_2$ by linear combinations
	If $W_{1}=Span(S_{1})$, and $W_{2}=Span(S_{2})$, $W_{1}+W_{2}=Span(S_{1}\cup S_{2})$
	Let $W \supseteq W_{1}\cup W_{2}$ , then $W\supseteq W_{1}+W_{2}$

## Direct Sum Definition
Let $U_{1},U_{2}\subset V$ be [Subspaces](../../MAT223%20Notes/Subspace.md) of $V$. The [Subspace Sum](.md) of $U_{1}$ and $U_{2}$ is the set:
	$U_{1}+U_{2}=\{u_{1}+u_{2}|u_{1}\in U_{1}, u_{2}\in U_{2}\}$
**Properties**
- The subspace sum of $U_{1},U_{2}\subset V$ is also a subset of $V$

> An example of the result of [Subspace Sums](.md)
> 	Let $U_{1}=\{(x,0,0)\in \mathbb{F^{3}}|x\in \mathbb{F}\}$
> 	Let $U_{2}=\{(x,0,0)\in \mathbb{F^{3}}| x\in \mathbb{F}\}$
> 	Then $U_{1}+U_{2}=\{(x,y,0)\in \mathbb{F^{3}}|x,y \in \mathbb{F}\}$