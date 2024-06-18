#uoft/mat224  
#notes 

One stop shop for everything MAT224

---
# Definitions
A [Vector Space](Vector%20Space.md) is a [Set](../MAT223%20Notes/Set.md), whose elements are called  [Vectors]([Vector), with the operations of vector addition and multiplication, following the axioms:
- For all vectors $x,y$ and $z\in \mathbb{V}, (x,y)+z=x+(y+z)$
- For all vectors $x$ and $y\in \mathbb{V}, x+y=y+x$
- There exists a vector $0\in \mathbb{V}$ with the property that $x+0=x$ for all vectors $x\in \mathbb{V}$
- For each vector $x\in \mathbb{V}$, there exists a vector denoted $-x$ with the property that $x+-x=0$
- For all vectors $x$ and $y\in \mathbb{V}$, and all $c\in \mathbb{R}, c(x+y)=cx+cy$
- For all vectors $x\in \mathbb{V}$, and $c,d\in \mathbb{R}, (c+d)x=cx+dx$
- For all vectors $x\in \mathbb{V}$ and all $c,d\in \mathbb{R}, (cd)x=c(dx)$
- For all vectors $x\in \mathbb{V},1x=x$

A [Subspace](../MAT223%20Notes/Subspace.md) is a subset of a [Vector Space](Vector%20Space.md), that is also a vector space  
If the following properties hold, then a subspace is also a vector space
- $\vec{u}+\vec{v}\in V$(also called being *closed with respect to vector addition*, and
- $k\vec{u}\in V$(also called being *closed with respect to scalar multiplication*)
- $\vec 0 \in V$ 

A [Span](../MAT223%20Notes/Span.md) of a set of [Vectors](../MAT223%20Notes/Vector.md) is the set of all possible [Linear Combinations](../MAT223%20Notes/Linear%20Combination.md) of those vectors
- $W_{1}+W_{2}=\{x\in V \  | \ x = x_{1}, \text{ for some }x_{1}\in W_{2} \}$ 
- If $W_{1}=Span(S_{1})$, and $W_{2}=Span(S_{2})$, $W_{1}+W_{2}=Span(S_{1}\cup S_{2})$
- Let $W \supseteq W_{1}\cup W_{2}$ , then $W\supseteq W_{1}+W_{2}$

The [Dimension](../MAT223%20Notes/Dimension.md) of a [Vector Space](Vector%20Space.md) is the number of vectors in any [Base](../MAT223%20Notes/Base.md)

A [Linear Transformation](../MAT223%20Notes/Linear%20Transformation.md) is one where:
-  $T(u+v)=T(u)+T(v), \forall u,v \in V$, and
-  $T(av)=aT(v), \forall a\in \mathbb{R}, v\in V$  
	$T(au+bv)=aT(u)+bT(v)$

The [Dot Product](../MAT223%20Notes/Dot%20Product.md), or **Inner Product** has two definitions, both of which are equivalent:  
Geometric Definition  
	$\vec{v}\cdot \vec{w} = || \vec{v}|| \ ||\vec{w}||cos\theta$  
Algebraic Definition  
	$\vec{v}\cdot \vec{w}=v_{1}w_{1}+v_{2}w_{2}+v_{3}w_{3}$ 

The **Projection** can be calculated by: $P_{w}(v)=\frac{\langle w,b\rangle}{\langle w,w \rangle}w=\frac{w_{1}v_{1}+w_{2}v_{2}}{w^{2}_{1}+w_{2}^{2}}(w_{1},w_{2})=\frac{1}{w_{1}^{2}+w_{2}^{2}}(w_{1}^{2}v_{1}+w_{1}w_{2}v_{2},w_{1}w_{2}v_{1}+w^{2}_{2}v_{2})$ 

Transformation as Matrices
- A **Rotation** of the angle $\theta$ for an arbitrary vector $v=(v_{1},v_{2})$can be defined by the equation:  
	And $[R_{a}]_\alpha^{\alpha}= \begin{bmatrix} cos(\theta) & -sin(\theta) \\ sin(\theta)  & cos(\theta)\end{bmatrix}$  
	Where $\alpha$ is the standard basis in $\mathbb{R}^{2}$
- A **Projection** on a vector $a$ in $\mathbb{R^{2}}$ can be defined by $[P_{a}]_{\alpha}^{\alpha}= \frac{1}{a_{1}^{2}+a_{2}^{2}}\begin{bmatrix} a^{2}_{1} & a_{1}a_{2} \\ a_{1}a_{2} & a^{2}_{2}\end{bmatrix}$  
	Try to solve for this using the equation for [Projection](../MAT235%20Notes/Projection.md), look back at 2.1


The [Transpose](Transpose.md) of a [Matrix](Matrix.md) is the matrix with its rows and columns swapped  
	If $A$ is the $m\times n$ matrix with entries $a_{ij}$, then $B=T(A)$ is the $n\times n$ matrix with entries $b_{ji}=a_{ij}$ The rows of $A$ are the columns of $B$, and vice versa

The [Image](../MAT223%20Notes/Image.md) is the result of the linear transformation of $W$
- The dimension of $Im(T)$ is:
	- The [Rank](../MAT223%20Notes/Rank.md) of $A$ (Number of linearly independent columns)
	-  $dim(Im(T))\leq dim(V)$ 

The [Kernel](Kernel.md) is the space of all vectors, where $T(x)=0$
- The dimension of $Ker(T)$ is the number of basic variables

if $V$ is a finite-dimensional vector space and $T:V\rightarrow W$ is a linear transformation, then:  
	$dim(Ker(T))+dim(Im(T))=dim(V)$

---
# How To's (Condensed)
### Check if a Set is a Vector Space/Subspace
For a [Vector Space](Vector%20Space.md), verifies that the set follows the [](../MAT223%20Notes/Vector.md#^a7e263|axioms)  
For a [Subspace](../MAT223%20Notes/Subspace.md) $V$ of a Vector Space  
Verify that the following are true, or check that $V$ follows all axioms too  
	$\vec{u}+\vec{v}\in V$(also called being *closed with respect to vector addition*, and  
	$k\vec{u}\in V$(also called being *closed with respect to scalar multiplication*)  
	$\vec 0 \in V$  
Or use this to check both at once  
	Let $V$ be a vector space, $W$ be nonempty subset of $V$  
	$W$ is a [Subspace](../MAT223%20Notes/Subspace.md) of $V$ if and only if:  
		$\forall x,y \in W, \forall c \in \mathbb{R}, cx+y \in W$ 

### Check if a Set is Linearly Independent
Given a set of vectors $S=\{x,y,z\}$, we want to see if there are any scalars such that  
$a_{1}(x)+a_{2}(y)+a_{3}(z)=0$  
This would give us a system of linear equations such as  
$$ \begin{aligned} a_{1}x_{1}+a_{2}y_{1}+a_{3}z_{1}&=0\\ a_{1}x_{2}+a_{2}y_{2}+a_{3}z_{2}&=0\\a_{1}x_{3}+a_{2}y_{3}+a_{3}z_{3}&=0\end{aligned}$$  
Solve this system of linear equations, if there is a solution, then the vectors are linearly dependent

We want to check if $\{a_{1},...,a_{n}\}$ such that $a_{1}x_{1}+...a_{n}x_{n}=0$  
Rewrite vectors as a matrix, with columns$[x_{1},...,x_{n}]$  
And solve for the vector $a=\begin{bmatrix} a_{1} \\ \vdots \\ a_{n}\end{bmatrix}$ where $[x_{1},...,x_{n}]a=0$  
You can use the "How to Solve Matrix Equations" below

### How to Solve Matrix Equations
When we solve matrix equations, basically just imagine them as a set of linear equations  
Just try to solve them, if you can't find one single answer, try parametrizing it, so that the answer is the outcome of a variable. Then turn variable into vector

> Terrible explanation but I don't feel like fully explaining this, good luck if you don't know or forgot!

If you do know how to solve matrix equations, to do them easier;
- Simplify matrix into echelon form.
- Set basic variables to parameters, and for all rows with free variables, express those free variables in terms of the parameters. 
- Turn those parameters into vectors and there's your answer

### How to Parameterize a System (Convert to Vector Form)
Put into echelon form  
rearrange each equation to solve for the free variables  
rewrite as vector with free variables  
bam parameterization

### Find Dimension 
Check number of vectors in base  
Simplify a transformation matrix to Echelon Form, number of free variables is the dimension  
Dimension of two subspace added together $dim(W_{1}+W_{2})=dim(W_{1})+dim(W_{2})-dim(W_{1}\subset W_{2})$ 

### Check that a transformation is Linear
Check
-  $T(u+v)=T(u)+T(v), \forall u,v \in V$, and
-  $T(av)=aT(v), \forall a\in \mathbb{R}, v\in V$  
Or
- A function $T:V\rightarrow W$ is a linear transformation if $\forall a,b\in \mathbb{R}, \forall u,v \in V$:  
	$T(au+bv)=aT(u)+bT(v)$
- A function $T:V\rightarrow W$ is a linear transformation if $\forall a_{1},...,a_{k}\in \mathbb{R}, \forall v_{1},...v_{k} \in V$:  
	$T(\sum\limits_{i=1}^{k}a_{i}v_{i})=\sum\limits_{i=1}^{k}a_{i}T(v_{i})$

### Interpretations of Matrix of Transformation
Each **Column** can be seen as the result of the corresponding basis vector being inputted into the transformation  
Each **Row** can be seen as the result for one of the variables of the output vector, for a vector being inputted

The amount of columns of a matrix transformation, is like the size of the input dimension  
The amount of rows of a matrix transformation, is the size of its output
### Do Matrix Vector Multiplication 
A matrix must have the same amount of columns, as a vectors rows, to be multipliable  
Given a matrix $\begin{bmatrix} a_{11} & ... & a_{1n} \\  & \vdots\\ a_{m1} & ... & a_{mn} \\ \end{bmatrix}$ and a vector $\begin{bmatrix} x_{1} \\ \vdots   \\ x_{n}\end{bmatrix}$  
The product of the vector $x$ by the matrix $A$ is the column vector with entries  
	$\begin{bmatrix} a_{11}x_{1}+...+a_{1n}x_{n} \\ \vdots \\ a_{m1}x_{1}+...+a_{mn}x_{n}\end{bmatrix}$ 

$A(au+bv)=aAu+bAv$ 

### Transformations as Matrices
- A **Rotation** of the angle $\theta$ for an arbitrary vector $v=(v_{1},v_{2})$can be defined by the equation:  
	$R_\theta(v)=(v_{1}\cos(\theta-v_{2})\sin(\theta),v_{2}\sin(\theta)+v_{2}\cos(\theta))$  
	Thus, $R_\theta(e_{1})=(\cos(\theta),sin(\theta))$ and $R_\theta(e_{2})=(-\sin(\theta),\cos(\theta))$  
	And $[R_{a}]_\alpha^{\alpha}= \begin{bmatrix} cos(\theta) & -sin(\theta) \\ sin(\theta)  & cos(\theta)\end{bmatrix}$  
	Where $\alpha$ is the standard basis in $\mathbb{R}^{2}$
- A **Projection** on a vector $a$ in $\mathbb{R^{2}}$ can be defined by $[P_{a}]_{\alpha}^{\alpha}= \frac{1}{a_{1}^{2}+a_{2}^{2}}\begin{bmatrix} a^{2}_{1} & a_{1}a_{2} \\ a_{1}a_{2} & a^{2}_{2}\end{bmatrix}$ 

### Transpose
The [Transpose](Transpose.md) of a [Matrix](Matrix.md) is the matrix with its rows and columns swapped  
	If $A$ is the $m\times n$ matrix with entries $a_{ij}$, then $B=T(A)$ is the $n\times n$ matrix with entries $b_{ji}=a_{ij}$ The rows of $A$ are the columns of $B$, and vice versa

### Find Kernel
Just solve matrix equation where $Ax=0$. Find parameterization, that's kernel space

Number of free variables in homogenous system $Ax=0$ is $dim(Ker(T))$

### Find Image
Solve matrix to row-reduced echelon form  
Find the columns in the original matrix, where the row-reduced form has leading 1's  
Those columns are the basis for the image of $A$

The dimension of the image is also equal to the number of linearly independent columns, or the [Rank](../MAT223%20Notes/Rank.md) of $A$

Number of basic variables in homogenous system $Ax=0$ is $dim(Im(T))$

For finding dimension of image or kernel,  
if $V$ is a finite-dimensional vector space and $T:V\rightarrow W$ is a linear transformation, then:  
	$dim(Ker(T))+dim(Im(T))=dim(V)$

### Check if Linear Transformation is Injective/Surjective

A linear transformation is injective if:
- $dim(Ker(T))=0$
- $dim(Im(T))=dim(V)$
- $dim(W)\geq dim(V)$ 

If a linear transformation is injective, it is surjective, if its not injective, its not surjective

### Compute Matrix Multiplication, Composition
Multiply matrices together to get composition of transformations

### Properties of Composition
-  $Ker(S) \subset Ker(TS)$
-  $Im(TS) \subset Im(T)$
- $dim(Ker(S))\leq dim(Ker(TS))$
- $dim(Im(TS)) \leq dim(Im(T))$

### Matrix Multiplication Properties
- $(AB)C=A(BC)$
- $A(B+C)=AB+AC$
- $(A+B)C=AC+BC$

### Find Inverse 
To check if transformation has transformation, check that it is injective and surjective  
To check matrix has  
For a $2\times 2$ Matrix $\begin{bmatrix} a & b \\ c & d\end{bmatrix}$, the inverse is $\frac{1}{ad-cd}\begin{bmatrix} d & -b \\ -c & a\end{bmatrix}$

A $2\times 2$ matrix $A$ is [Invertible](Invertible.md) if and only if $det(A)\neq 0$  
Then,  
If $T:V\rightarrow V$ is a linear transformation of a two-dimensional [Vector Space](Vector%20Space.md) $V$, $T$ is an [Isomorphism](Isomorphism.md) if and only if $det([T]_{a}^{a})\neq 0$

If $A$ is an invertible $n\times n$ matrix, then $A^{-1}$ is the matrix whose $ij$th entry is $(-1)^{i+j}\frac{det(A_{ji})}{det(A)}$ **(3.3.2,154)**  
	$A^{-1}A=I$  
And $A^{-1}=\frac{1}{det(A)}A'$
#### Gauss Jordan
[Gauss-Jordan Method](Gauss-Jordan%20Method.md)  
	To do the **Gauss-Jordan Method**, start with the augmented matrix  
	$[T|I]=\begin{bmatrix} t_{11} & \dots & t_{1n} & | & 1 \\ \vdots &   & \vdots  & | &   & \ddots\\ a_{n1} & \dots & a_{nn}  &  | &   &   & 1\end{bmatrix}$, Where the left matrix is the matrix representation of $T$, and the right matrix is the Identity Matrix  
	Then, perform row operations until the left side is the identity matrix.  
	The resulting matrix on the right will be $[T^{-1}]_{\beta}^{\alpha}$
#### Determinant Method
$2\times 2$ Matrix  
	$A^{-1}=\frac{1}{det(A)}\begin{bmatrix} a_{22} & -a_{12} \\ -a_{21} & a_{11}\end{bmatrix}$

### Convert Bases

To convert a base from $\beta=\{x_{1},x_{2}\}$ to $\alpha=\{y_{1},y_{2}\}$, express the two basis in terms of each other  
A vector in $\beta$ would be $v=x_{1}u_{1}+x_{2}u_{2}$, and a vector in $\alpha$ would be  $v=y_{1}u'_{1}+y_{2}u'_{2}$  
	Construct a system of equations, and solve for how $x_{1},x_{2}$ can be expressed in just $y_{1},y_{2}$

If a base is given in terms of $\beta=\{\begin{bmatrix} 1 \\ 1\end{bmatrix}\begin{bmatrix} 0 \\ -1\end{bmatrix}\}$   the change of base matrix from the standard base to $\beta$ is simply $\begin{bmatrix} 1 & 0 \\ 1 & -1\end{bmatrix}$, calculate the reverse change of base matrix by calculating inverse

The Transformation $[I]_{\beta}^{\beta'}$ takes a vector from the base $\beta$ to $\beta'$  
To convert a transformation $[T]_{\beta}^{\beta}$ to $\beta'$, use $[T]_{\beta'}^{\beta'}=([I]_{\beta}^{\beta'})^{-1}[T]_{\beta}^{\beta}[I]_{\beta}^{\beta'}$  
	So, get conversion matrix for one, calculate inverse, and apply them to transformation

### Calculate Determinant
Determinant of $2\times 2$ Matrix $=a_{11}a_{22}-a_{12}a_{21}$

**Properties of the Determinant**  
For any bases $\alpha$ and $\beta$:  
	$det([T]_{\alpha}^{\alpha})=det([T]_{\beta}^{\beta})$  
If $A$ and $B$ are $n\times n$ matrices, then
- $det(AB)=det(A)det(B)$
- If $A$ is invertible, then $det(A^{-1})=\frac{1}{det(A)}$
#### Laplace
Recursive formula for solving the determinant  
The **Determinant** of a $3\times 3$ matrix $A$ is:  
	$\begin{bmatrix} a & b & c \\ d & e & f \\ g & h &i\end{bmatrix}=a*det(\begin{bmatrix} e & f \\ h & i\end{bmatrix})-b*det(\begin{bmatrix} d & f \\ g & i\end{bmatrix})+c*det(\begin{bmatrix} d & e \\ g & h\end{bmatrix})$

Or,  
The [Determinant](Determinant.md) of a $n\times n$ matrix $A$ is:  
	$det(A)=\sum\limits_{i=0}^{n}(-1^{i-1})a_{1i}det(A_{1i})$

#### **Leibniz Formula**
The [Determinant](Determinant.md) of a $3\times 3$ matrix $A$ is:  
	$\begin{bmatrix} a & b & c \\ d & e & f \\ g & h &i\end{bmatrix}=aei+bfg+cdh-ceg-bdi-afh$

> Rule of Sarus  
> ![Pasted image 20240308195525](attachments/Pasted%20image%2020240308195525.png)


#### Elimination Algorithm
Simplify Matrix to an upper triangular matrix  
Determinant is the product of the diagonal elements

### Check if Function is a Valid Determinant 
A function of the rows of a matrix $A$ is called [Multilinear](Multilinear) if:  
	If $f$ is a linear function of each of its rows when the remaining rows are held fixed, that is:  
	$f(a_{1},...,ba_{i}+b'a_{i}',...,a_{n})$  
	$=bf(a_{1},...,a_{i},...,a_{n})+b'f(a_{1},...,a_{i}',...,a_{n})$

A function of the rows of a matrix $A$ is called [Alternating](Alternating) if:  
	Whenever any two rows of $A$ are interchanged, $f$ changes sign:  
	$f(a_{1},...,a_{i},...,a_{j},...,a_{n})=-f(a_{1},...,a_{j},...,a_{i},...,a_{n})$

### Cramer's Rule
The **Matrix of** [Cofactors](Cofactor) $A'$ is the matrix whose $ij$th entry is:  
	$(-1)^{i+j}det(A_{ji})$ 

Cramer's Rule says that: $x=A^{-1}b=\frac{1}{det(A)}A'b$  
	  Or, a solution $x$ to the system of equations $Ax=b$ can be found the vector whose $j$th entry is the quotient $\frac{det(B_{j})}{det(A)}$  
	Where $B_{j}$ is the matrix obtained from $A$  by replacing the $j$th column of $A$ by the vector $b$ 

### Find Eigenvalues and Eigenvectors
Use Characteristic Polynomial, solve for $det(T-\lambda I)=0$  
The value of $\lambda$ where characteristic polynomial $=0$, are eigenvalues

To find Eigenspaces, for each eigenvalue, solve for $T-\lambda I=0$  
	The vectors which result from this are the basis for the eigenspace $E_{\lambda}$

### Diagonalize a Matrix
A transformation is diagonalizable only if there are as many **real** eigenvectors as its dimension (counting with multiplicities)  
And if each dimension of an eigenvalue is the same as its multiplicity

Find all the eigenspaces, and use the basis for the eigenvalues as a basis for the transformation.  
Turn the basis of the matrix of the transformation into the new created basis, and it should be diagonalized

### Find Orthogonal Projections
Let $\{w_{1},...,w_{k}\}$ be an **Orthonormal** basis for $W$  
Use $P_{W}(x)=\sum\limits_{i=1}\langle x, w_{i}\rangle w_{i}$, For each vector produced, create matrix
> **Example**  
> Simple one  
> 	Given $W=Span\{\begin{bmatrix} 1 \\ 1 \\ 0\end{bmatrix}\}$, and $x=\begin{bmatrix} x_{1} \\ x_{2} \\ x_{3}\end{bmatrix}$  
> 	By proposition given above,  
> 	$\begin{aligned} P_{W}(x)&=\sum\limits_{i=1}\langle x, w_{i}\rangle w_{i}\\&=(\begin{bmatrix} x_{1} \\ x_{2} \\ x_{3}\end{bmatrix}\cdot\begin{bmatrix} 1 \\ 1 \\ 0\end{bmatrix})\begin{bmatrix} 1 \\ 1 \\ 0\end{bmatrix}\\ &=(x_{1}+x_{2})\begin{bmatrix} 1 \\ 1  \\ 0\end{bmatrix}\end{aligned}$  
> 	Which results in the matrix $\begin{bmatrix} 1  & 1 & 0\\ 1 & 1 & 0 \\0 & 0 & 0 \end{bmatrix}$, this is the matrix for $P_{W}$

> Remember, every basis that $W$ has, adds another sum to the equation

### Find Orthogonal Basis
$P_{W_{i}}(v)=\sum\limits\frac{\langle v_{i},v\rangle}{\langle v_{i},v_{i}\rangle}v_{i}$ 

[Gram-Schmidt Process](Gram-Schmidt%20Process)
- Start with $v_{1}=u_1$, set $W_{1}=Span(\{v_{1}\})$  
	Produce $v_{2}$ with $v_{2}=u_{2}-P_{W_{1}}(u_{2})$  
	This by definition, will be orthogonal to $v_{1}$
- Define $W_{2}=Span(\{v_{1},v_{2}\})$, Produce $v_{3}$ with $v_{3}=u_{3}-P_{W_{2}}(u_{3})$,  
	This by definition will be orthogonal to $v_{1}$ and $v_{2}$ 
- Continue this process for each $u_{i}$, set $W_{i}=Span(\{v_{1},...,v_{i}\})$, and define $v_{i+1}=u_{i+1}-P_{W_{i}}(u_{i+1})$
- To make an [Orthonormal](../MAT223%20Notes/Orthonormal.md) basis, divide each $v_{i}$ by its [Norm](Norm.md) during the process to make a unit vector

### Check if Matrix is Symmetric
Check $A=A^{t}$, or $x,y\in \mathbb{R}^{n}, \langle Ax,y\rangle = \langle x, A^{t}y\rangle$  
Check if matrix is diagonalizable, then it is symmetric

### Find Spectral Decomposition
- Check matrix is symmetric
- Find eigenvalues and eigenspaces
- Form orthogonal basis using eigenvectors
- Form change of base matrix to change transformation to new basis
- Split into the form $T=\lambda_{1}P_{1}+...+\lambda_{k}P_{k}$

### Calculate Hermitian Inner Product
$\langle x,y\rangle = x_{1}\overline y_{1}+...+x_{n}\overline y_{n}$

### Check that a linear transformation is self adjoint
Using Hermitian Inner Product, check that $\langle T(u),v\rangle = \langle u,T(v)\rangle$

### Polar Coordinates
 **De Moivre's Formula**:  
	 if $n$ is an integer,  
		$z^{n}=r^{n}(\cos(n \theta)+i\sin(n \theta))$  
	$z^{2}=|z|^{2}(\cos(2\theta)+i\sin(2\theta))$  
	$z^{-1}=|z|^{-1}(\cos(-\theta)+i\sin(-\theta))$  
	$z^{n}=|z|^{n}(\cos(n \theta)+i\sin(n \theta))$  
	For i  
	$\begin{aligned}i&=1(\cos(\frac{\pi}{2})+i\sin(\frac{\pi}{2}))\\&=i \end{aligned}$  
	$\begin{aligned}\sqrt{i}&=1\left(\cos\left(\frac{\pi}{4}\right)+i\sin(\frac{\pi}{2})\right)\\ &=\frac{\pm\sqrt{2}}{2}(1+i) \end{aligned}$  
	$\sqrt[3]{i}=\frac{\pm\sqrt{3}+i}{2}, (-i)$  

### Calculate Hermitian Inner Product
For all $u,v\in V,\langle u,v\rangle=\overline{\langle v,u\rangle}$ ([Conjugate](Conjugate.md))w  
	$\langle u,av\rangle=\overline{\langle av,u\rangle}=\overline{a\langle v,u\rangle}=\overline{a}\overline{\langle v,u\rangle}=\overline a \langle u,v\rangle$