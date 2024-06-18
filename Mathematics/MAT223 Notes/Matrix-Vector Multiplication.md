#uoft/mat223 #mathematics 

**Matrix Vector Multiplication** is multiplication from [Matrices](Matrix.md) on [Column Vectors](Column%20Vectors.md). 

---
# Example/Concept
Consider a system of linear equations$$\begin{cases} x+2y-2z &=-15  \\  
 2x+y-5z &= -21 \\  
 x-4y+z &= 18\end{cases}$$This is equivalent to the vector equation: $$\begin{bmatrix}x+2y-2z  \\ 2x+y-5z \\ x-4y+z\end{bmatrix} =\begin{bmatrix} -15 \\ -21 \\ 18\end{bmatrix}$$Rewriting using **Matrix Vector Multiplication**$$\begin{bmatrix} 1  & 2 & -2 \\ 2 & 1 & -5 \\ 1 & -4 & 1\end{bmatrix}\begin{bmatrix} x \\ y \\ z\end{bmatrix}=\begin{bmatrix} -15 \\ -21 \\ -18\end{bmatrix}$$  
 The [Matrix](Matrix.md) on the left is called the **Coefficient Matrix**, because it is made out of coefficients from the equations. Using **coefficient matrices**, every system of linear equations can be rewritten as a single matrix equation of the form $$A\vec{x}=\vec{b}$$Where $A$ is a coefficient matrix, $\vec{x}$ is a column vector of variables, and $\vec{b}$ is a column [Vector](Vector.md) of constants

# Interpretations
The solution to a system of linear equations can be interpreted as the intersection of three planes (or hyperplanes if there are more variables). Each equation (or row) specifies a plane, and the solution set is the intersection of all the planes

## **The Column Picture**

^b7f1e3

Using the column interpretation $$\begin{bmatrix}1  & 2 & -2 \\ 2 & 1 & -5 \\ 1 & -4 & 1 \end{bmatrix}=x\begin{bmatrix} 1 \\ 2 \\ 1\end{bmatrix}+ y\begin{bmatrix}2 \\ 1 \\ -4\end{bmatrix}+z \begin{bmatrix} -2 \\ -5 \\ 1\end{bmatrix} =\begin{bmatrix} -15 \\ -21 \\ 18\end{bmatrix}$$This interpretation asks what coefficients we need so that$$x\begin{bmatrix} 1 \\ 2 \\ 1\end{bmatrix}+ y\begin{bmatrix}2 \\ 1 \\ -4\end{bmatrix}+z \begin{bmatrix} -2 \\ -5 \\ 1\end{bmatrix} =\begin{bmatrix} -15 \\ -21 \\ 18\end{bmatrix}$$
## **The Row Picture**

^a36e00

Using the row interpretation$$\begin{bmatrix} 1 & 2 & -2 \\ 2 & 1 & -5 \\ 1 & -4 & 1\end{bmatrix}\begin{bmatrix} x \\ y \\ z\end{bmatrix} = \begin{bmatrix} \vec{r_{1}} \\ \vec{r_{2}} \\ \vec{r_3}\end{bmatrix}\vec{x}=\begin{bmatrix} \vec{r_1}\cdot\vec{x} \\ \vec{r_{2}}\cdot\vec{x}  \\ \vec{r_{3}}\cdot\vec{x}\end{bmatrix}=\begin{bmatrix} -15 \\ -21 \\ 18\end{bmatrix}$$This interpretation places the solutions to the system as vectors whose dot product with $\vec{r_{1}}$ is -15, $\vec{r_{2}}$ is -21, and $\vec{r_{3}}$ is 18. If the right side of the equation is all zeros, then we are looking for the vector $\vec{x}$ which is **orthogonal** to each row.

### Homogeneous Systems
Consider the **homogeneous system/matrix equation**$$\begin{bmatrix} 1  & 2 & -2 \\ 2 & 1 & -5 \\ 1 & -4 & 1\end{bmatrix}\begin{bmatrix} x \\ y \\ z\end{bmatrix}=\begin{bmatrix} 0 \\ 0 \\ 0\end{bmatrix}$$  
The **column**[#^b7f1e3](#^b7f1e3) interpretation asks:  
"*what [Linear Combination](Linear%20Combination.md)s of the column vectors of A give the vector 0?*"

The **row**[#^a36e00](#^a36e00) interpretation asks:  
"*What [Vector](Vector.md)s are simultaneously [Orthogonal](Orthogonal.md) to the three rows?*"

## Linear Transformation Interpretation
We can define a [Linear Transformation](Linear%20Transformation.md) using a matrix.  
Let $M$ be a matrix, for a vector $\vec{v}\in \mathbb{R}^{2}, M\vec{v}$ is another vector in $\mathbb{R}^2$ in this way, we can think of a multiplication by $M$ as a [Transformation](Transformation.md) on $\mathbb{R}^{2}$. We can define: $$T:\mathbb{R}^{2}\rightarrow \mathbb{R}^{2} \ \text{ by } \ T(\vec{x})=M\vec{x}$$  
We can call $T$ here as a **matrix transformation**