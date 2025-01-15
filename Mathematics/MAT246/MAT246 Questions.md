
TO REMEMBER
	Trig Identities
		$\cos(a)\cos(b)=\frac{1}{2}(\cos(a-b)+\cos(a+b))$
		$\sin(a)\sin(b)=\frac{1}{2}(\cos(a-b)-\cos(a+b))$
		$\cos(a)\sin(b)=\frac{1}{2}(\sin(a+b)+\sin(a-b))$
		$\sin(a)\cos(b)=\frac{1}{2}(\sin(a+b)-\sin(a-b))$
		$\int_{-\pi}^{\pi} \sin(kx)dx= \int_{-\pi}^{\pi}\cos(kx)dx=0$
	[[Dot Product]]
	[[Cauchy-Schwarz Inequality]]
		$|\langle u,v \rangle| \leq ||u|| \ ||v||$
		Or equivalently
		$\left( \sum_{k=1}^{n} u_{k}v_{k} \right)^{2}\leq\left( \sum_{k=1}^{n} u_{k}^{2} \right)\left( \sum_{k=1}^{n}v_{k}^{2} \right)$
	$e^{iy}=(\cos y+i\sin y)$
	$\overline {\langle u,v \rangle}+ \langle u,v \rangle= 2\mathrm{Re}\langle u,v \rangle$
	$\sin(a+bi)=\sin a\cosh b+i\cos a\sinh b$
	$\cos(a+bi)= \cos a\cosh b-i\sin a\sinh b$
	$\overline{\frac{z_{1}}{z_{2}}}=\frac{\overline z_{1}}{\overline z_{2}}$
	$| \frac{z_{1}}{z_{2}} | = \frac{|z_{1}|}{|z_{2}|}$
	 If $T$ is a linear transformation, and $v_{j}$ is a basis vector, $Tv_{j} = \sum_{k=1}^{n}M_{b}(T)_{k,j}$
	 Resolution of the identity, for any vector $v$ and orthonormal basis $w$, $v=\sum \langle w_{i}, v \rangle w_{i}$, and $w_{i}=\sum_{j=1} \langle v_{j}, w_{i} \rangle v_{j}$
	[[norm]] definition
		$||x+y|| \leq ||x||+||y||$
		$||x||=0$ if and only if $x=0$
		$||av||=|a| \ ||v||$
		Parallelogram Law:
			 $||x+y||^{2}+||x-y||^{2}=2(||u||^{2}+||v||^{2})$
		$||u||^{2}=\langle u,u \rangle$
	[[Complex Numbers]]

# Weeks
## Week 1
> Readings:
> 	Chapter 4 Vector Spaces
> Exercises for Chapter 4 starting on p. 46
> 	Calculational Exercises: #1 through #5 
> 	Proof-Writing Exercises: #1 and #2
> [[MAT246 Week 1 Answers.pdf]]

Notation
- $C(\mathbb{R})$ is the set of all continuous functions on $\mathbb{R}$

Questions
1. For each of the following sets, either show that the set is a vector space, or explain why it is not a vector space.
	a) The set $\mathbb{R}$ of real numbers under the usual operations of addition and multiplications
	b) The set $\{(x,0 )| x\in \mathbb{R}\}$ under t under the usual operations of addition and multiplications on $\mathbb{R}^{2}$
	c) The set $\{(x.1) | x\in \mathbb{R}\}$ under the usual operations of addition and multiplication on $\mathbb{R}^{2}$  
	d) The set $\{(x,0) | x\in \mathbb{R}, x\geq 0\}$ under the usual operations of addition and multiplications on $\mathbb{R}^{2}$
	e) The set $\{(x,1) | x\in \mathbb{R},x \geq 0\}$ under the usual operations of addition and multiplication on $\mathbb{R}^{2}$
	f) The set $\{\begin{bmatrix} a & a+b \\ a+b  &  a \end{bmatrix} | a,b\in \mathbb{R}\}$ under the usual operations of addition and multiplication on $\mathbb{R}^{2\times 2}$
	g) The set $\{\begin{bmatrix} a & a+ b + 1   \\ a+b & a \end{bmatrix}| a,b\in \mathbb{R} \}$ under the usual operations of addition and multiplication on $\mathbb{R}^{2\times 2}$ 
	**Solution:**
		Prove axioms of vector space
		a) Is vector space
		b) Is vector space
		c) Not vector space, not closed under addition
		d) Not vector space, no additive inverse
		e) Not vector space, no additive inverse, not closed under addition
		f) Is vector space
		g) Not vector space, no 0 element


2.  Show that the space $V=\{(x_{1},x_{2},x_{3})\in \mathbb{F}^3 | x_{1}+2x_{2}+2x_{3}=0 \}$ forms a vector space
	**Solution**
		Show closure under addition and multiplication, prove axioms

3. For each of the following sets, either show that the set is a subspace of $C(\mathbb{R} )$ or explain why it is not a subspace
	a) The set $\{f\in C(\mathbb{R} ) | f(x)\leq 0, \forall x \in \mathbb{R}\}$
	b) The set $\{f\in C(\mathbb{R} )| f(0)=0\}$
	c) The set $\{ f\in C(\mathbb{R}) | f(0)=2\}$
	d) The set of all constant functions
	e) The set $\{\alpha+\beta \sin(x)|\alpha,\beta \in \mathbb{R}\}$
	**Solution**
		Show closure under addition and multiplication, vector axioms
		a) Not subspace, not closed under multiplication
		b) Is subspace
		c) Not subspace, not closed under addition
		d) Is subspace
		e) Is subspace

4. Give an example of a nonempty subset $U \subset \mathbb{R}^{2 }$ such that $U$ is closed under scalar multiplication but is not a subspace of $\mathbb{R}^{2 }$
	**Solution:**
		Take the set $U=\{ (x,y)\in \mathbb{R}: |y|\geq |x| \}$
		$v=(1,1)$ and $w=(1,-1)$ belong to $U$, but $v+w=(2,0)$ does not

5. Let $\mathbb{F}[z]$ denote the vector space of all polynomials with coefficients in $\mathbb{F}$, and define $U$ to be the subspace of $\mathbb{F}[z]$ given by
$$U=\{ az^{2 }+bz^{5}|a,b\in \mathbb{F} \}$$
	Find a subspace $W$ of $\mathbb{F}[z]$ such that $\mathbb{F}[z]=U \oplus W$ 

Proof Exercises
1. Let $V$ be a vector space over $\mathbb{F}$. Then, given $a\in \mathbb{F}$ and $v\in V$ such that $av=0$, prove that either $a=0$ or $v=0$
	**Solution**
		Use existence of inverses

2. Let $V$ be a vector space over $\mathbb{F}$ and suppose that $W_{1 }$ and $W_{2}$ are subspaces of $V$. Prove that their intersection $W_{1}\cap W_{2}$ is also a subspace of $V$
	**Solution:**
		Prove addition and multiplication are closed in $W_{1}\cap W_{2}$ 

## Week 2
>Readings Chapter 5?
>Exercises for Chapter 5 starting on p. 61
>	Calculational Exercises: #1,  #4, #5(b-e)
>	Proof-Writing Exercises: #1 through #3 
>[[MAT246 Week 2 Answers.pdf]]

Calculational Exercises
1. Show that the vectors $v_{1}=(1,1,1), v_{2}=(1,2,3,)$ and $v_{3}=(2,-1,1)$ are linearly independent in $\mathbb{R}^{3}$. Write $v=(1,-2,5)$ as a linear combination of $v_{1},v_{2},v_{3}$
	**Solution:**
		Solve system of linear equations
		$\begin{align}a+b+2c&=0 \\ a+2b-c &= 0 \\ a+3b+c&=0 \end{align}$
		And show this is only possible when $a, b$ and $c$ are 0
		To write linear combination, solve system of linear equations
		$\begin{align}a+b+2c&=1 \\ a+2b-c &= -2 \\ a+3b+c&=-5\end{align}$

