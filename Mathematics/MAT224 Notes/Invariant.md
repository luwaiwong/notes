#mathematics/linear-algebra  
#uoft/mat224 


A [Subspace](../MAT223%20Notes/Subspace.md) $W\subset V$ is **Invariant, or Stable** under $T$ if $T(W)\subset W$

> Invariant means that, the subspace is "contained" under $T$, Any vector from $W$ is still in $W$ after being transformed

---
### Examples of Invariant Subspaces

**Examples**
- $\{0\}$ and $V$ are invariant under all linear mapping $T:V\rightarrow V$
- $Ker(T), Im(T)$ are invariant subspaces as well
- If $\lambda$ is an eigenvalue of $T$, then the eigenspace $E_{\lambda}$ is invariant under $T$ as well  
	Obviously true, because $v\in E_{\lambda}, T(v)=\lambda v\in E_{\lambda}$