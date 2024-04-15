#mathematics/linear-algebra #uoft/mat224 

A **matrix** is a grid of numbers. 
**Matrices** can be used to represent[Linear Transformations](../../MAT223/Linear%20Transformations.md)

---

# Matrix Operations
How to do matrix multiplication?

How to do matrix addition?

# Linear Transformation
For a [Vector Space](Vector%20Space.md) $W$ defined by a **Matrix**, the [Dimension](../../MAT223/Dimension.md) of $W$ is the number of free variables in echelon form

# Echelon Form
^99f2f5

A **Matrix** is in **Echelon Form** if: **(1.5.6, 37)**
- For each equation, all coefficients are 0, or the first nonzero coefficient is a 1
- For each row with a coefficient at column i, every other row has a coefficient of 0 at that column
- For each two columns on a row, the column to the left has a larger coefficient than the column to the right
	The variables in the leading terms of the equations are the **basic variables**
	All other variables are **free variables**

# Inverse
## Formula for Inverse Matrices

The inverse of a $2\times 2$ Matrix $\begin{bmatrix} a & b \\ c & d\end{bmatrix}$, can be found using the formula $$\frac{1}{ad-cd}\begin{bmatrix} d & -b \\ -c & a\end{bmatrix}$$
## Gauss-Jordan Method

Another method for finding the inverse of a matrix is the **Gauss-Jordan** Method
For a matrix $\begin{bmatrix} a & b & c & \\ d & e & f  \\ g & h & i\end{bmatrix}$, try to solve:
	$\begin{bmatrix} a & b & c & \bigm| & 1 & 0 & 0 \\ d & e & f & \bigm| & 0 & 1 & 0 \\ g & h & i & \bigm| & 0 & 0 & 1 \end{bmatrix}$
	Rearrange the matrix, until the the left side is the identity matrix, then the right side will be the inverse matrix