4. Determine the value of $\lambda\in \mathbb{R}$ for which each list of vectors is linearly dependent
	a) $((\lambda,-1,-1),(-1,\lambda,-1),(-1,-1,\lambda))$ as a subset of $\mathbb{R}^{3}$
	b) $(\sin^{2}(x),\cos(2x), \lambda)$, as a subset of $C(\mathbb{R})$
	**Solution:**
		a) $\lambda = -1$ or $2$
		b) $\lambda = 1$ 

5. Consider the real vector space $V=\mathbb{R}^{4}$. For each of the following five statements, provide either a proof or a counterexample
	b) $span((1,1,0,0),(0,1,1,0),(0,0,1,1))=V$
	c) The list $((1,-1,0,0),(0,1,-1,0),(0,0,1,-1),(-1,0,0,1))$ is linearly independent
	d) Every list of four vectors $v_{1},\dots,v_{4}\in V$, such that $span(v_{1},\dots,v_{4})=V$ is linearly independent
	e) Let $v_{1}$ and $v_{2}$ be two linearly independent vectors in $V$. Then, there exist vectors $u,w\in V$, such that $(v_{1},v_{2},u,w)$ is a basis for $V$
	**Solution:**
		b) Obviously false, not enough dimensions, find counterexample
		c) False, solve system of linear equations similar to q1
		d) True, proof by counterexample, if $span(v_{1},\dots,v_{4})=V$ but list is linearly dependent, then $dim(V) \leq 3$, but this is not true because $V=\mathbb{R}^{4}$
		e) See basis extension theorem 

Proof Exercises
1. Let $V$ be a vector space over $\mathbb{F}$ and define $U=span(u_{1},u_{2},\dots,u_{n})$ where for each $i=1,\dots,n,u_{i}\in V$ Now suppose $v\in U$. Prove $U=span(v,u_{1},u_{2},\dots,u_{n})$
	**Solution:**
		Show that $U\subseteq span(v,u_{1},u_{2},\dots,u_{n})$ and that $span(v,u_{1},u_{2},\dots,u_{n}) \subseteq U$ 
		For any $s\in span(v,u_{1},u_{2},\dots,u_{n})$, there is $a(a'_{1}u_{1},\dots,a'_{n}u_{n})+ a_{1}u_{1}+\dots+a_{n}u_{n}$ because $v\in U$, so the second item is true, first item is trivial

2. Let $V$ be a vector space over $\mathbb{F}$ and suppose that the list $(v_{1},v_{2},\dots,v_{n})$ of vectors spans $V$, where each $v_{i}\in V$. Prove that the list $(v_{1}-v_{2},v_{2}-v_{3},v_{3}-v_{4},\dots,v_{n-1}-v_{n},v_{n})$ also spans $V$
	**Solution:**
		Show every item in $(v_{1},v_{2},\dots,v_{n})$ can be written as items in $(v_{1}-v_{2},v_{2}-v_{3},v_{3}-v_{4},\dots,v_{n-1}-v_{n},v_{n})$, thus they span same combination

3. Let $V$ be a vector space over $\mathbb{F}$, and suppose that $(v_{1},v_{2}.\dots,v_{n})$ is a linearly independent list of vectors in $V$. Given any $w\in V$ such that $(v_{1}+w,v_{2}+\mathbf{w}..,v_{n}+w)$ is a linearly dependent list of vectors in $V$, prove that $w\in span(v_{1},v_{2},\dots,v_{n})$
	**Solution:**
		(Hint: Just write out the formulas)

## Week 3
>Readings: Chapter 5 & Chapter 9?
>Exercises for Chapter 5 starting on p. 61  
> 	Calculational Exercises: #2, 3, 5(a)  
> 	Proof-Writing Exercises: #5, 6
>Exercises for Chapter 9 starting on p. 136  
> 	Proof-Writing Exercises: #1, 2, 4
> [[MAT246 Week 3 Answers.pdf]]

Notes:
	[[Norm]]
		$||u||^{2}=\langle u,u \rangle$
	[[Dot Product]]
	[[Cauchy-Schwarz Inequality]]
		$|\langle u,v \rangle| \leq ||u|| \ ||v||$
		Or equivalently
		$\left( \sum_{k=1}^{n} u_{k}v_{k} \right)^{2}\leq\left( \sum_{k=1}^{n} u_{k}^{2} \right)\left( \sum_{k=1}^{n}v_{k}^{2} \right)$
		

**Chapter 5 Exercises**
Calculational Exercises
2. Consider the complex vector space $V=\mathbb{C}^{3}$ and the list $(v_{1},v_{2},v_{3})$ of vectors in $V$, where $v_{1}=(i,0,0), v_{2}=(i,1,0), v_{3}=(i,i,-1)$
	1. Prove that $span(v_{1},v_{2},v_{3})=V$
	2. Prove or disprove: $(v_{1},v_{2},v_{3} )$ is a basis for $V$
	**Solution:**
		Solve matrices, show that three vectors are linearly independent, note that $dim(\mathbb{C}^{3})=3$, then three vectors must be a basis

3. Determine the dimension of each of the following subspaces of $\mathbb{F}^{4}$
	1. $\{ (x_{1},x_{2},x_{3},x_{4})\in \mathbb{F}^{4} | x_{4}=0\}$
	2. $\{ (x_{1},x_{2},x_{3},x_{4})\in \mathbb{F}^{4} | x_{4}=x_{1}+x_{2} \}$
	3. $\{ (x_{1},x_{2},x_{3},x_{4})\in \mathbb{F}^{4} | x_{4}=x_{1}+x_{2}, x_{3}=x_{1}-x_{2} \}$
	4. $\{ (x_{1},x_{2},x_{3},x_{4})\in \mathbb{F}^{4}|x_{4}=x_{1}+x_{2}, x_{3}=x_{1}-x_{2}, x_{3}+x_{4}=2x_{1} \}$
	5. $\{ (x_{1},x_{2},x_{3},x_{4})\in \mathbb{F}^{4} | x_{1}=x_{2}=x_{3}=x_{4} \}$
	**Solution**
		a) 3
		b) 3
		c) 2
		d) 2
		e) 1

5. Consider the real vector space $V=\mathbb{R}^{4 }$. For each of the following five statements, provide either a proof or a counterexample
	a) $dim(V)=4$

Proof Exercises
5. Let $V$ be a finite-dimensional vector space over $\mathbb{F}$ and suppose that $U$ is a subspace of $V$ for which $dim(U)=dim(V)$ prove that $U=V$
	**Solution:** Show that basis would be the same

6. Let $\mathbb{F}_{m}[z]$ denote the vector space of all polynomials with degree less than or equal to $m\in \mathbb{Z}_{+}$ and having coefficient over $\mathbb{F}$, and suppose that $p_{0},p_{1},\dots,p_{m}\in \mathbb{F}_{m}[z]$ satisfy $p_{j}(2)=0$. Prove that $(p_{0},p_{1},\dots,p_{m})$ is a linearly dependent list of vectors in $\mathbb{F}_{m}[z]$
	**Solution:** 
		Note that every vector $p_{i}$ can be written as $(z-2)(q_{i}(z))$, because $2$ is a factor. Then we can rewrite
		$a_{1}p_{1}+\dots+a_{n }p_{n}=0$ as $(z-2)(a_{1}q_{1}+\dots a_{n}q_{n})$. But since there are $n$ polynomials in $(a_{1}q_{1}+\dots a_{n}q_{n})$, but $q_{i}\in F_{m-1}[z]$, then the list consists of $n$ polynomials in a space of dimension $n-1$, and the list must be linearly dependent

