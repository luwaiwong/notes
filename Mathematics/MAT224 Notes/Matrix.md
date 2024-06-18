#mathematics/linear-algebra #uoft/mat224 

A **matrix** is a grid of numbers.  
**Matrices** can be used to represent [Linear Transformation](Linear%20Transformation.md)

---

# Matrix Operations
## Addition
How to do matrix addition? (its pretty simple)

## Matrix-Vector Multiplication
[Matrix-Vector Multiplication](Matrix-Vector%20Multiplication.md) is multiplication between a matrix and vector  
Properties
- If the number of columns of a matrix $A$ is not equal to the number of rows in the vector $x$, matrix multiplication $Ax$ is not defined
- Let A be $l\times k$ matrix, and $u$ and $v$ be column vectors with $k$ entries. For every pair of real number $a$ and $b$ $$A(au+bv)=aAu+bAv$$
## Matrix-Matrix Multiplication
Multiplying a matrix with another matrix  
**Matrix Multiplication Properties**
- $(AB)C=A(BC)$
- $A(B+C)=AB+AC$
- $(A+B)C=AC+BC$

# Interpretations
For a [Linear Transformation](Linear%20Transformation.md) $T:V\rightarrow W$, with $[T]$

The [Dimension](Dimension.md) of $W$ is the number of **Basic** variables in echelon form  
The [Dimension](Dimension.md) of the [Kernel](Kernel.md) of $T$ is the number of **Free** variables

For a [Linear Transformation](Linear%20Transformation.md) with the [Basis](Base.md) $\alpha$, where $[T]_{\alpha}^{\alpha}$  
Each **Column** can be seen as the result of the corresponding basis vector being inputted into the transformation

> So, for $T=\begin{bmatrix} 1 & 1 & 1 \\ 0 & 1 &  1\\0 & 0 & 1 \end{bmatrix}$, Feeding the first basis, which would be $\begin{bmatrix} 1 \\ 0 \\ 0\end{bmatrix}$ will just result in $T(\begin{bmatrix} 1 \\ 0 \\ 0\end{bmatrix})=\begin{bmatrix} 1 \\ 0 \\ 0\end{bmatrix}$  
> Feeding the second basis, $\begin{bmatrix} 0 & 1 & 0\end{bmatrix}$ will result in $T(\begin{bmatrix} 0 & 1 & 0\end{bmatrix})=\begin{bmatrix} 1 \\ 1 \\ 0\end{bmatrix}$

Each **Row** can be seen as the result for one of the variables of the output vector, for a vector being inputted

# Matrix Forms
## Echelon Form
^99f2f5

A **Matrix** is in **Echelon Form** if:
- For each equation, all coefficients are 0, or the first nonzero coefficient is a 1
- For each row with a coefficient at column i, every other row has a coefficient of 0 at that column
- For each two columns on a row, the column to the left has a larger coefficient than the column to the right  
	The variables in the leading terms of the equations are the **basic variables**  
	All other variables are **free variables**

## Upper Triangular

# Inverse
## Formulas for Inverse Matrices

The inverse of a $2\times 2$ Matrix $\begin{bmatrix} a & b \\ c & d\end{bmatrix}$, can be found using the formula $$\frac{1}{ad-cd}\begin{bmatrix} d & -b \\ -c & a\end{bmatrix}$$
## Gauss-Jordan Method

Another method for finding the inverse of a matrix is the **Gauss-Jordan** Method  
For a matrix $\begin{bmatrix} a & b & c & \\ d & e & f  \\ g & h & i\end{bmatrix}$, try to solve:  
	$\begin{bmatrix} a & b & c & \bigm| & 1 & 0 & 0 \\ d & e & f & \bigm| & 0 & 1 & 0 \\ g & h & i & \bigm| & 0 & 0 & 1 \end{bmatrix}$  
	Rearrange the matrix, until the the left side is the identity matrix, then the right side will be the inverse matrix



