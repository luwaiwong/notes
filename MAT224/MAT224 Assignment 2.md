---
deadline: 2024-02-04
---

#uoft/mat224 #assignment 

# Info

Assignment Questions 	
	Sec 2.1: #3(c)(f)(g), #5(b), #11 (Page 72)
	Sec 2.2: #3(a)(b)(c), #4, #8 (Page 81-82)
	Sec 2.3: #1(b),(d), #3(b), #8 (Page 92-93)
	Sec 2.4: #1(a)(c)(d), #5(a), #9(a), #11 (Page 102-106)

Due: February 4th, 11:59pm

[HW2 Hints](attachments/HW2%20Hints.pdf)

finish 2.1-2 by 6

# Work

**2.1**
3. Determine whether the following functions $T:V \rightarrow W$ define linear transformations
	c. $V = \mathbb{R}^3$ and $W = \mathbb{R}$, $T((a_{1},a_{2}, a_{3}))=3a_{1}+2a_{2}+a_{3}$
	f. $V = \mathbb{R}^3$ and $W = \mathbb{R}$, $T((a_{1},a_{2}, a_{3}))=e^{a_{1}+a_{2}+a_{3}}$
	g. $V = \mathbb{R}$ with the usual vector space structure and $W= \mathbb{R}^{+}$ with the vector space structure given in Example (1.1.4c). $T(x)=e^{x}$

To prove whether the functions are linear transformations, we need to prove that $T(\vec{u}+\vec{v})=T(\vec{u})+T(\vec{v}) \ \text{ and } \ T(a\vec{v}) = aT(\vec{v})$
	c. Is a linear transformation
	f. Is not a linear transformation
	g. Is a linear transformation
1. 
	b) Let $V = C[a,b], W= R$, and let $Int: V\rightarrow W$ be the mapping $Int(f)= \int_{a}^{b}f(x)dx)$. Show that $Int$ is a linear mapping
To show that $Int$ is a linear mapping, we need to prove that $Int(f+g) = Int(f)+Int(g)$, and that $Int(af) = aInt(f)$ 
$$\begin{aligned} Int(f+g) &= \int_{a}^{b}(f(x)+g(x))dx \\ &= \int_{a}^{b}f(x)dx + \int_{a}^{b}g(x)dx \\ &=Int(f)+Int(g)\end{aligned}$$
$$\begin{aligned} Int(af) &= \int_{a}^{b}af(x)dx \\ &= a\int_{a}^{b}f(x)dx \\ &=aInt(f)\end{aligned}$$ 
Since $Int$ satisfies both properties, it can be considered a linear mapping

11. Let $V= \mathbb{R}^{2}$ and $W = P_{3}(R).$ If $T$ is a linear transformation that satisfies $T((1,1)) = x+x^{2}$ and $T((3,0)) = x-x^{3}$, what is $T((2,2))$

$T((2,2))$ would be equal to $2x+2x^{2}$

**2.2**
3. 
	a. Let $V=\mathbb{R}^{3}$ and $W=\mathbb{R}^4$, and let $T:V\rightarrow W$ be defined by $T(x)=(x_{1}-x_{2},x_{2}-x_{3},x_{1}+x_{2}-x_{3},x_{3}-x_{1})$. What is the matrix of $T$ with respect to the standard bases in $V$ and $W$?
		The standard bases are the bases $\{ \begin{bmatrix}1 \\ 0 \end{bmatrix}, \begin{bmatrix}0 \\ 1 \end{bmatrix} \}$
		The matrix of $T$ with respect to the standard bases in $V$ and $W$ is $\begin{bmatrix} 1 & 0 & 1 & -1 \\ -1 & 1 & 1 & 0 \\ 0 & -1 & -1 & 1\end{bmatrix}$
	b. Let $a=(a_{1},...,a_{n})$ be a fixed vector in $V=\mathbb{R}^{n}$, let $W=\mathbb{R}$ and defined $T:V\rightarrow W$ by $T(v)=\Sigma_{i=1}^{n}a_{i}v_{i}$. What is the matrix of $T$ with respect to the standard bases in $V$ and $W$
		The matrix of $T$ with respect to the standard bases in $V$ and $W$ would be $\begin{bmatrix} 1  \\ 1 \\ \vdots \\ 1\end{bmatrix}$, with *n* columns
	c. Let $V$ be the vector subspace of $C(\mathbb{R})$ spanned by $sin(x)$ and $cos(x)$. Define $D:V\rightarrow V$ by $D(f(x))=f'(x)$. What is the matrix of $d$ with respect to the basis ${sin(x),cos(x)}$?
		The matrix of $T$ with respect to the basis $sin(x), cos(x)$ would be $\begin{bmatrix} 0 & -1 \\ 1 & 0\end{bmatrix}$


