#uoft/mat224 #assignment 

Questions
sec 3.1: #5, 10
sec 3.2: #1(b), #4(b), 
sec 3.3: #4, #7(b)
sec 4.1: #3 (d) (f) (g), #13, #14
sec 4.2: #1 (c) (f) (g), #2, #3, #6 (with k=2), #7, 

### 3.1
5. Let $A$ be the matrix of a projection to a nonzero vector in the plane. Calculate $det(A)$
	Let $V$ be a plane, let $W$ be a nonzero vector. Let $A:V\rightarrow W$ be a linear transformation
	Since we are projecting from a plane to a vector, $dim(V)\leq dim(W)$ , thus, $A$ is not invertible, and $det(A)=0$

10. Prove that an upper(lower) triangular $2\times 2$ matrix is invertible if and only if the diagonal entries are both nonzero
	A matrix is invertible if and only if its determinant is nonzero
	Let $A$ be an invertible $2\times 2$ matrix $\begin{bmatrix} a & 0 \\ 0 & b\end{bmatrix}$
	The determinant is defined as $det(A)=a(0)-(0)b=0$
	$det(A)=0$, therefore, the diagonal entries being both zero $\implies$ a $2\times 2$ matrix is not invertible
	Therefore a $2\times 2$ matrix is invertible if and only if the diagonal entries are both nonzero 

### 3.2
1. Compute the determinant of each of the following matrices in two ways using Equation (3.1) of Theorem (3.2.8)
	b. $\begin{bmatrix} -1 & 1 & 2 \\ 1 & 0 & 1 \\ -1 & 1 & 0\end{bmatrix}$
		Method 1
		$det\begin{bmatrix} -1 & 1 & 2 \\ 1 & 0 & 1 \\ -1 & 1 & 0\end{bmatrix} = (-1)(0)(0)+(1)(1)(-1)+(2)(1)(1)-(2)(0)(-1)-(1)(1)(0)-(-1)(1)(1)$
		$det\begin{bmatrix} -1 & 1 & 2 \\ 1 & 0 & 1 \\ -1 & 1 & 0\end{bmatrix}=2$
		Method 2
		$det\begin{bmatrix} -1 & 1 & 2 \\ 1 & 0 & 1 \\ -1 & 1 & 0\end{bmatrix}=-1(det \begin{bmatrix} 0 & 1 \\ 1 & 0\end{bmatrix})-1(det \begin{bmatrix} 1 & 0 \\ -1 & 1\end{bmatrix})+2(det \begin{bmatrix} 1 & 1 \\ -1 & 0 \end{bmatrix})$
		
		$det\begin{bmatrix} -1 & 1 & 2 \\ 1 & 0 & 1 \\ -1 & 1 & 0\end{bmatrix}=2$
		

4. For what values of the scalar $a$  is each of the following matrices invertible
	b. $\begin{bmatrix} -1-a & 2 \\ 3 & -a\end{bmatrix}$
		A $2\times 2$ matrix is *invertible* if and only if its determinant $\neq 0$. 
		The determinant of the matrix is: $$\begin{aligned}det(b)&=(-1-a)(-a)-(2)(3)
	\\&=a^{2}+a-6\\ &= (a+3)(a-2) \end{aligned} $$
		Therefore, b is invertible when $a \neq 2,-3$

### 3.3
4.  Prove that if $A$ is an invertible matrix $det(A^{-1})=det(A)^{-1}$
	We know that, $det(A^{-1})=\frac{1}{det(A)}$
	Since, $det(A)^{-1}=\frac{1}{det(A)}$
	Therefore, $det(A^{-1})=det(A)^{-1}$
