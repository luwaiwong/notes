#mathematics/linear-algebra #uoft/mat246 

The **Tensor** $V\otimes W$ is defined as $B(V', W')$ (Vector Space of Bilinear Functionals of the [Dual Space](Dual%20Space.md) of $V$ and $W$), where for any $v\in V$ and $w\in W$, $v\otimes w$ is the element of $V\otimes W$ defined by
$$(v\otimes w)(\varphi,\uptau)=\varphi(v)\uptau(w)$$
	For all $(\varphi, \uptau)\in V'\times W'$

---

# Notes

## Definition
The [Tensor](.md) of two vector spaces $V, W$ denoted $V\otimes W$ is defined as $B(V', W')$ (Vector Space of Bilinear Functionals of the [Dual Space](Dual%20Space.md) of $V$ and $W$)

For any $v\in V$ and $w\in W$, $v\otimes w$ is the element of $V\otimes W$ defined by
$$(v\otimes w)(\varphi,\uptau)=\varphi(v)\uptau(w)$$
	For all $(\varphi, \uptau)\in V'\times W'$

> Simplification:
> 	The Tensor of two vector spaces, is the [Dual Space](Dual%20Space.md) for those two vector space
> 	In other words, the tensor of two vector spaces, is the vector space of bilinear functionals of the two vector spaces, to a number in $\mathbb{F}$
> 	So an element $v\in V\otimes W$, is a function which takes $(\varphi, \uptau)\in V'\times W'$
> 	$(v \otimes w)$
## Properties

- $(dim(V\otimes W))=dim(V)dim(W)$ 
- $(v_{1}+v_{2})\otimes w=v_{1}\otimes w+v_{2}\otimes w$ and $(w_{1}+w_{2})\otimes v=w_{1}\otimes v+w_{2}\otimes v$ 
- For any linearly independent lists $e_{1},\dots,e_{m}\in V$ and $f_{1},\dots,f_{n}\in W$, then $\{e_{j}\otimes f_{k}\}_{j=1,\dots,m; k=,\dots n}$ (Or, every combination of $e_{j}$ and $f_{k}$) is a linearly independent list in $V\otimes W$
- And if $e_{1},\dots,e_{m}\in V$ and $f_{1},\dots,f_{n}\in W$ are bases for $V$ and $W$, then $\{e_{j}\otimes f_{k}\}_{j=1,\dots,m; k=,\dots n}$ (Or, every combination of $e_{j}$ and $f_{k}$) is a [Base (Basis)](../../MAT223%20Notes/Base%20(Basis).md) of $V\otimes W$
	- If $e_{1},\dots,e_{m}\in V$ and $f_{1},\dots,f_{n}\in W$ are [Orthonormal](../../MAT223%20Notes/Orthonormal.md) Bases of $V$ and $W$, then $\{e_{j}\otimes f_{k}\}_{j=1,\dots,m; k=,\dots n}$ is an orthonormal basis of $V\otimes W$
- The [Inner Product](../../MAT223%20Notes/Dot%20Product.md) on $V\otimes W$ is the function $\langle v\otimes w, u\otimes x\rangle = \langle v,u\rangle \langle w,x\rangle$ for all $v,u\in V$ and $w,x\in W$
- $||v\otimes w||=||v|| \ ||w||$