4. Let $L=Span(\{a\})$ for $a\in \mathbb{R}^{2}$ and $a \neq 0$. Define $R_{a}(v)=2P_{a}(v)-v$, where $P_{a}$ is the projection to the line spanned by $a$.
	a. Show that $R_{a}$ is a linear transformation $$P_{a}(\vec{u}) = \vec{u}\cdot\vec{a}$$
	$$\begin{aligned} R_{a}({\vec{u}},\vec{v}) &= 2P_{a}(\vec{u}+\vec{v})-(\vec{u}+\vec{v}) \\ &= 2P_{a}(\vec{u})-\vec{u}+2P_{a}(\vec{v})-\vec{v} \\ &=R_{a}(\vec{u})+R_{a}(\vec{v})\end{aligned}$$$$\begin{aligned} R_{a}(b\vec{u}) &= 2P_{a}(b\vec{u})-b\vec{u}\\ &=b(2P_{a}(\vec{u})-\vec{u}) \\ &=bR_{a}(\vec{u}) \end{aligned}$$
	Therefore, $R_{a}$ is a linear transformation.

	b. What is the matrix of $R_{a}$ with respect to the standard basis in $\mathbb{R}^{2}$?
		$\begin{bmatrix} -1 & 0\\ 0 & -1\end{bmatrix}$
	c. Give a geometric interpretation of $R_{a}$ similar to that of $P_{a}$.
		The linear transformation $R_{a}$ reflects on the y and x-axis
 
8. 
	a. Let $T: \mathbb{R}^{2}\rightarrow \mathbb{R}^{2}$ be rotation through an angle $\frac{\pi}{3}$. Compute $T((a,a))$ using the matrix of $T$.
		The matrix of $T$ would be $M=\begin{bmatrix} \cos\left(\frac{\pi}{3}\right) & -\sin(\frac{\pi}{3}) \\ \sin(\frac{\pi}{3}) & \cos(\frac{\pi}{3})\end{bmatrix}$
		To compute $T((a,a))$ using the matrix of $T$, compute $M \begin{bmatrix} a \\ a\end{bmatrix}$ $$\begin{aligned} T((a,a)) &= \begin{bmatrix} \cos\left(\frac{\pi}{3}\right) & -\sin(\frac{\pi}{3}) \\ \sin(\frac{\pi}{3}) & \cos(\frac{\pi}{3})\end{bmatrix} \begin{bmatrix} a\\a\end{bmatrix} \\&= \begin{bmatrix} a(\cos(\frac{\pi}{3})-\sin(\frac{\pi}{3})\\a(\sin(\frac{\pi}{3})+\cos(\frac{\pi}{3})\end{bmatrix}\end{aligned}$$
	b. Let $T:\mathbb{R}^{2} \rightarrow  \mathbb{R}^{2}$ be projection to $Span({(1,2)})$. Compute $T((1,1))$ using the matrix of $T$
		The matrix of $T$ would be $M= \begin{bmatrix} \frac{1}{5}  & \frac{2}{5} \\ \frac{2}{5} & \frac{4}{5} \end{bmatrix}$ $$\begin{aligned} T((a,a))&=\begin{bmatrix} \frac{1}{5} & \frac{2}{5} \\ \frac{2}{5} & \frac{4}{5}\end{bmatrix} \begin{bmatrix} 1 \\ 1\end{bmatrix} \\ &=\begin{bmatrix} \frac{1}{5}+\frac{2}{5} \\ \frac{2}{5}+\frac{4}{5}\end{bmatrix}\end{aligned}$$
		$T((1,1))= \begin{bmatrix}0.6 \\ 1.2 \end{bmatrix}$

**2.3**
1. Find a basis for the vector space $V$ so that the first $dim(Ker(T))$ vectors are a basis for $Ker(T), T:V\rightarrow W$ a linear transformation
	$Ker(T)$ is the kernel of the linear transformation $T: V\rightarrow W$ and is defined as the subset of $V$ consisting of all vectors $v\in V$ where $T(v) = 0$
	b)$T: \mathbb{R}^{3}\rightarrow \mathbb{R}$, which is given by $T(x) = x_{1}+x_{2}+x_{3}$
		$\begin{bmatrix}1 & 0 & -1 \\ 0 & 1 & -1 \\0 & 0 & 1 \end{bmatrix}$
	d) $T:\mathbb{R}^{4}\rightarrow P_{2}(\mathbb{R})$ defined by $T(a_{1},...,a_{4})=(a_{1}+a_{2})+(a_{2}+a_{3})x+(a_{3}+a_{4})x^{2}$
		$\begin{bmatrix}1 & 1 & -1 & 1 \\ 1 & 0 & 1 & 0 \end{bmatrix}$

 