**Chapter 9 Exercises**
1. Let $V$ be a finite-dimensional inner product space over $\mathbb{F}$. Given any vectors $u,v\in V$, prove that the following two statements are equivalent
	a) $\langle u,v \rangle=0$
	b) $||u|| \leq ||u+av||$  for every $a\in \mathbb{F}$
	**Solutions:**
		a) $\implies$ b) is easy, not going to cover
			Write out what $||u+ab||^{2}$ is, and remember properties of [[Dot Product]]
		b) $\implies$ a) 
			Solve out $||u||^{2} \leq ||u+av||^{2}$

2. Let $n=\mathbb{Z}_{+}$ be a positive integer, and let $a_{1},\dots,a_{n},b_{1},\dots,b_{n}\in \mathbb{R}$ be any collection of $2n$ real numbers, Prove that 
$$\left( \sum_{k+1}^{n}a_{k}b_{k} \right)^{2}\leq \left( \sum_{k=1}^{n}ka_{k}^{2} \right)\left( \sum_{k=1}^{n} \frac{b^{2}_{k}}{k} \right)$$
	**Solution:** 
		Use [[Cauchy-Schwarz Inequality]]

4. Let $V$ be a finite-dimensional inner product space over $\mathbb{R}$. Given $u,v\in V$, prove that $\langle u,v \rangle = \frac{||u+v||^{2}-||u-v||^{2}}{4}$
	**Solution:** Write 
		Write out that $||u+v||^{2}=\langle u+v,u+v \rangle = \langle u,u \rangle + 2\langle u,v \rangle+\langle v,v \rangle$

## Week 4
>Readings: Chapter 9
>Exercises for Chapter 9 starting on p. 136
> 	Calculational Exercises: #1, 2, 3, 4
> 	Proof-Writing Exercises: #1, 2, 3, 4 (Note, #1, 2 and 4 were assigned last week)
> [[MAT246 Week 4 Answers.pdf]]

Notes:
	[[Gram-Schmidt Process]]
	Trig Identities
		$\cos(a)\cos(b)=\frac{1}{2}(\cos(a-b)+\cos(a+b))$
		$\sin(a)\sin(b)=\frac{1}{2}(\cos(a-b)-\cos(a+b))$
		$\cos(a)\sin(b)=\frac{1}{2}(\sin(a+b)+\sin(a-b))$
		$\sin(a)\cos(b)=\frac{1}{2}(\sin(a+b)-\sin(a-b))$
		$\int_{-\pi}^{\pi} \sin(kx)dx= \int_{-\pi}^{\pi}\cos(kx)dx=0$
	Parallelogram Law:
		 $||x+y||^{2}+||x-y||^{2}=2(||u||^{2}+||v||^{2})$

Calculational Exercises
1. Let $(e_{1},e_{2},e_{3})$ be the canonical basis of $\mathbb{R}^{3}$, and define $f_{1}=e_{1}+e_{2}+e_{3}, f_{2}=e_{2}+e_{3}, f_{3}=e_{3}$
	a) Apply the Gram-Schmidt process to the basis $(f_{1},f_{2},f_{3})$
	b) What do you obtain if you instead applied the Gram-Schmidt Process to the basis $(f_{3},f_{2},f_{1})$?
	**Solutions:**
		a) Follow [[Gram-Schmidt Process]]
			Result is $v_{1}=\frac{1}{\sqrt{ 3 }}(e_{1}+e_{2}+e_{3})$, $v_{2}=\frac{1}{\sqrt{ 6 }}(e_{2}+e_{3}-2e_{1})$, and $v_{3}=\frac{1}{\sqrt{2}}(e_{3}-e_{2})$
		b) $v_{1}=e_{3}, v_{2}=e_{2}, v_{3}=e_{1}$


2. Let $C[-\pi,\pi]=\{ f:[-\pi ,\pi] \to \mathbb{R} | f \text{ is continuous} \}$ denote the inner product space of continuous real-valued functions defined on the interval $[-\pi,\pi]\subset \mathbb{R}$ with inner product given by 
$$\langle f,g \rangle =\int_{-\pi}^{\pi}f(x)g(x)dx \ \ \text{ for every } \ \ f,g\in C[-\pi,\pi]$$
	Then, given any positive integer $n\in \mathbb{Z}$, verify that the set of vectors 
	$\left\{  \frac{1}{\sqrt{ 2\pi }}, \frac{\sin(x)}{\sqrt{ \pi }}, \frac{\sin(2x)}{s_{1}\pi},\dots, \frac{\sin(nx)}{\sqrt{ \pi }}, \frac{\cos(x)}{\sqrt{ \pi }}, \frac{\cos(2x)}{\sqrt{ \pi }},\dots, \frac{\cos(nx)}{\sqrt{ \pi }} \right\}$
	is orthonormal
	**Solution:**
		View trig identities above

3. Let $\mathbb{R}_{2}[x]$ denote the inner product space of polynomials over $\mathbb{R}$ having degree at most two, with inner product given by $\langle f,g \rangle=\int_{0}^{1} f(x)g(x)dx, \text{ for every } f,g\in \mathbb{R}_{2}[x]$
	Apply the Gram-Schmidt procedure to the standard basis $\{ 1,x,x^{2} \}$ for $\mathbb{R}_{2}[x]$ in order to produce an orthonormal basis for $\mathbb{R}_{2}[x]$
	**Solution:**
		Apply Gram Schmidt

4. Let $v_{1},v_{2},v_{3}\in \mathbb{R}^{3}$ be given by $v_{1}=(1,2,1), v_{2}=(1,-2,1)$ and $v_{3}=(1,2,-1)$. Apply the Gram-Schmidt procedure to the basis $(v_{1},v_{2},v_{3})$ of $\mathbb{R}^{3}$, and call the resulting orthonormal basis $(u_{1},u_{2},u_{3})$
	**Solution:**
		Apply Gram Schmidt

Proof Exercises
> #1,2, and 4 are in last week, and so will be omitted

3. Prove or disprove the following claim
	Claim: There is an inner product $\langle  .,. \rangle$ on $\mathbb{R}^{2}$ whose associated norm $|| \ . ||$ is given by the formula $||(x_{1},x_{2})|| = |x_{1}|+|x_{2}|$, for every vector $(x_{1},x_{2})\in \mathbb{R}^{2}$, where $| \ . |$ denotes the absolute value function on $RR$
	**Solution:**
		The claim is false, show that [[Parallelogram Law]] cannot be satisfied
## Week 5
>Readings: Chapter 6
>Exercises for Chapter 6 starting on p. 82
>	Calculational Exercises: #1 (a), (b), 2 (c), (d), 4
>	Proof-Writing Exercises: #2, 3, 4
>[[MAT246 Week 5 Answers.pdf]]


Calculational Exercises
1. Define the map $T:\mathbb{R}^{2}\to \mathbb{R}^{2}$ by $T(x,y)=(x+y,x)$
	a) Show that $T$ is linear
	b) Show that $T$ is surjective
	**Solution:**
		pretty easy

2. Let $T\in L(\mathbb{R}^{2})$ be defined by $T \begin{pmatrix}x \\ y\end{pmatrix} = \begin{pmatrix}y \\ -x\end{pmatrix}$, for all $\begin{pmatrix}x \\ y\end{pmatrix}\in \mathbb{R}^{2}$
	c) Find the matrix for $T$ with respect to the canonical basis of $\mathbb{R}^{2}$
	d) Show that the map $F:\mathbb{R}^{2}\to \mathbb{R}^{2}$ given by $F(x,y)=(x+y,x+1)$ is not linear
	**Solution**
		c) $\begin{bmatrix}0 & -1 \\ 1 & 0\end{bmatrix}$
		d) Show that $F(\vec{x}+\vec{y})\neq F(\vec{x})+F(\vec{y})$

