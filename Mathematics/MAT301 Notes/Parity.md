#mathematics/group-theory #uoft/mat301 

The [[Parity]] (Or **Sign**) of a [[Permutation]] is the *parity* of the number of factors, in any decomposition of $\sigma$ into [[Transposition|Transpositions]]. If:
$$\sigma = \sigma_{1}\dots\sigma_{m}$$
	Then $sgn(\sigma)=(-1)^{m}= \begin{cases} \ \ \ 1  \text{ if } m \text{ is even} \\ -1 \text{ if } m \text{ is odd} \end{cases}$

---

## Definition
The [[Parity]] (Or **Sign**) of a [[Permutation]] is the *parity* of the number of factors, in any decomposition of $\sigma$ into [[Transposition|Transpositions]]. If:
$$\sigma = \sigma_{1}\dots\sigma_{m}$$
	Then $sgn(\sigma)=(-1)^{m}= \begin{cases} \ \ \ 1  \text{ if } m \text{ is even} \\ -1 \text{ if } m \text{ is odd} \end{cases}$

### Properties
- Let $\sigma\in S_{n}$ if $\sigma = \uptau_{1}\dots\uptau_{k}=\rho_{1}\dots\rho_{l}$ are two decompositions of $\sigma$ into transpositions, then $k$ and $l$ have the same *parity*
- Transpositions are odd - there is only one factor, and 1 is odd
- In general, the parity of a k-cycle is *opposite* the parity of $k$-cycle is *opposite* the parity of $k$
	- Cycles of even length are odd
	- Cycles of odd length are even
- $sgn: S_{n}\rightarrow \mu_{2}=\{1, -1\}$ is a [[Homomorphism]]

> Recall:
> 	The *parity* of a number, is whether its even, or odd
> Examples:
> 	The Identity Permutation is even
> 	The 4-cycle $(a \ b \ c\ d)$ can be written as $(a \ b)(b \ c)(c \ d)$ which has 3 factors, so it's odd
> 	The 7-cycle $(1 \ 2 \ 3 \ 4 \ 5 \ 6 \ 7)=(1 \ 7)(1 \ 6)(1 \ 5)(1 \ 4)(1 \ 3)(1 \ 2)$ has 6 factors, so it's its even
> 	In general, the parity of a k-cycle is *opposite* the parity of $k$-cycle is *opposite* the parity of $k$. 