3. For each of the following matrices, defining linear maps $T$ between vector spaces of the appropriate dimensions, find bases for $Ker(T)$ and $Im(T)$
	b) $\begin{bmatrix} -1 & 2 & 2 \\ 2 & -4 & 2\end{bmatrix}$
		One basis for $Ker(T)$ and $Im(T)$ is $\{ \begin{bmatrix}-1 \\ 2 \end{bmatrix}, \begin{bmatrix}2 \\ -4 \end{bmatrix} \}$

8. Let $V$ be an *n*-dimensional vector space.
	a) Is it always possible to find a linear transformation $T:V\rightarrow V$ such that $Ker(T)= Im(T)$? Is it ever possible to find such a transformation?
		Yes, the linear transformation that maps to the zero vector will fulfill this requirement
	b) Can you find such a $T$ for $V=\mathbb{R^{2}}$
		One such $T$ that fulfills this requirement is the linear transformation defined by the matrix $\begin{bmatrix}0 & 0  \\ 0  & 0 \end{bmatrix}$

**2.4**
1. Determine if the following linear transformations are injective, surjective, both, or neither:
	Injective means that each input maps to a unique output, and the linear transformation does not map multiple inputs to the same output
	Surjective means that the range of the linear transformation is the same as its image
	a)$T:\mathbb{R}^{3}\rightarrow \mathbb{R}^{3}$ defined by $T(x)=(x_{1}+x_{2},x_{1}+x_{2}+x_{3},x_{2}+x_{3})$
		Surjective and not injective
	c) $T:P_{2}(\mathbb{R}\rightarrow \mathbb{R}^{2})$ defined by $T(p(x))=(p(0),p`(0))$
		Neither surjective or injective
	d) $T:M_{n\times n}(\mathbb{R})\rightarrow M_{n\times n}(\mathbb{R})$ defined by $T(A)=A^{t})$. (See Exercise 12 of Section 2.2 and the preceding comments for the definition of $A^{t}$)
		Both injective and surjective

5. Let $V=P(\mathbb{R})$, the vector space of polynomials of all degrees
	a) Define $T:V\rightarrow V$ by $T(p(x)) = xp(x)$. Is $T$ injective, surjective, both, or neither?
		$T$ is injective, but not surjective

9. Let $T:V\rightarrow W$ be a linear transformation
	a)Let $U\subset V$ be a subspace of $V$ such that $U \cap Ker(T) = {0}$ Prove that $T|_{U}$ is injective (*Hint:* What is $Ker(T|_{U})$?)
		To prove that $T|_{U}$ is injective, we need to prove that $Ker(T|_{U}) = 0$, since $U\cap Ker(T)=0$, that implies that $Ker(T|_{U}) = 0$ 

11. Let $V=U_{1} \bigoplus U_{2}$ be a direct sum decomposition of the vector space $V$
	A direct sum decomposition is a way of decomposing a vector space into the sum of smaller subspaces.
	a) Prove that if $T_{1}:U_{1}\rightarrow U_{1}, i = 1,2$, are linear transformations, then $T:V\rightarrow V$ defined by $T(v)=T_{1}(u_{1})+T_{2}(u_{2})$, where $v=u_{1}+u_{2}$, is a linear transformation.
		To prove whether the functions are linear transformations, we need to prove that $T(\vec{u}+\vec{v})=T(\vec{u})+T(\vec{v}) \ \text{ and } \ T(a\vec{v}) = aT(\vec{v})$
	b) Prove that if $T_{1}$ and $T_{2}$ are injective, then $T$ is injective
		if $T_{1}$ and $T_{2}$ are injective, then $T$, which is the sum of $T_{1}$ and $T_{2}$ must also be injective
	c) Prove that if $T_{1}$ and $T_{2}$ are surjective, then $T$ is surjective
		if $T_{1}$ and $T_{2}$ are surjective, then range and image of $T$ will be the same as the range and image of $T_{1} + T_{2}$, and since $T_{1}$ and $T_{2}$ are surjective, then $T$ must also be surjective

