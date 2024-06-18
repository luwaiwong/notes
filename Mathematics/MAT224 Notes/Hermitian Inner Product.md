#mathematics  
#uoft/mat224 

The **Hermitian Inner Product** is the [Dot Product](Dot%20Product.md) for [Complex Numbers](Complex%20Numbers.md)

---
# Definition
A **Hermitian Inner Product** on a [Complex Vector Space](Complex%20Numbers.md) $V$ is a *complex valued function* on pairs of vectors in $V$, denoted by $\langle u,v\rangle \in C$ for $u,v\in  V$, which satisfies the properties:
- For all $u,v$ and $w\in V$ and $a,b\in C, \langle au+bv,w=a\langle u,w\rangle +b\langle v,w \rangle$
- For all $u,v\in V,\langle u,v\rangle=\overline{\langle v,u\rangle}$ ([Conjugate](Conjugate.md))
- For all $v\in V,\langle v,v\rangle \geq 0$ and $\langle v,v\rangle = 0$ implies $v=0$

>The second property says that $\langle v,v\rangle=\overline{\langle v,v\rangle}$, which implies that $\langle v,v\rangle\in \mathbb{R}$  
	This ensures that the length of a vector is a non-negative real number  
**Sesquilinearity**  
	This also means that the inner product is [Conjugate](Conjugate.md) linear in the second variable rather than linear  
	$\langle u,av\rangle=\overline{\langle av,u\rangle}=\overline{a\langle v,u\rangle}=\overline{a}\overline{\langle v,u\rangle}=\overline a \langle u,v\rangle$  
	This property is sometimes called **Sesquilinearity**