7. Use Cramer's rule to solve for $x$:
	b. $\begin{bmatrix} 1 & 0 & -1 \\ 2 & 1 & -3 \\ 0 & 1 & 4\end{bmatrix}x=\begin{bmatrix} 1 \\ 1 \\ 1\end{bmatrix}$
		Cramer's rule says that $x=A^{-1}b=\frac{1}{det(A)}A'b$
		$x=\begin{bmatrix} x_{1} \\ x_{2} \\ x_3 \\ \end{bmatrix}$
		$D=(\begin{bmatrix} 1 & 0 & -1 \\ 2 & 1 & -3 \\ 0 & 1 & 4\end{bmatrix})=5$
		$x_{1}=\frac{det \begin{bmatrix} 1 & 0 & -1 \\ 1 & 1 & -3 \\ 1 & 1 & 4\end{bmatrix}}{5}=1$
		$x_{2}=\frac{det\begin{bmatrix} 1 & 1 & -1 \\ 2 & 1 & -3 \\ 0 & 1 & 4\end{bmatrix}}{5}$
		$x_{3}=det\frac{\begin{bmatrix} 1 & 0 & 1 \\ 2 & 1 & 1 \\ 0 & 1 & 1\end{bmatrix}}{5}$

### 4.1
3. For each of the following linear mappings
- Find all the eigenvalues, and
- For each eigenvalue $\lambda$ find a basis of the eigenspace $E_{\lambda}$
d. $T:\mathbb{R^{3}\rightarrow R^{3}}$ defined by $A=\begin{bmatrix} 1 & -1 & 3 \\ 0 & 1 & 0 \\ 0 & 4 & 1\end{bmatrix}$
	Step 1, find characteristic polynomial
	$A-\lambda I=\begin{bmatrix} 1-\lambda & -1 & 3 \\ 0 & 1- \lambda & 0 \\ 0 & 4 & 1- \lambda\end{bmatrix}$
	$det(A- \lambda I)=(1- \lambda)(1- \lambda) (1-\lambda)+ (-1)(0)(0)+(3)(0)(4)-(3)(1-\lambda)(0)-(-1)(0)(1-\lambda)-(1-\lambda)(0)(4)$
	$det(A-\lambda I)=(1-\lambda)^{3}$
	Step 2, find eigenvalues
	$(1-\lambda)^{3}=0, \lambda=1$
	Step 3, find eigenspace
	$\begin{aligned}A-\lambda I&=\begin{bmatrix} 1-1 & -1 & 3 \\ 0 & 1- 1 & 0 \\ 0 & 4 & 1- 1\end{bmatrix} \\ &= \begin{bmatrix} 0 & -1 & 3 \\ 0 & 0 & 0 \\ 0 & 4 & 0\end{bmatrix} \end{aligned}$
	A basis of the eigenspace $E_{1}=\{\begin{bmatrix} 1 \\0\\0\end{bmatrix}\}$
	

f. $T:P_{3}(\mathbb{R})\rightarrow P_{3}(\mathbb{R})$ defined by $T(p)(x)=p'(x)+2p(x)$
	$\begin{aligned}T(p)&=\lambda p\\ p'(x)+2p(x)&= \lambda p(x) \\ \frac{p'(x)}{p(x)}&=(\lambda+2)\\ p(x)=Ce^{(\lambda-2)x}\end{aligned}$
	The only eigenvalue is $\lambda=2$
	Since $E_{2}$ is a constant polynomial, a basis for $E_{2}$ would be $\{1\}$
	

g. $V=Span(e^{x},xe^{x},e^{2x},xe^{2x})$, $T:V\rightarrow V$ defined by $T(f)=f''$
	$\begin{aligned} T(f)&=\lambda f\\ f''(x)&=\lambda f(x)\end{aligned}$
	$\lambda=1, -1$
	$E_{1}=Span(e^{x})$
	$E_{-1}=Span(e^{x})$

13. 
	a. Let $A\in M_{n\times n}(\mathbb{R})$, and let $\lambda$ be an eigenvalue of $A$. show that $\lambda^{m}$ is an eigenvalue of $A^{m}$for all integers $m\geq 1$
		We know that $A(v)=\lambda v$
		We want to find if there exists $w, A^{m}(w)=\lambda^{m}w$
		$\begin{aligned} \lambda^{m}v&= A^{m}v \\ &=A^{m-1}(Av)\\ &= A^{m-1}(\lambda v) \\ &= A^{m-2}(\lambda^{2} v) \\ &= \lambda^{m}v\end{aligned}$
		Therefore. $\lambda^{m}$ is an eigenvalue of $A^{m}$ for all integers $m\geq 1$
	b. Show more generally that if $p(t)$ is any polynomial and $\lambda$ is an eigenvalue of $A$, then $p(\lambda)$ is an eigenvalue of $p(A)$
		We want to show that $p(A)v=p(\lambda)v$
		We know that $Av=\lambda v$, thus, $p(A)=p(\lambda)$, thus $p(A)v=p(\lambda)v$