4. Give an example of a function $f:\mathbb{R}^{2}\to \mathbb{R}$ having the property that $\forall a\in \mathbb{R}, \forall v\in \mathbb{R}^{2}, f(av)=af(v)$, but such that $f$ is not a linear map
	**Solution:**
		For $f(x,y)= \begin{cases} 0, \text{ if }y=0 \\ \frac{x^{2}}{y}, \text{ if }y\neq 0\end{cases}$

Proof Exercises
2. Let $V$ and $W$ be vector spaces over $\mathbb{F}$, and suppose that $T\in L(V,W)$ is injective. Given a linearly independent list $(v_{1},\dots,v_{n})$ of vectors in $V$, prove that the list $(T(v_{1}),\dots,T(v_{n}))$ is linearly independent in $W$
	**Solution:**
		If $T(v_{1})+\dots+T(v_{n})=0$, then $T(v_{1}+\dots+v_{n})=0$. But if $T$ is injective, then $v_{1}+\dots+v_{n}=0$, but this is a contradiction

3. Let $U,V$ and $W$ be vector spaces over $\mathbb{F}$, and suppose that the linear maps $S\in L(U,V)$ and $T\in L(V,W)$ are both injective. Prove that the composition map $T \circ S$ is injective
	**Solution:**
		Show null space is 0 for both ways

4. Let $V$ and $W$ be vector spaces over $\mathbb{F}$, and suppose that $T\in L(V,W)$ is surjective. Given a spanning list $(v_{1},\dots,v_{n})$ for $V$, prove that $span(T(v_{1}), \dots,T(v_{n}))=W$
	**Solution:**
		Show that for any $w$, there is $w=T(v)=T\left( \sum a_{i}v_{i} \right)$, so $w=\sum a_{i}T(v_{i})$, so the above is true

## Week 6
>Readings: Chapter 6
>Exercises for Chapter 6 starting on p. 82
>	Calculational Exercises: #1 (d), (e), (f) 
>	Proof-Writing Exercises: #1, 5, 8
>[[MAT246 Week 6 Answers.pdf]]

Calculational Exercises
1. Define the map $T:\mathbb{R}^{2}\to \mathbb{R}^{2}$ by $T(x,y)=(x+y,x)$
	d) Find the matrix for $T$ with respect to the canonical basis of $\mathbb{R}^{2}$
	e) Find the matrix for $T$ with respect tot he canonical basis for the domain $\mathbb{R}^{2}$ and the basis $((1,1),(1,-1))$ for the target space $\mathbb{R}^{2}$
	f) Show that the map $F:\mathbb{R}^{2}\to \mathbb{R}^{2}$ given by $F(x,y)=(x+y, x+1)$ is not linear
	**Solution:**
		d) $\begin{bmatrix} 1 & 1 \\ 1 & 0\end{bmatrix}$
		3) $\begin{bmatrix} 1 & \frac{1}{2} \\ 0 & \frac{1}{2}\end{bmatrix}$
		f) same as 2d above

Proof Exercises
1. Let $V$ and $W$ be vector spaces over $\mathbb{F}$ with $V$ finite-dimensional, and let $U$ be any subspace of $V$. Given a linear map $S\in L(U,W)$. prove that there exists a linear map $T\in L(V,W)$ such that, for every $u\in U, S(u)=T(u)$
	**Solution:**
		Have $T(u)$ map every vector not in $U$ to 0

5. Let $V$ and $W$ be vector spaces over $\mathbb{F}$ with $V$ finite-dimensional. Given $T\in L(V,W)$, prove that there is a subspace $U$ of $V$ such that $U\cap \text{null} (T)=\{ 0 \} \text{ and  range}(T)=\{ T(u)| u\in U \}$
	**Solution:**
		Get a basis of $\text{null}(T)$, extend it to a basis for $V$, the extended basis is basis for $U$, and span of it forms subspace

8. Let $V$ be a finite-dimensional vector space over $\mathbb{F}$ with $S,T\in L(V,V)$. Prove that $T\circ S$ is invertible if and only if both $S$ and $T$ are invertible
	**Solution:** 
		Show injectivity, since $S$ and $T$ are self maps, they are automatically surjective, and they are invertible

## Week 7
> Readings: Chapter 10
> Exercises for Chapter 10 starting on p. 145  
	Calculational Exercises: #1, 3(a)  
	Proof-Writing Exercises: #1, 2
> [[MAT246 Week 7 Answers.pdf]]'

Calculational Exercises
1. Consider $\mathbb{R}^{2}$ with two orthonormal bases: the canonical basis $e=(e_{1},e_{2},e_{3})$ and the basis $f=(f_{1}, f_{2}, f_{3},)$ where
$$f_{1} = \frac{1}{\sqrt{ 3 }}(1,1,1), f_{2} = \frac{1}{\sqrt{ 6 }}(1,-2,1), f_{3}= \frac{1}{\sqrt{ 2 }}(1,0,1)$$
	Find the matrix $S$, of the change of basis transformation such that $[v]_{f}=S[v]_{e}$ for all $v\in \mathbb{R}^{3}$. Where $[v]_{b}$ denotes the column vector of $v$ with respect to the basis $b$
	**Solution:**
		$S=\begin{bmatrix} \frac{1}{\sqrt{ 3 }} & \frac{1}{\sqrt{ 3 }} & \frac{1}{\sqrt{ 3 }} \\ \frac{1}{\sqrt{ 6 }} & -\frac{2}{\sqrt{ 6 }} & \frac{1}{\sqrt{ 6 }} \\ \frac{1}{\sqrt{ 2 }} & 0 & \frac{1}{\sqrt{ 2 }}\end{bmatrix}$

3. Let $U$ be the subspace of $\mathbb{R}^{3}$ that coincides with the plane through the origin that is perpendicular to the vector $n=(1,1,1)\in \mathbb{R}^{3}$
	a) Find an orthonormal basis for $U$
	**Solution**
		First find plane that is perpendicular to $n=(1,1,1)$
		$\langle x,n \rangle=0=x_{1}+x_{2}+x_{3}=0$
			$x_{3}=-(x_{1}+x_{2})$
			$x_{2}=x_{2}$
			$x_{1}=x_{1}$
			Orthogonal basis is $\begin{pmatrix}1 \\ 0 \\ -1\end{pmatrix}, \begin{pmatrix}1 \\ -2 \\ 1\end{pmatrix}$
			normalize


Proof Exercises
1. Let $V$ be a finite-dimensional vector space over $\mathbb{F}$ with dimension $n\in \mathbb{Z}_{+}$, and suppose that $b=(v_{1},v_{2},\dots,v_{n})$ is a basis for $V$. Prove that the coordinate vectors $[v_{1}]_{b}, [v_{2}]_{b},\dots,[v_{n}]_{b}$ with respect to $b$ to form a basis for $\mathbb{F}^{n}$
	**Solution:**
		Since $b$ is a basis, for every $v\in V$, $v=a_{1}v_{1}+a_{2}v_{2}+\dots+a_{n}v_{n}$, and $[v]_{b}=[a_{1,\dots,a_{n}}]$
		And each $[v_{1}]_{b}=(1,0,\dots,0), [v_{2}]_{b}=(0,1,\dots,0), [v_{n}]_{b}=(0,0,\dots,1)$, and each $[v_{1}]_{b}$ is the $i$th vector of the canonical basis of $\mathbb{F}^{n}$

2. Let $V$ be a finite-dimensional vector space over $\mathbb{F}$, and suppose that $T\in L(V)$ is a linear operator having the following property: Given any two bases $b$ and $c$ for $V$, the matrix $M(T,b)$ for $T$ with respect to $b$ is the same as the matrix $M(T,c)$ for $T$ with respect to $c$. Prove that there exists a scalar $\alpha\in \mathbb{F}$ such that $T=\alpha I_{V}$ where $I_{V}$ denotes the identity map on $V$
	**Solution:**
		With two vectors $w,v$, crease bases $b=(v,w, \dots), c=(w,v, \dots)$
		Show that there must be $\lambda$ where $w=Tv=\lambda v$
