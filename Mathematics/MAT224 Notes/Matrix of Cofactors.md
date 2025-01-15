#mathematics/linear-algebra 
#uoft/mat224 

The **Matrix of Cofactors** $A'$ is the [[Matrix]] whose $ij$th entry is:
	$(-1)^{i+j}det(A_{ji})$ 

> Note that in this, for $det(A_{ji})$, the $j$ and $i$  are swapped. 
> 	So, if $i$ is the column, and $j$ is the row $A_{ji}$ is removing the $j$th column, and $i$th row 
> For an example, the matrix of cofactors $A=\begin{bmatrix} 1 & 0 & 3 \\ 2 & -1 & 4 \\ 5 & 7 & -2\end{bmatrix}$ is: 
> $\begin{aligned} A' &= \begin{bmatrix} (-1)^{2}(-26) & (-1)^{3}(-21) & (-1)^{4}(3) \\ (-1)^{3}(-24) & (-1)^{4}(-17) & (-1)^{5}(-2)  \\ (-1)^{4}(19) & (-1)^{5}(7) & (-1)^{6}(-1)\end{bmatrix} \\ &= \begin{bmatrix} -26 & 21 & 3 \\ 24 & -17 & 2 \\ 19 & -7 & -1\end{bmatrix}\end{aligned}$
> 

It can be used to calculate [[Inverse]]
If $A$ is an invertible $n\times n$ matrix, then $A^{-1}$ is the matrix whose $ij$th entry is $(-1)^{i+j}\frac{det(A_{ji})}{det(A)}$
	$A^{-1}A=I$
And $A^{-1}=\frac{1}{det(A)}A'$

>Note that this formula is efficient only for small $n\leq 4$. In general, it is more efficient to use the [[Gauss-Jordan Method]]
