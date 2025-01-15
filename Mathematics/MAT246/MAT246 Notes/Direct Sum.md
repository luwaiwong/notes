#mathematics/linear-algebra  
#uoft/mat246 

The **Direct Sum** of two other [Vector Spaces](../../MAT224%20Notes/Vector%20Space.md) $U_{1}, U_{2}$ is a [Vector Space](../../MAT224%20Notes/Vector%20Space.md) $U$ where every $u\in U$ can be uniquely written as $u=u_{1}+u_{2}$ for $u_{1}\in U_{1}$ and $u_{2}\in U_{2}$

---
# Definition
A vector space $U$ is a **Direct Sum** of two other vector spaces $U_{1}, U_{2}$ if every $u\in U$ can be uniquely written as $u=u_{1}+u_{2}$ for $u_{1}\in U_{1}$ and $u_{2}\in U_{2}$

## Checking if $V$ is a direct sum
- Let $U_{1}, U_{2}\subset V$ be [Subspaces](../../MAT223%20Notes/Subspace.md), Then $V=U_{1}\bigoplus U_{2}$ if and only if:
	- $V=U_{1}+U_{2}$
	- If $0=u_{1}+u_{2}$ with $u_{1}\in U_{1}$ and $u_{2}\in U_{2}$, then $u_{1}=u_{2}=0$
		- Or that $U_{1}\cup U_{2}=\{0\}$

## Notation
We denote that $U$ is a  [Direct Sum](.md) of $U_{1}$ and $U_{2}$ with:  
	$U=U_{1} \bigoplus U_{2}$ 

Use `\otimes` for the symbol $\otimes$ 