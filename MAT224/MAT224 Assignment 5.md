#uoft/mat224 
#assignment 

# Info
Questions
	sec 4.3: #4, 6
	sec 4.4: #1, #4(b), #5(a), #13
	sec 4.5: #2(c),#4, #8(a)(b)
	sec 4.6: #1(a)(b),#5,#7,#8
	sec 5.1:#1(b)(e)(f),#3

### 4.3
4. Show that if $x$ and $y$ are orthogonal vectors in $\mathbb{R}^{n}$, then $||x||^{2}+||y||^{2}= ||x-y||^{2}$
	Proof.$$\begin{aligned} ||x||^{2}+||y||^{2}&= ||x-y||^{2} \\(\sqrt{\langle x,x\rangle})^{2}+(\sqrt{\langle y,y \rangle})^{2}&=(\sqrt{\langle x-y,x-y\rangle})^{2}\\ \langle x,x\rangle +\langle y,y\rangle&=\langle x-y,x-y\rangle \\ x_{1}^{2}+...+x_{n}^{2}+y_{1}^{2}+...+y_{n}^{2}&=(x_{1}-y_{1})^{2}+...+(x_{n}-y_{n})^{2}\\&=x_{1}^{2}-2x_{1}y_{1}+y^{2}+...+x_{n}^{2}-2x_{n}y_n+y_{n}^{2}\end{aligned}$$
	If $x$ and $y$ are orthogonal vectors, then for all $i\in \mathbb{R}$, $x_{i}y_{i}=0$
	Therefore, $||x-y||^{2}=x_{1}^{2}+...+y^{2}_{n}=||x||^{2}+||y||^{2}$
	Geometrically, this means:

6. Show that for any vectors $x,y\in \mathbb{R}^{n}, \langle x,y \rangle = (\frac{1}{4})(||x+y||^{2}-||x-y||^{2})$
	Proof. $$]]$$

### 4.4
1. a) Let $W\subset \mathbb{R}^{4}$ be the subspace $W=Span\{\begin{pmatrix}0 \\ 1 \\ 1 \\ -1\end{pmatrix}, \begin{pmatrix}3 \\ 1 \\ 4 \\ 2\end{pmatrix}\}$ Find a basis for the orthogonal complement $W^{\perp}$
		We want to solve for $\begin{bmatrix} 1 & 1 & 1 & 0 & | & 0 \\ 1 & -1 & 0 & 1 & | & 0\end{bmatrix}$
		A basis for the orthogonal complement $W^{\perp}$ would be $\{\begin{pmatrix}1 \\ 1 \\ 1 \\ 0\end{pmatrix}, \begin{pmatrix}1 \\ -1 \\ 0 \\ 1\end{pmatrix}\}$
	b) Same question for $W=Span\{\begin{pmatrix}1 \\ -1 \\ 3 \\ 1\end{pmatrix}, \begin{pmatrix}2 \\ 1 \\ 1 \\ 0\end{pmatrix}\begin{pmatrix}0 \\ 3 \\ -5 \\ -2\end{pmatrix}\}$
		We want to solve for $\begin{bmatrix} 1 & -1 & 3 & 1 & | & 0 \\ 2 & 1 & 1 & 0 & | & 0 \\ 0 & 3 & -5 & -2 & | & 0\end{bmatrix}$
		A basis for the orthogonal complement $W^{\perp}$ would be $\{\begin{pmatrix} -\frac{4}{3} \\ \frac{5}{3} \\ 1 \\ 0\end{pmatrix}, \begin{pmatrix} \frac{1}{3} \\ \frac{2}{3} \\ 0 \\ 1\end{pmatrix}\}$

4. Using Proposition (4.4.6), find the matrix of the orthogonal projection onto the subspace of $\mathbb{R}^{4}$ spanned by the given orthonormal set
	b) $\{\frac{1}{\sqrt{2}}\begin{pmatrix} 1 \\ 0 \\ 1 \\ 0\end{pmatrix}, \frac{1}{\sqrt{2}}\begin{pmatrix}0 \\ 1 \\ 0 \\ 1\end{pmatrix}\}$
		$x=\begin{pmatrix}x_{1} \\ x_2 \\ x_{3} \\ x_{4}\end{pmatrix}$
		$P_{W}(x)=\langle x, a\rangle a+\langle x,b\rangle b$
		$P_{W}(x) =\frac{1}{\sqrt{2}}(x_{1}+x_{3})+ \frac{1}{\sqrt{2}}(x_{2}+x_{4})$
		$P_{W}(x)=\frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1\end{bmatrix}$

### 4.5

2. Find all the eigenvalues and a basis of each eigenspace for each of the following symmetric matrices. In each case show that the eigenvectors corresponding to distinct eigenvalues are orthogonal
	c) $A=\begin{bmatrix} 2 & 1 & 0 \\ 1 & 2 & 1 \\ 0 & 1 & 2\end{bmatrix}$

4. Show that if $A\in M_{n\times n}(\mathbb{R})$ is symmetric and $\lambda\neq \mu$ are eigenvalues of $A$, then $E_{\mu}\subset (E_{\lambda})^{\perp}$ 

8. Show that the linear mapping $T:\mathbb{R}^{2}\rightarrow \mathbb{R}^{2}$