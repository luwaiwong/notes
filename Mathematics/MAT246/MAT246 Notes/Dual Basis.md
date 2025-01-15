#mathematics/linear-algebra #uoft/mat246 

The **Dual Basis** of a set of vectors, is the set of [Linear Functionals](Linear%20Functional.md) which map each vector to 1 or 0

---
# Definition 
The **Dual basis** of a set of vectors $v_{1},...,v_{n}$, is the list $\varphi_{1},...,\varphi_{n}$ of elements in $V'$ where each $\varphi_{j}$ is the [Linear Functional](Linear%20Functional.md) on $V$ such that 
$$\varphi_{j}(v_{k}) = \begin{cases}1 \ \text{ if $k=j$} \\ 0  \ \text{ if $k\neq j$} \end{cases}$$
The **Dual Basis** of a [Base (Basis)](../../MAT223%20Notes/Base%20(Basis).md) of $V$, is a basis of $V'$ ([Dual Space](Dual%20Space.md) of $V$)

The **Dual Basis** of any basis for a vector space, gives the *coefficients* for any vector for its basis
	For each $v\in V$, $v=\varphi_{1}(v)v_{1}+\dots+\varphi_{n}(v)v_{n}$, where $v_{1},...,v_{n}$ is a basis of $V$ and $\varphi_{1},...,\varphi_{n}$ is a basis for $V'$ and a [Dual Basis](.md) of $v_{1},...,v_{n}$
