#uoft/mat224 #mathematics/linear-algebra 

An **Eigenvector** is a [[Vector]] $x$ of a [[Linear Transformation|Linear Transformation]] $T$ where there is an [[Eigenvalue]] $\lambda$ such that $T(x)=\lambda x$

---
# Formal Definition

A vector $x\in V$ is called an **Eigenvector** of $T$ if $x\neq 0$, and there exists a scalar $\lambda \in \mathbb{R}$ such that $T(x)=\lambda x$ 
	An **Eigenvector** is a vector in the [[Image]] of $T$, where it is just the original vector $x$, scaled by a factor $\lambda$ 

# Properties
$(T-\lambda I)(x)$
	 If $x$ is an **Eigenvector** of a linear mapping $T:V\rightarrow V$ with **Eigenvalue** $\lambda$, where $T(x)= \lambda x$:
	 Then $(T-\lambda I)(x)=0$
	 And If $x\in  Ker(T-\lambda I)$ and $x\neq 0$, then $x$ is an eigenvector of $T$ with eigenvalue $\lambda$
		 These properties are used to construct the [[Characteristic Polynomial]], and can be used to help find **Eigenvectors** given [[Eigenvalue|Eigenvalues]]

# Calculations
How to find Eigenvectors given a Linear Transformation.