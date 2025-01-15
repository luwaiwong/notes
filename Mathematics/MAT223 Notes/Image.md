#mathematics #uoft/mat223

The **Image** $X$ under a [[Transformation]] $L$ is the set of all outputs of $L$ when the inputs come from $X$

---

# Definition

The [[Image]] of a [[Linear Transformation|Linear Transformation]] $T$, $Im(T)$ is the subset of $W$ consisting of all vectors $w\in W$ where $\exists v\in V$ s.t. $T(v)= w$

## Properties
- If $\{v_{1},...v_{m}\}$ is any set that spans $V$, then $\{T(v_{1}),...,T(v_{m})\}$ spans $Im(T)$
>So the transformed set of the basis also spans the image
	This set may be linearly dependent though, we may need to take away some vectors for it to be a proper basis
- $dim(Im(T))\leq dim(V)$ 
- Given a matrix representation of a linear transformation, the columns on the linear transformation, where the transformations corresponding echelon form has basic variables, are the bases for the Image
	The **Rank** of the [[Linear Transformation|Linear Transformation]] is the [[Dimension]] of the **Image** 
- if $V$ is a finite-dimensional vector space and $T:V\rightarrow W$ is a linear transformation, then $dim(Ker(T))+dim(Im(T))=dim(V)$
- 