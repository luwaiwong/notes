How to do [Matrix](../MAT224%20Notes/Matrix.md) Multiplication

---

## Matrix-Vector Multiplication
[Matrix-Vector Multiplication](Matrix-Vector%20Multiplication.md) is multiplication between a matrix and vector
Properties
- If the number of columns of a matrix $A$ is not equal to the number of rows in the vector $x$, matrix multiplication $Ax$ is not defined
- Let A be $l\times k$ matrix, and $u$ and $v$ be column vectors with $k$ entries. For every pair of real number $a$ and $b$ $$A(au+bv)=aAu+bAv$$
## Matrix-Matrix Multiplication
When multiplying a matrix with another matrix, the first matrix must have the same number of columns as the second matrix has rows 
The resulting matrix will have the same number of rows as the first matrix does, and the same number of columns as the second matrix does

Multiply the *rows* of the first matrix, with the *columns* of the second

> Example of Matrix-Matrix Multiplication
> 	![Pasted image 20241009200615](Pasted%20image%2020241009200615.png)

**Matrix Multiplication Properties**
- $(AB)C=A(BC)$
- $A(B+C)=AB+AC$
- $(A+B)C=AC+BC$
