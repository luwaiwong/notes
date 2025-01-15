#mathematics 
#uoft/mat301 

A **Symmetric** [Relation](Relation.md) is one where the relation goes both ways
Where If $xRy$, then $yRx$

A **Symmetric** [Group](../../../Mathematics/MAT301%20Notes/Group.md) on a set $X$ is the set of all permutations on $X$ under [Composition](../../../Mathematics/MAT224%20Notes/Composition.md), denoted $S_{X}$
- The Symmetric group on $\{1,...,n\}$ is denoted $S_{n}$, while the symmetric group on $\mathbb{N}$ is denoted $S_{\infty}$ 

> Example of a symmetric group $S_{2}$
> 	The only two elements of $S_{2}$ are its permutations 
> 	$id = \begin{bmatrix} 1 & 2 \\ 1 & 2\end{bmatrix}$ and $r=\begin{bmatrix} 1 & 2 \\ 2 & 1\end{bmatrix}$
> 		Here, the function $r^{2}$ sends $1\rightarrow 2\rightarrow 1$ and $2\rightarrow 1\rightarrow 2$, so $r^{2}=id$. 
> 		Thus $S_{2}=\langle r\rangle$ is [Cyclic](../../../Mathematics/MAT301%20Notes/Cyclic%20Group.md) with 2 elements