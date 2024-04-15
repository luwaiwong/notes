#uoft/mat224 
#notes 

### Check if a set is a Vector Space/Subspace
### How to determine whether a set of Vectors is Linearly Dependent
Given a set of vectors $S=\{x,y,z\}$, we want to see if there are any scalars such that 
$a_{1}(x)+a_{2}(y)+a_{3}(z)=0$
This would give us a system of linear equations such as 
$$ \begin{aligned} a_{1}x_{1}+a_{2}y_{1}+a_{3}z_{1}&=0\\ a_{1}x_{2}+a_{2}y_{2}+a_{3}z_{2}&=0\\a_{1}x_{3}+a_{2}y_{3}+a_{3}z_{3}&=0\end{aligned}$$
Solve this system of linear equations, if there is a solution, then the vectors are linearly dependent

### How to Parameterize a System (Convert to Vector Form)
Put into echelon form
rearrange each equation to solve for the free variables
rewrite as vector
bam parameterization

### Convert Bases
Say we have two bases, 
- $\beta$, with $u_{1}$ and $u_{2}$, and 
- $\beta'$ with $u_{1}'$ and $u_{2}'$

We have a vector $v$, which we know the value of $[v]_{\beta}$, and we want to find the matrix $[v]_{\beta'}$
Given a change of base matrix $[I]_{\beta}^{\beta'}$, then $[I]_{\beta}^{\beta'}[v]_{\beta}=[v]_{\beta'}$

### Invert Matrix
For a $2\times 2$ Matrix $\begin{bmatrix} a & b \\ c & d\end{bmatrix}$, the inverse is $\frac{1}{ad-cd}\begin{bmatrix} d & -b \\ -c & a\end{bmatrix}$

### Find Eigenvalues and Eigenvectors

### Find Roots of Complex Numbers