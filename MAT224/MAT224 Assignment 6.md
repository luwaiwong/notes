
| Questions                                                                                                                                                                                                                                                                                                              |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| sec 5.1: #6(b)(d)<br><br>sec 5.2: #5(a), #7, #10(a), (c), #12<br><br>sec 5.3: #2, #5,#6(a)<br><br>sec 6.1: #1(a)(submit), (d), (e)(submit), #2, #3, #6(a)<br><br>,sec 6.2: #1(a), (c),  #2(a), #4, #5, #7 (a)(submit)<br><br>sec 6.3: #1 (a), (c), #2 (only for (a)), #4<br><br>sec6.4: #2(a) (submit), #4(a) (submit) |

	
### 5.2
12. For the following types of $2\times 2$ real matrices, find their eigenvalues and eigenvectors over $C$
	a) Rotation Matrices, $R_{\theta}=\begin{bmatrix} \cos(\theta) & -\sin(\theta) \\ \sin(\theta) & \cos(\theta)\end{bmatrix}$
		Characteristic Polynomials
		$\begin{aligned}det(R_\theta-\lambda I)&=(\cos(\theta)-\lambda)^{2}-(-\sin(\theta))(\sin(\theta))\\0&= \lambda^{2}-2\cos(\theta)\lambda+1 \\ \lambda&=\cos(\theta)\pm i \sin(\theta)\end{aligned}$
		Eigenvectors
		Solve for:
		$\begin{bmatrix} -i\sin(\theta) & -\sin(\theta)\\\sin(\theta) & -i\sin(\theta) \end{bmatrix}\begin{bmatrix} x \\ y\end{bmatrix}= 0$
		$\begin{bmatrix} x \\ y\end{bmatrix}=t\begin{bmatrix} i \\ 1\end{bmatrix}$
		,
		$\begin{bmatrix} i\sin(\theta) & -\sin(\theta)\\\sin(\theta) & i\sin(\theta) \end{bmatrix}\begin{bmatrix} x \\ y\end{bmatrix}= 0$
		$\begin{bmatrix} x \\ y\end{bmatrix}=t\begin{bmatrix} -i \\ 1\end{bmatrix}$
		Therefore, the eigenvectors are $\{\begin{bmatrix} i \\ 1\end{bmatrix}, \begin{bmatrix} -i  \\ 1\end{bmatrix}\}$
	b) Skew symmetric matrices, $A=\begin{bmatrix} 0 & -a \\ a & 0\end{bmatrix}, a\neq 0$
		Characteristic Polynomials
		$\begin{aligned} det(A-\lambda I)&=\lambda^{2}+a^{2}\\ 0&=\lambda^{2}+a^{2} \\ \lambda&=\pm\sqrt{-a^{2}} \\ \lambda&=\pm i a\end{aligned}$
			Thus, the eigenvalues are $\lambda=i a, -i a$
		Eigenvectors
		Solve for:
		$\begin{bmatrix} -ia & -a \\ a & -ia\end{bmatrix}\begin{bmatrix} x \\ y\end{bmatrix}=0$
		$\begin{bmatrix} x \\ y\end{bmatrix}=t\begin{bmatrix} i \\ 1\end{bmatrix}$
		,
		$\begin{bmatrix} ia & -a \\ a & ia\end{bmatrix}\begin{bmatrix} x \\ y\end{bmatrix}=0$
		$\begin{bmatrix} x \\ y\end{bmatrix}=t\begin{bmatrix} -i \\ 1\end{bmatrix}$
		Therefore, the eigenvectors are $\{\begin{bmatrix} i \\ 1\end{bmatrix}, \begin{bmatrix} -i  \\ 1\end{bmatrix}\}$

### 5.3
6. Find the Spectral Decomposition of the matrix $A$:
	a) $\begin{bmatrix} 1 & i \\ -i & 0\end{bmatrix}$
		To find the spectral decomposition of $A$ we need to find the Eigenvectors of $A$
		Finding Eigenvalues
		$\begin{aligned}det(A-\lambda I)&=(1-\lambda)(-\lambda)-(i)(-i) \\0&=-\lambda+\lambda^{2}+i^{2} \\ 0&=\lambda^{2}-\lambda-1\end{aligned}$
		$\begin{aligned}\lambda&=\frac{1\pm \sqrt{1-4(1)(-1)}}{2} \\ &= \frac{1\pm\sqrt{5}}{2}\end{aligned}$
		Finding Eigenvectors
		Solve for:
		$\begin{bmatrix} 1- (\frac{1+\sqrt{5}}{2}) & i \\ -i & -\frac{1+\sqrt{5}}{2}\end{bmatrix}\begin{bmatrix} x \\ y\end{bmatrix}=0$
		$\begin{bmatrix} x \\ y\end{bmatrix}=t\begin{bmatrix} \frac{-1+\sqrt{5}}{2i} \\ 1\end{bmatrix}$
		$\begin{bmatrix} 1- (\frac{1-\sqrt{5}}{2}) & i \\ -i & - \frac{1-\sqrt{5}}{2}\end{bmatrix}\begin{bmatrix} x \\ y\end{bmatrix}=0$
		$\begin{bmatrix} x \\ y\end{bmatrix}=t\begin{bmatrix} \frac{-1-\sqrt{5}}{2i} \\ 1\end{bmatrix}$
		The Spectral Decomposition of $A$ of $A=\begin{bmatrix}  \frac{-1+\sqrt{5}}{2i} &  \frac{-1-\sqrt{5}}{2i} \\ 1 & 1\end{bmatrix}\begin{bmatrix} \frac{1+\sqrt{5}}{2} & 0 \\ 0 & \frac{1-\sqrt{5}}{2}\end{bmatrix} \begin{bmatrix}  \frac{-1+\sqrt{5}}{2i} &  \frac{-1-\sqrt{5}}{2i} \\ 1 & 1\end{bmatrix}^{-1}$ 

