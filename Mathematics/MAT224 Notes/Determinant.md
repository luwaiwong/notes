#mathematics/linear-algebra #uoft/mat224 

The **Determinant** is a property which can be used to determine whether a [Matrix](Matrix.md) or [Linear Transformation](../MAT223%20Notes/Linear%20Transformation.md) is [Invertible](Invertible.md)

The Determinant is a function of a matrix which satisfies certain properties. for a $2\times 2$ Matrix, it is easily understood as the **Area**  make by constructing a parallelogram using the *rows of the matrix*

[](MAT224%20Notes.md#^aecd7a|MAT224%20Notes%20Reference)

---
# Definitions
The [Determinant](.md) of a $2\times 2$ matrix $A$ , is the unique functions of the rows of $A$ which satisfies the properties: 
- $det(ba_{1}+ca_{1}', a_{2})=bdet(a_{1},a_{2})+cdet(a_{1}',a_{2})$ for $b,c\in \mathbb{R}$ | Or, also known as **Multilinearity**
- $det(a_{1},a_{2})=-det(a_{2},a_{1})$ | **Alternating**
- $det(e_{1},e_{2})=1$ | **Normalization**

The [Determinant](.md) of a [Linear Transformation](../MAT223%20Notes/Linear%20Transformation.md)$T:V\rightarrow V$ of a finite-dimensional [Vector Space](Vector%20Space.md) is the determinant of $[T]$(the matrix of $T$ with any base $a$)  
	We denote this by $det(T)$

> The **Determinant** of a linear transformation is just the determinant of its matrix representation

## Properties
- The determinant is not zero if and only if the rows of the matrix representation are linearly independent
- The [Linear Transformation](../MAT223%20Notes/Linear%20Transformation.md) represented by $A$ is an [Isomorphism](Isomorphism.md) if and only if the determinant is nonzero
- And If $A$ is invertible, then $det(A)\neq 0$

## Uses of Determinant 
- Checking if [Transformation](../MAT223%20Notes/Transformation.md) is [Invertible](Invertible.md) 
- Calculating [Inverse](Inverse.md)  
	Using the [Matrix of Cofactors](Matrix%20of%20Cofactors.md)  
	If $A$ is an invertible $n\times n$ matrix, then $A^{-1}$ is the matrix whose $ij$th entry is $(-1)^{i+j}\frac{det(A_{ji})}{det(A)}$  
	$A^{-1}A=I$  
	And $A^{-1}=\frac{1}{det(A)}A'$

# Formulas
## Leibniz
The formula for the **Determinant** of a $2\times 2$ matrix $A$ is:  
	 $det(A)=a_{11}a_{22}-a_{12}a_{21}$

The [Determinant](.md) of a $3\times 3$ matrix $A$ is:  
	$\begin{bmatrix} a & b & c \\ d & e & f \\ g & h &i\end{bmatrix}=aei+bfg+cdh-ceg-bdi-afh$

> Rule of Sarus  
> ![Pasted image 20240308195525](attachments/Pasted%20image%2020240308195525.png)
## Laplace
Let $A$ be a $n\times n$ matrix, the $ij$th *minor* of $A$, or $A_{ij}$ is the matrix created by deleting the $i$th row and $j$th column of $A$ **(3.2.4,142)**  
	For a $3\times 3$ Matrix for example,  
		$A_{12}=\begin{bmatrix} a_{21} & a_{23} \\ a_{31} & a_{33}\end{bmatrix}$


The [Laplace Expression](Laplace%20Expression) is a [Recursive](Recursive) formula for solving the determinant  
The **Determinant** of a $3\times 3$ matrix $A$ is:  
	$\begin{bmatrix} a & b & c \\ d & e & f \\ g & h &i\end{bmatrix}=a*det(\begin{bmatrix} e & f \\ h & i\end{bmatrix})-b*det(\begin{bmatrix} d & f \\ g & i\end{bmatrix})+c*det(\begin{bmatrix} d & e \\ g & h\end{bmatrix})$  
Or,  
The [Determinant](.md) of a $n\times n$ matrix $A$ is:  
	$det(A)=\sum\limits_{i=0}^{n}(-1^{i-1})a_{1i}det(A_{1i})$

>To make more clear this definition, an example of the definition of a $4\times 4$ matrix using this expression  
	The **Determinant** of a $4\times 4$ matrix $A$ is:  
		$det(A)=a_{11}det(A_{11})-a_{12}det(A_{12})+a_{13}det(A_{13})-a_{14}det(A_{14})$  
	Remember, this is a recursive formula

## Elimination Algorithm
The Elimination Algorithm is another technique for calculating the determinant.  
	The elimination algorithm works by creating an upper triangular matrix.  
	The determinant will then be the product of the diagonal elements

> Example of using the elimination algorithm  
> 	Calculating the determinant of $\begin{bmatrix} 1 & 2 & 0 & -1 \\ 0 & 2 & 1 & 4 \\ 1 & -1 & -1 & 2 \\ 2 & 1 & 4 & 7\end{bmatrix}$  
> 	$$\begin{aligned} \begin{bmatrix} 1 & 2 & 0 & -1 \\ 0 & 2 & 1 & 4 \\ 1 & -1 & -1 & 2 \\ 2 & 1 & 4 & 7\end{bmatrix} &=\begin{bmatrix} 1 & 2 & 0 & -1 \\ 0 & 2 & 1 & 4 \\ 0 & -3 & -1 & 3 \\ 0 & -3 & 4 & 9\end{bmatrix}\\&=\begin{bmatrix} 1 & 2 & 0 & -1 \\ 0 & 2 & 1 & 4 \\ 0 & 0 & \frac{1}{2} & 9 \\ 0 & 0 & 1(\frac{1}{2}) & 15\end{bmatrix}\\&=\begin{bmatrix} 1 & 2 & 0 & -1 \\ 0 & 2 & 1 & 4 \\ 0 & 0 & \frac{1}{2} & 9 \\ 0 & 0 & 0 & -84\end{bmatrix}\\det(A)&=1\cdot 2\cdot \left(\frac{1}{2}\right)\cdot (-84)=-84\end{aligned}$$