## Week 8
> Readings: Chapter 2, 4, 5, 6
> 	Exercises for Chapter 2 starting on p. 24  
> 		Calculational Exercises: #1, 2, 5, 6, 7  
> 		Proof-Writing Exercises: #1, 2, 3
> 	Exercises for Chapter 4 starting on p. 46  
> 		Calculational Exercises: #5 
> 	Exercises for Chapter 5 starting on p. 61  
> 		Calculational Exercises: #2 
> 	Exercises for Chapter 9 starting on p. 136  
> 		Proof-Writing Exercises: #5
> [[MAT246 Week 8 Answers.pdf]]

Notes:
	$e^{iy}=(\cos y+i\sin y)$
	$\overline {\langle u,v \rangle}+ \langle u,v \rangle= 2\mathrm{Re}\langle u,v \rangle$
	$\sin(a+bi)=\sin a\cosh b+i\cos a\sinh b$
	$\cos(a+bi)= \cos a\cosh b-i\sin a\sinh b$
	$\overline{\frac{z_{1}}{z_{2}}}=\frac{\overline z_{1}}{\overline z_{2}}$
	$| \frac{z_{1}}{z_{2}} | = \frac{|z_{1}|}{|z_{2}|}$

**Chapter 2**
Calculational Exercises
1. Express the following complex numbers in the form $x+yi$ for $x,y\in \mathbb{R}$
	a) $(2+3i)+(4+i)$
	b) $(2+3i)^{2}(4+i)$
	c) $\frac{2+3i}{4+i}$
	d) $\frac{1}{i}+\frac{3}{1+i}$
	e) $(-i)^{-1}$
	f) $(-1+i\sqrt{ 3 })^{3}$
	**Solutions:**
		a)

2. Compute the real and imaginary parts of the following expressions, where $z$ is the complex number $x+yi$ and $x,y\in \mathbb{R}$
	a) $\frac{1}{z^{2}}$
	b) $\frac{1}{3z+2}$
	c) $\frac{z+1}{2z-5}$
	d) $z^{3}$

5. Calculate the 
	a) complex conjugate of the fraction  $\frac{(3+8i)^{4}}{(1+i)^{10}}$
	b) complex conjugate of the fraction $\frac{(8-2i)^{10}}{(4+6i)^{5}}$
	c) complex modulus of the fraction $\frac{i(2+3i)(5-2i)}{(-2-i)}$
	d) complex modulus of the fraction $\frac{(2-3i)^{2}}{(8-6i)^{2}}$

6. Compute the real and imaginary parts:
	a) $e^{2+i}$
	b) $\sin(1+i)$
	c) $e^{3-i}$
	d) $\cos(2+3i)$
	**Solutions:**
		a) $e^{2+i}=e^{2} \cdot e^{i}=e^{2}(\cos 1+i\sin 1)$

7. Compute the real and imaginary parts of $e^{e^{x}}$ for $z\in \mathbb{C}$
	**Solution:**
		Use the identity $e^{iy}=(\cos y+i\sin y)$ from above
		$\mathrm{Re}(e^{e^{x}})=e^{e^{x}\cos y}\cos(e^{x}\sin y)$
		$\mathrm{Im}(e^{e^{x}})=e^{e^{x}\cos y}\sin(e^{x}\sin y)$


Proof Exercises
1. Let $a\in \mathbb{R}$ and $z,w\in \mathbb{C}$ Prove that
	a) $\mathrm{Re}(az)=a\mathrm{Re}(z) \text{ and } \mathrm{Im}(az)=a\mathrm{Im}(z)$
	b) $\mathrm{Re}(z+w)=\mathrm{Re}(z)+\mathrm{Re}(w) \text{ and } \mathrm{Im}(z+w)= \mathrm{Im}(z) + \mathrm{Im}(w)$

2. Let $z\in \mathbb{C}$. Prove that $\mathrm{Im}(z)=0$ if and only if $\mathrm{Re}(z)=z$
	**Solution:**
		If $z$ is a complex number, then $z=\mathrm{Re}(z_{0})+i\mathrm{Im}(z)$
		Proof is obvious

3. Let $z,w\in \mathbb{C}$. Prove the *Parallelogram law* $|z-w|^{2}+|z+w|^{2}=2(|z|^{2}+|w|^{2})$
	**Solution:**
		Use $|z|^{2}= z\overline z$, expand left size

**Chapter 4**
5. Let $\mathbb{F}[z]$ denote the vector space of all polynomials with coefficients in $\mathbb{F}$, and define $U$ to be the subspace of $\mathbb{F}[z]$ given by $U= \{ az^{2}+bz^{5} | a,b\in \mathbb{F} \}$
	Find a subspace $W$ of $\mathbb{F}[z]$ such that $\mathbb{F}[z]=U\oplus W$ 

**Chapter 5**
2. Consider the complex vector space $V=\mathbb{C}^{3}$ and the list $(v_{1},v_{2},v_{3})$ of vectors in $V$, where $v_{1}=(i,0,0), v_{2}=(i,1,0), v_{3}=(i,i,-1)$
	a) Prove that $span(v_{1},v_{2},v_{3})=V$
	b) Prove or disprove: $(v_{1},v_{2},v_{3} )$ is a basis for $V$
	**Solution:**
		Solve matrices, show that three vectors are linearly independent, note that $dim(\mathbb{C}^{3})=3$, then three vectors must be a basis

**Chapter 9**
5. Let $V$ be a finite-dimensional inner product space over $\mathbb{C}$. Given $u,v\in V$, prove that $\langle u,v \rangle = \frac{||u+v||^{2}-||u-v||^{2}}{4}+ \frac{||u+iv||^{2}-||u-iv||^{2}}{4}i$
	**Solution:**
		Use identities above, show that the first part is equal to $\mathrm{Re}\langle  u,v \rangle$, and the second is equal to $\mathrm{Im}\langle u,v \rangle$
## Week 9
> Readings: Chapter 6
> Exercises for Chapter 6 starting on p. 24  
> 	Calculational Exercises: #3
> 	[[MAT301 DSProblems.pdf]]
> [[MAT246 Week 9 Answers.pdf]]

Worksheet Questions
1. Let $f:[0,1]\to \mathbb{C}$ such that $f(x)=\frac{1}{i-x}$. Find the real and imaginary parts of $f$. Compute $f'(x)$ and $\int_{0}^{1}f(x)dx$

2. Show that the maps $Tf:f\to f'$ and $Sf:f\to \int_{0}^{x}f(t)dt$ are $\mathbb{C}$-linear maps from $C^{1}([0,1], \mathbb{C})$ to $C([0,1], \mathbb{C})$ and $C([0,1],\mathbb{C})$ to $\mathbb{C}$, respectively

3. Using the fundamental theorem of calculus for real functions, prove the fundamental theorem of calculus for complex functions, i.e.
	$\int_{0}^{1}f'(x)dx=f(1)-f(0)$
	for $f\in C^{1}([0,1],\mathbb{C})$
	**Solution:**
		Split $f$ into $f=f_{r}+if_{i}$, with $f_{r}$ and $f_{i}$ real-valued

4. Show that $\frac{d}{dt}e^{zt}=ze^{zt}$

5. Consider the integral $I=\int_{0}^{\infty}e^{-at}\cos(bt)dt$ where $a>0$, and $b\in \mathbb{R}$ are real numbers
	1. Calculate $I$ using integration by parts
	2. Show that $I=\mathrm{Re}\left[ \int_{0}^{\infty}e^{-(a-ib)t}dt \right]$ where $\mathrm{Re}$ denotes the real part of a complex number
	3. Calculate $I$ using the formula above. Which do you prefer?