14. A matrix $A\in M_{n\times n}(\mathbb{R})$ is said to be *nilpotent* if $A^{k}=0$ for some integer $k\geq 1$
	a. Give examples of (nonzero) $2\times 2$ and $3\times 3$ nilpotent matrices
		$\begin{bmatrix} 0 & 1 \\ 0 & 0\end{bmatrix}, \begin{bmatrix} 0 & 1 \\ 0 & 0\end{bmatrix}^{2}=\begin{bmatrix} 0 & 0 \\ 0 & 0\end{bmatrix}$
		$\begin{bmatrix} 0 & 0 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0\end{bmatrix}, \begin{bmatrix}0 & 0 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0\end{bmatrix}^{2}=\begin{bmatrix} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0\end{bmatrix}$
	b. Use Exercise 13 to show that if $A$ is nilpotent, then the only eigenvalue of $A$ is $\lambda=0$ 
		$A$ is nilpotent $\implies \exists k, s.t. \ A^{k}=0$ 
		We also know that $\lambda^{m}v=A^{m}v$, for a non-zero $v$
		Then, $\lambda^{k}v=0$, thus $\lambda=0$
		 

### 4.2
1. Determine whether the given linear mappings are diagonalizable, and if so, find a basis of the appropriate vector spaces consisting of eigenvectors
	c) $T:\mathbb{R}^{3}\rightarrow \mathbb{R}^{3}$ defined by $A=\begin{bmatrix} 0 & 3 & 0 \\ 1 & 0 & -1 \\ 0 & 2 & 0\end{bmatrix}$
	f) $T:P_{3}(\mathbb{R})\rightarrow P_{3}(\mathbb{R})$ defined by $T(p)(x)=3\cdot p(x)+x\cdot p''(x)$
	g) $V=Span\{sin(x),cos(x),e^{x},e^{-x},1 \}$ in $C^{\infty}(\mathbb{R}), T:V\rightarrow V$ defined by $T(f)=f''-4f'+3f$

2. Show that the matrix $A=\begin{bmatrix} q & b \\ 0 & 1\end{bmatrix} \in M_{2\times 2}(\mathbb{R})$ is diagonalizable if and only if $b=0$
3. Find necessary and sufficient conditions on the real numbers $a,b,c$ for the matrix: $\begin{bmatrix} 1 & a & b \\ 0 & 1 & c \\ 0 & 0 & 2\end{bmatrix}$ to be diagonalizable
	$A=\begin{bmatrix} 1 & a & b \\ 0 & 1 & c \\ 0 & 0 & 2\end{bmatrix}$
	$det(A-\lambda I)=(q-\lambda)(1-\lambda)$

5. 
	a) Show that if $A$ is diagonalizable, then $A^{k}$ is diagonalizable for all $k\geq 2$ 
		If $A$ is diagonalizable, then there exists a matrix $P$ where $P^{-1}AP=D$, where $D$ is a diagonal matrix
		Thus, $A=PDP^{-1}$
		$A^{k}=P(D^{k})P^{-1}$
		Since, $D$ is diagonal, multiplying it by itself will only scale the diagonal entries, and it will remain a diagonal matrix
	b) Is the converse of the statement in part $a$ true?

7. 
	a) Show that if $A$ is an invertible $n\times n$ matrix and $x$ is an eigenvector of $A$ with eigenvalue $\lambda$ then $x$ is also an eigenvector of $A^{-1}$ with eigenvalue $\lambda^{-1}$
	b) From part $a$, deduce that if $A$ is an invertible $n\times n$ matrix, then $A$ is diagonalizable if and only if $A^{-1}$ is diagonalizable


