#mathematics 
#uoft/mat224 

[Cramer's Rule](.md) says that: $x=A^{-1}b=\frac{1}{det(A)}A'b$
	  Or, a solution $x$ to the system of equations $Ax=b$ can be found the vector whose $j$th entry is the quotient $\frac{det(B_{j})}{det(A)}$
	Where $B_{j}$ is the matrix obtained from $A$  by replacing the $j$th column of $A$ by the vector $b$ 

> Note, this is not a practical method for solving systems of equations for large $n$
> Example Usage for Cramer's Rule
> 	Solving for $\begin{bmatrix} 2 & 1 \\ -1 & 3\end{bmatrix}x=\begin{bmatrix} 0 \\ 1\end{bmatrix}$
> 		$x_{1}=\frac{det \begin{bmatrix} 0 & 1 \\ 1 & 3\end{bmatrix}}{det \begin{bmatrix} 2 & 1 \\ -1 & 3\end{bmatrix}}$, and $x_{2}=\frac{det \begin{bmatrix} 2 & 0  \\ -1 & 1\end{bmatrix}}{det \begin{bmatrix} 2 & 1 \\ -1 & 3\end{bmatrix}}$
> Also, honestly i have no idea where this came from, this came from nowhere