6. Let $V$ be a finite-dimensional inner product space over $\mathbb{C}$ with inner product $\langle  \ ., . \rangle$ and $b=\{ b_{1},\dots,b_{n} \}$ an orthonormal basis of $V$
	Using the *resolution of the identity formula*, i.e. $v=\sum_{i=1}^{n}\langle v,b_{i} \rangle b_{i}$
	for $v\in V$, show that the matrix elements of a linear operator $A:V\to V$ with respect to the basis $b$ are given by $A_{ij}=\langle A(b_{j}),b_{i} \rangle$

Chapter 6 Questions
3. Consider the complex vector spaces $\mathbb{C}^{2}$ and $\mathbb{C}^{3}$ with their canonical bases, and let $S\in L(\mathbb{C}^{3},\mathbb{C}^{2})$ be the linear map defined by $S(v)=Av, \forall v\in \mathbb{C}^{3}$ where $A$ is the matrix $A=M(S)=\begin{pmatrix}i & 1& 1 \\2i & -1 & -1\end{pmatrix}$. Find a basis for $\text{null}(S)$
## Week 10
> Readings: Section 3F from [[MAT246 Lin Alg Done Right Textbook.pdf]]
> Exercises from [[MAT246 Lin Alg Done Right Textbook.pdf]]
> 	Section 3F starting on p.115 (11 Questions)
> 		#1, 3, 5, 8, 9, 11, 12, 13, 16, 25, 32
> [[MAT246 Week 10 Answers.pdf]]

Notation Notes:
	$p_{m}$ is the set of polynomials

Questions 
1. Explain why each linear functional is surjective or is the zero map
	**Solution**
	- Show that if a functional is not a zero map, than the element not mapped to zero $v^{0}\in V$ can be used to obtain any other value $y$
	- For any $y$, $f(v)=f(\frac{y}{f(v_{0})}v_{0})=\frac{y}{f(v_{0})}f(v_{0})=y$ 
	- This works because linear functionals are *linear*
3. Suppose $V$ is finite-dimensional and $v\in V$ with $v\neq 0$ Prove that there exists $\varphi\in V'$ such that $\varphi(v)=1$
	**Solution**
	- ChatGPT solution is to create a $\varphi$ which satisfies this relationship
	- Alternatively, construct a basis using $v$, the [[Dual Basis]] created for $V'$ will include a $\varphi\in V'$ such that $\varphi(v)=1$
5. Suppose $T\in L(V,W)$ and $w_{1},...,w_{m}$ is a basis of range $T$. Hence for each $v\in V$ there exist unique numbers $\varphi_{1}(v),...,\varphi_{m}(v)$ such that 
$$Tv=\varphi_{1}(v)w_{1}+...+\varphi_{m}(v)w_{m}$$
	thus defining functions $\varphi_{1},...,\varphi_{m}$ from $V$ to $F$. Show that each of the functions $\varphi_{1},...,\varphi_{m}$ is a linear functional on $V$
	**Solution**
	- We already know $\varphi: V\rightarrow F$
	- Need to show that $\varphi_{1},\dots,\varphi_{m}$ are [[Linear Transformation|Linear]] functions
	- Is true because of linearity of $T$

8. Suppose $v_{1},...,v_{n}$ is a basis of $V$ and $\varphi_{1},...,\varphi_{n}$ is the dual basis of $V'$. Define $\Gamma:V\rightarrow F^{n}$ and $\Delta:F^{n}\rightarrow V$ by
$$\Gamma(v)=(\varphi_{1}(v),...,\varphi_{n}(v))$$
	And
$$\Delta(a_{1},...,a_{n})=a_{1}v_{1}+...+a_{n}v_{n}$$
	Explain why $\Gamma$ and $\Delta$ are inverses of each other
	**Solution**
	- Want to prove that $\Gamma(\Delta(a_{1},...,a_{n}))=a_{1}v_{1}+\dots+a_{n}v_{n}$ and $\Delta(\Gamma(v))=v$

9. Suppose $m$ is a positive integer. Show that the dual basis of the basis $1,x,...,x^{m}$ of $p_{m}(\mathbb{R})$ is $\varphi_{0},\varphi_{1},...,\varphi_{m}$, where
$$\varphi_{k}(p)=\frac{p^{(k)}(0)}{k!}$$
	Here $p^{k}$ denotes the $k^{th}$ derivative of $p$, with the understanding that the $0^{th}$ derivative of $p$ is $p$
	**Solution**
	- Show that dual basis criteria is fulfilled, namely that $\varphi_{k}(p)=1$ if $p=x^{k}$ and $\varphi_{k}(p)=0$ otherwise

11. Suppose $v_{1},...,v_{n}$ is a basis of $V$ and $\varphi_{1},...,\varphi_{n}$ is the corresponding dual basis of $V'$. Suppose $\psi\in V'$. Prove that
$$\psi=\psi(v_{1})\varphi_{1}+...+\psi(v_{n})\varphi_{n}$$
	**Solution**
	- Use the fact that $\varphi_{1},...,\varphi_{n}$ is a base for $\psi$, where $\psi(v)=(c_{1}\varphi_{1}+\dots+c_{n}\varphi_{n})(v)$ 

12. Suppose $S,T\in L(V,W)$
- Prove that $(S+T)'=S'+T'$
- Prove that $(\lambda T)'=\lambda T'$ for all $\lambda\in F$
	This exercise asks you to verify $(a)$ and $(b)$ in 3.120
	**Solution**
	- Use definition of [[Dual Map]], where for $\varphi\in W'$ $S'=\varphi(S(v))$ 
	- These are true because of linearity of $\varphi \in W'$

13. Show that the dual map of the identity operator on $V$ is the identity operator on $V'$
	**Solution**
	- Use definition of the dual map of a function $Id_{V}\in L(V,V)$
	- for $\varphi\in V'$, $(Id'_{V}\varphi)(v)=\varphi(Id_{V}(v))=\varphi(v)$