### 6.1
1. Determine whether the given subspace $W\subset V$ is invarient under the given linear mapping $T:V\rightarrow V$
	a) $V=\mathbb{R}^{3}, T:V\rightarrow V$ defined by $\begin{bmatrix}  1 & 3 & 1 \\ 0 & 2 & -1 \\ 1 & 0 & 0\end{bmatrix}, W= Span\{(1,-1,1),(1,2,1)\}$
		Let $T:V\rightarrow V$ be a linear mapping. A subspace $W\subset V$ is said to be *invariant* (or *stable*) under $T$ if $T(W)\subset W$
		We want to see what $T(W)$ would be, and if it could be expressed as a linear combination of $W$
		The bases for $W$ are $\begin{bmatrix} 1 \\ -1 \\ 1\end{bmatrix}$, and $\begin{bmatrix} 1 \\ 2 \\ 1\end{bmatrix}$
		The transformation for each of the bases of $W$ under $T$ would be
		$T(e_{1})=\begin{bmatrix} 1-3+1 \\ -2-1 \\ 1\end{bmatrix}=\begin{bmatrix} -1 \\ -3 \\ 1\end{bmatrix}, T(e_{2})=\begin{bmatrix} 1+6+1 \\ 4-1 \\ 1\end{bmatrix} = \begin{bmatrix} 8 \\ 3 \\ 1\end{bmatrix}$
		Both of these vectors are not linear combinations of  $\begin{bmatrix} 1 \\ -1 \\ 1\end{bmatrix}$ and $\begin{bmatrix} 1 \\ 2 \\ 1\end{bmatrix}$, thus they are not $\subset W$
		Thus, the subspace is *NOT* invariant under $T$
	
	e) $V=M_{2\times 2}(\mathbb{R}), T:V\rightarrow V$ defined by $T(X)=AX-XA$, where $A=\begin{bmatrix} 2 & 1 \\ 1 & 3\end{bmatrix}, W=\{X\in M_{2\times 2}(\mathbb{R})|Tr(X)=0\}$
		Take an arbitrary 2 by 2 matrix $X$, We know that $Tr(X)=0$, thus for $X=\begin{bmatrix} a & b \\ c & d\end{bmatrix}$, we know that $a+d=0$, and $d=-a$
		Solving for $T(X)$, we get: $$\begin{aligned} T(X)&=AX-XA \\ &= \begin{bmatrix} 2 & 1 \\ 1 & 3\end{bmatrix} \begin{bmatrix} a & b \\ c & d\end{bmatrix}- \begin{bmatrix}  a & b \\ c & d\end{bmatrix}\begin{bmatrix} 2 & 1 \\ 1 & 3\end{bmatrix} \\&=\begin{bmatrix} (2a+c)-(2a+b) & (2b+d)-(a+3b) \\ (a+3c)-(2c+d) & (b+3d)-(c+3d)\end{bmatrix} \\ &=\begin{bmatrix} c-b & -b+d-a \\ a+c+d & b-c\end{bmatrix}\end{aligned}$$
		$Tr(T(X))=(c-b)+b-c = 0$
		Thus, $Tr(T(X))\subset W$, so $W$ *IS* invariant under $T$
		

### 6.2
7. Find the canonical form and a canonical basis for each of the following nilpotent linear mappings
	a)The mapping $N$ from Exercise 1a
		$N:C^{4}\rightarrow C^{4}$ defined by:
		$\begin{bmatrix}1&-3&3&-1\\1&-3&3&-1\\1&-3&3&-1\\1&-3&3&-1\end{bmatrix}$
		The only eigenvalue is $\lambda=0$, with multiplicity 3
		A eigenspace for $\lambda=0$ is $(\begin{bmatrix} 1 \\ 0 \\ 0 \\ 1\end{bmatrix}, \begin{bmatrix} -3 \\ 0 \\ 1 \\ 0\end{bmatrix}, \begin{bmatrix} 3 \\ 1 \\ 0 \\ 0\end{bmatrix})$
		The Jordan Canonical Form would be  $\begin{bmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 0 & 0\end{bmatrix}$

### 6.4
2. 
	a) Let $T:C^{9}\rightarrow C^{9}$ be a linear mapping and assume that the characteristic polynomial of $T$ is $((2-i)-\lambda)^{4}(3-\lambda)^{5}$ Assume that:
		$dim(Ker(T-(2-i)I))=3$
		$dim(Ker((T-(2-i)I)^{2}))=4$
		$dim(Ker(T-3I))=2$
		$dim(Ker((T-3I)^{3}))=5$
	Find the Jordan canonical form for $T$
4. Find the Jordan canonical form and a canonical basis for each of the mappings in Exercise 1 of Section 6.3 in this Chapter









