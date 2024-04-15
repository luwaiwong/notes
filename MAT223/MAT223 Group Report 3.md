#uoft/mat223 #assignment 


2. Suppose $L:\mathbb{R}^{3}\rightarrow \mathbb{R}^3$ is a linear transformation given defined by $$L(\vec{v})=\begin{pmatrix} 10 & -19 & 10 \\ 6 & -13 & 8 \\ 5 & -13  & 9\end{pmatrix}\vec{v},$$and let $\mathbb{B} = (\begin{bmatrix} 1 \\ 1 \\ 1 \end{bmatrix}, \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix},\begin{bmatrix} 4 \\ 2 \\ 1\end{bmatrix})$

a. Show that $\mathbb{B}$ is a basis of $\mathbb{R}^{3}$.
	 To prove $\mathbb{B}$ is a basis of $\mathbb{R}^{3}$, we have to show that it is:	 	
		 1. Linearly Independent
		 2. The number of elements is equal to the dimension of $\mathbb{R}^{3}$
	Proving that $\mathbb{B}$ is linearly independent
		We want to find the answer to the system of equations$$\begin{aligned} x+y+z &= 0 \\ x+2y+2z &=0 \\ 4x+3y+z &=0\end{aligned}$$Solving this system of equations, we find that the only solution is $(0,0,0)$. Thus, $\mathbb{B}$ is linearly independent
b. Write the matrix associated to $L$ in the basis $\mathbb{B}$ 
	To express L in terms of the basis $\mathbb{B}$, we can perform the computation
	$$L_{\mathbb{B}}=\mathbb{B}^{-1}L \mathbb{B}$$First, we want to compute $\mathbb{B}^{-1}$ or the inverse of B $$\mathbb{B}^{-1}= \begin{bmatrix} -4  & 11 & -6 \\ 1 & -3 & 2 \\ 1 & -2 & 1\end{bmatrix}$$
	Then, $$\begin{aligned} L_{\mathbb{B}}&= \begin{bmatrix} -4  & 11 & -6 \\ 1 & -3 & 2 \\ 1 & -2 & 1\end{bmatrix}\begin{bmatrix} 10 & -19 & 10 \\ 6 & -13 & 8 \\ 5 & -13  & 9\end{bmatrix} \begin{bmatrix} 1 & 1 & 4  \\ 1 & 2 & 2 \\ 1 & 3 & 1\end{bmatrix} 
	\\ L_\mathbb{B} &= \begin{bmatrix} 1 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 3\end{bmatrix}\end{aligned} $$
c. Interpret the linear transformation $L$ geometrically
	The linear transformation transforms:
	in the $\vec{e}_1$ direction by $\begin{bmatrix} 10  \\ 6 \\ 5\end{bmatrix}$ 
	in the $\vec{e}_2$ direction by $\begin{bmatrix} -19  \\ -13 \\ -13\end{bmatrix}$ 
	in the $\vec{e}_1$ direction by $\begin{bmatrix} 10  \\ 8 \\ 9\end{bmatrix}$ 
	
d. Discuss how the standard basis and the basis $\mathbb{B}$ are useful to describe the linear transformation $L$
	The standard basis and the basis $\mathbb{B}$ provide two different perspectives to describe the linear transformation $L$. The standard basis provides a more objective view of the transformation, but the basis $\mathbb{B}$ helps to simplify the linear transformation numerically, so you can think of the linear transformation in terms of the basis.


4. Let $L:\mathbb{R}^{2}\rightarrow \mathbb{R}^2$ be the function defined by $$L(\begin{bmatrix} x \\ y\end{bmatrix})=\begin{bmatrix} x-\sqrt{3}y \\ \sqrt{3}x+y\end{bmatrix}$$
a. Show that $L$ is a linear transformation using the definition
b. Show that $L$ is a linear transformation in another way (without using the definition)
c.