16. Suppose $W$ is finite-dimensional and $T\in L(V,W)$. Prove that $T'=0\iff T=0$ 
	**Solution**
	- Use definition of $T'$. For $\varphi\in W'$, $(T'\varphi)(v)=\varphi(Tv)=0$

25. Suppose $V$ is finite-dimensional and $\varphi_{1},...,\varphi_{m}\in V'$. Define a linear map $\Gamma:V\rightarrow F^{m}$ by $\Gamma(v)=\varphi_{1}(v),...,\varphi_{m}(v)$  
	- Prove that $\varphi_{1},...,\varphi_{m}$ spans $V'$ if and only if $\Gamma$ is injective
	- Prove that $\varphi_{1},...,\varphi_{m}$ is linearly independent if and only if $\Gamma$ is surjective
	**Solution** 
	1. Prove Injective
		- If $\varphi_{1},\dots , \varphi_{m}$ span $V'$, then if $\Gamma(v)=0$, then all $\varphi_{1}(v)=\dots = \varphi_{m}(v)=0$, but since $\varphi_{1},\dots , \varphi_{m}$ span $V'$, this is only possible if $v=0$, so kernel of $\Gamma(v)$ is 0 
		- If $\Gamma$ is injective, but $\varphi_{1},\dots , \varphi_{m}$ does not span $V'$, then there exists a $\varphi$ in [[Dual Basis]] of $V$ which is not represented, and for some $v$, $\varphi_{1}(v)=\dots = \varphi_{m}(v)=0$, thus $\Gamma$ cannot be injective
	2. Prove Surjective
		- If $\varphi_{1},...,\varphi_{m}$ is linearly independent, then the rank of $\Gamma$ is $m$, and $\Gamma$ is surjective
		- If $\Gamma$ is surjective, then for all $v\in V$, there exists some $c_{1},\dots ,c_{m}$ where $v=c_{1}\varphi_{1}(v)+\dots+c_{m}\varphi_{m}(v)$. If $\varphi_{1},...,\varphi_{m}$ are linearly dependent, then that implies there is some $v\neq 0$ where $v=c_{1}\varphi_{1}(v)+\dots+c_{m}\varphi_{m}(v)=0$, which is a contradiction and $\varphi_{1},...,\varphi_{m}$ must be linearly independent

32. The *double dual space of $V$*, denoted by $V''$ is defined to be the dual space of $V'$, in other words, $V''=(V')'$. $\Lambda:V\rightarrow V''$ by
$$(\Lambda v)(\varphi)=\varphi(v)$$
	For each $v\in V$ and each $\varphi\in V'$
	- Show that $\Lambda$ is a linear map from $V$ to $V''$
	- Show that if $T\in L(V)$, then $T''\circ\Lambda=\Lambda\circ T$, where $T''=(T')'$
	- Show that if $V$ is finite-dimensional, then $\Lambda$ is an isomorphism from $V$ onto $V''$
		Suppose $V$ is finite-dimensional. Then $V$ and $V'$ are isomorphic. but finding an isomorphism from $V$ onto $V'$ generally requires choosing a basis of $V$. But the isomorphism $\Lambda$ from $V$ onto $V''$ does not require a choice of basis and thus is considered more *natural*
	**Solution:**
## Week 11
> Readings: Section 3E and 9D from [[MAT246 Lin Alg Done Right Textbook.pdf]]
> Exercises from [[MAT246 Lin Alg Done Right Textbook.pdf]]
> 	Section 3E starting on p.103
> 		#1, 5
> 	Section 9D starting on p.380
> 		#1, 3, 5, 9, 10, 12, 13

Questions
3E
1. Suppose $T$ is a function of $V$ to $W$. The *graph* of $T$ is the subset of $V\times W$ defined by 
$$\text{graph of $T$}=\{(v,Tv)\in V\times W:v\in V\}$$
	Prove that $T$ is a linear map if and only if the graph of $T$ is a subspace of $V\times W$
		*Formally, a function $T$ from $V$ to $W$ is a subset $T$ of $V\times W$ such that for each $V\in V$, there exists exactly one element $(v,w)\in T$. In other words, formally a function is what is called above its graph. We do not usually think of functions in this formal manner. However, if we do become formal, then this exercise could be rephrased as follows: Prove that a function $T$ from $V$ to $W$ is a linear map if and only if $T$ is a subspace of $V\times W$*
**Solution**
- $T$ is a linear map if for all $a\in \mathbb{R} v_{1}, v_{2}\in V$, $aT(v_{1}+v_{2})=T(av_{1})+T(av_{2})$ 
- If the graph of $T$ is not a subspace of $V\times W$, then there exists some $v_{1},v_{2}\in V$ and $k\in \mathbb{R}$ where
	- $(v_{1},Tv_{1})+(v_{2},Tv_{2})\notin \text{graph of T}$   
		- Since $v_{1}+v_{2}\in V$ then the issue must be that
		- There is no $v\in V$ where  $Tv = Tv_{1}+Tv_{2}$. thus $Tv_{1}+Tv_{2}\neq T(v_{1}+v_{2})$ because there exists
	- Or $k(v_{1}, Tv_{1})\neq \text{graph of T}$

5. For $m$ a positive integer, define $V^{m}$ by $V^{m}=V\times ...\times V$ ($m$ times). Prove that $V^{m}$ and $L(F^{m},(V))$ are isomorphic vector spaces
	**Solution**
	- Consider the map $\varphi: V^{m}\rightarrow L(F^{m},V)$, where for $v=(v_{1},...,v_{m})\in V^{m}$ and $f=(f_{1},\dots,f_{m})\in F^{m}$, is defined as $\varphi(v)(f) = \sum\limits_{i=1}^{m}f_{i}v_{i}$
		- Show that $\varphi$ is a bijection
		- Verify Injectivity by showing only element in Kernel 
		- For any $T\in L(F^{m}, V)$, define $(v_{1},\dots, v_{m})\in V^{m}$ by $v_{i}=T(e_{i})$ where $e_{i}$ is the $i$-th standard basis vector for $F^{m}$
			- Thus for any $T$ there is a $v$ where $\varphi(v)=T$, thus it is a surjective

9D
1. Suppose $v\in V$ and $w\in W$. Prove that $v\otimes w=0$ if and only if $v=0$ or $w=0$
	**Solution**
	- Assume by contradiction that $v\neq 0$, $w\neq 0$, then there must be $\varphi\in V',\psi \in W'$ where $\varphi(v)\neq 0,\psi(w)\neq 0$
	- Thus there must be $(v\otimes w)(\varphi,\psi)=\varphi(v)\psi(w)\neq 0$, this contradicts assumption
	- For other direction is obvious

3. Suppose that $v_{1},...,v_{m}$ is a linearly independent list in $V$. Suppose also that $w_{1},...,w_{m}$ is a list in $W$ such that 
$$v_{1}\otimes w_{1}+\dots+v_{m}\otimes w_{m}=0$$
	Prove that $w_{1}=\dots=w_{m}=0$
	**Solution**
	- Since $v_{1},...,v_{m}$ is linearly then for every $i=1,\dots,m$ there exists $\varphi_{i}\in V'$ where $\varphi_{i}(v_{j})=\begin{cases}1, \ \text{ if } i=j \\ 0, \ \text{ if } i\neq j\end{cases}$ 
	- Pick $\varphi_{i}$ where $\varphi_{i}(v_{i})=1$, then $0=(v_{1}\otimes w_{1}+\dots+v_{m}\otimes w_{m})(\varphi_{i},\psi)=\sum\limits_{j=1}^{m}\varphi_{i}(v_{j})\psi(w_{j}) =\psi(w_{i})=0\implies w_{i}=0$  

5. Suppose $m$ and $n$ are positive integers. For $v\in \mathbb{F}^{m}$ and $w\in \mathbb{F}^{n}$. Identity $v\otimes w$ with an $m$-by-$n$ matrix as in Example 9.76. With that identification. show that the set
$$\{v\otimes w:v\in \mathbb{F}^{m} \text{ and } w\in \mathbb{F}^{n}\}$$
	is the set of $m$-by-$n$ matrices (with entries in $\mathbb{F}$) that has rank at most one.
	**Solution**
	- Define $v=(v_{1},v_{2},\dots, v_{m})$, $w=(w_{1},w_{2},\dots,w_{n})$ and a matrix $A=(w_{jk})_{j=1,\dots,m; k=1,\dots n}$
	- Define every column $A_{k}=w_{k}\begin{bmatrix} v_{1} \\ \vdots \\ v_{m}\end{bmatrix}$ 
	- Thus, each column is a scalar multiple of $v$, and so there is only one linearly independent column in $A$, so $A$ has rank 1
	- For any $A$, take $v$ as the column vector corresponding to the first column of $A$, and take $w_{n}$ as the coefficient of the $n$th column in relation to the first column of $V$

9. Suppose $S\in L(V)$ and $T\in L(W)$. Prove that there exists a unique operator on $V\otimes W$ that takes $v\otimes w$ to $Sv\otimes Tw$ for all $v\in V$ and $w\in W$
	-  In an abuse of notation, the operator on $V\otimes W$ given by this exercise is often called $S\otimes T$
	**Solution**
	- Consider the operator $\Gamma: V\times W\rightarrow V\otimes W$ where $(v,w)\rightarrow (Sv\otimes Tw)$
	- Because $S$ and $T$ are linear, and bilinearity of $\otimes$, $(v,w)\rightarrow (Sv\otimes Tw)$ is bilinear
	- By universal property of tensor products, there exists $\hat \Gamma(v\otimes w)=\Gamma(v,w)$

10. Suppose $S\in L(V)$ and $T\in L(W)$. Prove that $S\otimes T$ is an invertible operator on $V\otimes W$ if and only if both $S$ and $T$ are invertible operators. Also, prove that if both $S$ and $T$ are invertible operators, then $(S\otimes T)^{-1}=S^{-1}\otimes T^{-1}$. where we are using the notation from the comment after Exercise 9
	**Solution**
	- Prove $S\otimes T$ is invertible only if both $S$ and $T$ are invertible
		- Assume $S\otimes T$ is invertible, assume contradiction that either $S$ or $T$ are not invertible, then there exists $v$ or $w$ where $(S\otimes T)(v\otimes w)=(Sv\otimes Tw)=0$
		- Then $0\neq v\otimes w$, but $v\otimes w\in ker(S\otimes T)$, so contradiction that $S\otimes T$ is invertible
		- Thus $S\otimes T$ is invertible if and only if $S$ and $T$ are invertible
	- Prove if both $S$ and $T$ are invertible, $(S\otimes T)^{-1}=S^{-1}\otimes T^{-1}$
		- Consider $A:V\times W\rightarrow V\otimes W$ where $(v,w)\rightarrow (S^{-1}v\otimes T^{-1}w)$ show this map is bilinear, and by universal property, there exists $\hat A:V\otimes W\rightarrow V\otimes W$ where
		- Similarly get $\hat \Gamma: V\otimes W\rightarrow V\otimes W$ where $(v\otimes w)\rightarrow (Sv\otimes Tw)$
		- Show $\hat A(\hat\Gamma)(v\otimes w)=v\otimes w$ and $\hat \Gamma(\hat A)(v\otimes w)=v\otimes w$ and that $\hat  A$ and $\hat \Gamma$ are inverses, thus $(S\otimes T)^{-1}=S^{-1}\otimes T^{-1}$

12. Suppose that $V_{1},...,V_{m}$ are finite-dimensional inner product spaces. Prove that there is a unique inner product on $V_{1}\otimes \dots \otimes V_{m}$ such that
$$\langle v_{1}\otimes\dots\otimes v_{m}, u_{1}\otimes\dots\otimes u_{m}\rangle=\langle v_{1},u_{1}\rangle \dots \langle v_{m},u_{m}\rangle$$
	for all $(v_{1},...,v_{m})$ and $(u_{1},...,u_{m})$ in $V_{1}\times \dots \times V_{m}$
		Note that the equation above implies that $||v_{1}\otimes \dots\otimes v_{m}||=||v_{1}||\times \dots\times ||v_{m}||$
		for all $(v_{1},...,v_{m})\in V_{1}\times \dots\times V_{m}$ 
	**Solution**
	- Define an inner product on $V_{1}\otimes \dots \otimes V_{m}$
	- Uniqueness, there is only one inner product on $V_{1}\otimes \dots \otimes V_{m}$ such that $\langle v_{1}\otimes\dots\otimes v_{m}, u_{1}\otimes\dots\otimes u_{m}\rangle=\langle v_{1},u_{1}\rangle \dots \langle v_{m},u_{m}\rangle$ because  every element of $V_{1}\otimes \dots \otimes V_{m}$ can be written as a linear combination of elements of the form $v_{1}\otimes \dots \otimes v_{m}$

13. Suppose that $V_{1},\dots,V_{m}$ are finite-dimensional inner product spaces, and $V_{1}\otimes\dots\otimes V_{m}$ is made into an inner product space using the inner product from Exercise 12. Suppose $e_{1}^{k},\dots,e_{n}^{k}$ is an orthonormal basis of $V_{k}$ for each $k=1,\dots,m$. Show that the list 
$$\{e_{j_{1}}^{1}\otimes\dots\otimes e_{j_{m}}^{m}\}_{j_{1}=1,\dots,n_{1};,\dots;j_{m}=1,\dots,n_{m}}$$
	Is an orthonormal basis of $V_{1}\otimes\dots\otimes V_{m}$
	**Solution**
	- We know that if $dim V_{k}=n_{k}$ $e^{k}_{1},\dots,e^{k}_{n_{k}}$ is a basis of $V_{k}$ for $k=1,\dots,m$, then $\{e^{1}_{j_{1}}\otimes \dots\otimes  e^{m}_{j_{m}}\}_{j_{1}=1,\dots,n_{1};\dots;j_{m}=1,\dots,n_{m}}$ is a basis of $V_{1}\otimes \dots \otimes V_{m}$ 
	- $\langle e^{1}_{1}\otimes e^{2}_{1},\dots, e^{1}_{n_{k}}\otimes e^{2-1}_{n_{k-1}}\rangle=\langle e^{j}_{1}=$
	- Thus it is an orthonormal basis

## Final Exam Practice Problems

More Exercises
1. Write the axioms for an inner product on $V:\langle  \ , \rangle: V\times V\to C$
	**Solution:**
		Linearity in first slot $\langle cx+y,z \rangle = c\langle x,z \rangle+ \langle y,z \rangle$
		Conjugate Symmetry $\langle x,y \rangle = \overline{\langle y,x \rangle}$
		Positivity: $\langle x,x  \rangle\geq 0$
		Positive Definiteness: $\langle x,x \rangle=0$ only if $x=0$
		

2. Prove that $\forall \alpha, \beta\in \mathbb{C}$ and $\forall v,w_{1},w_{2}\in V$: $\langle v,\alpha w_{1}+\beta w_{2} \rangle=\overline a \langle v,w_{1} \rangle+\overline \beta \langle v,w_{2} \rangle$

3. Prove that $\forall v\in V, \langle v,v \rangle\in \mathbb{R}$

4. Define the map $|| \ . ||: V\to \mathbb{R}$ as $||v||=\sqrt{ \langle v,v \rangle }$. Prove that this map is a norm
	**Solution:**
		Prove the map satisfies 
			$||x+y|| \leq ||x||+||y||$
			$||x||=0$ if and only if $x=0$
			$||av||=|a| \ ||v||$

5. Write the definition of a basis of $V$ and of orthonormal basis of $V$
	**Solution:**
		Basis is a linearly independent list which spans $V$
		Orthonormal is basis, where all vectors are orthogonal to one each other, and norm is 1

6. Let $v_{1},\dots,v_{n}$ be an orthonormal basis for $V$. Then for all $v\in V$, prove that $v=\sum_{i=1}^{n}\langle v,v_{i} \rangle v_{i}$, and $||v||^{2}=\sum_{i=1}^{n}|\langle v,v_{i} \rangle |^{2}$
	**Solution:** 
		Use the fact that $v= \sum_{i=1}^{n}c_{i}v_{i}$, and show that $c_{i}= \langle v ,v_{i}\rangle$

7. Let $b=(v_{1},\dots,v_{n})$ be an orthonormal basis for $V$. Let $T\in L(V,V)$. Let $M_{b}(T)$ be the matrix associated to $T$, when the basis $b$ is used for domain and codomain of $T$. Prove that for every $i,j=1,\dots,n$: $M_{b}(T)_{i,j}=\langle Tv_{j}, v_{i} \rangle$
	**Solution:**
		Use $Tv_{j} = \sum_{k=1}^{n}M_{b}(T)_{k,j}$

8. Let $b=(v_{1},\dots,v_{n})$ be an orthonormal basis for $V$. Define the trace operator $Tr:V\to F$ as follows: $Tr(T)=\sum_{i=1}^{n}\langle Tv_{i} ,v_{i}\rangle$
	- Prove that $Tr$ is linear
	- Let $M_{b}(T)$ be the matrix associated to $T$, when the basis $b$ is used for domain and codomain of $T$. Prove that $Tr(T)$ is equal to the trace of the matrix $M_{b}(T)$, i.e. $\sum_{i=1}^{n}M_{b}(T)_{i,i}$
	- Let $c=(w_{1},\dots,w_{n})$ be another orthonormal basis for $V$. Prove that $\sum_{i=1}^{n}\langle Tv_{i},v_{i} \rangle=\sum_{i=1}^{n} \langle Tw_{i},w_{i} \rangle$. Conclude that the definition of $Tr$ does not depend on the choice of the basis $b$
	**Solution:**
		1. easy
		2. 