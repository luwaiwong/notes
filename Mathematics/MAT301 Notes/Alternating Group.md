#mathematics/group-theory #uoft/mat301 

The **Alternating [Group](Group.md)** is the set of [Permutations](../../Statistics/STA237%20Notes/Permutation.md) in $S_{n}$ ([Symmetric Group](Symmetric%20Group.md)), with even [Parity](Parity.md)
$$A_{n}=\{\sigma\in S_{n}: sgn(\sigma)= 1\}$$

---
## Definition

The **Alternating [Group](Group.md)** is the set of [Permutations](../../Statistics/STA237%20Notes/Permutation.md) in $S_{n}$ ([Symmetric Group](Symmetric%20Group.md)), with even [Parity](Parity.md)
$$A_{n}=\{\sigma\in S_{n}: sgn(\sigma)= 1\}$$
### Properties 
- $A_{n}\trianglelefteq S_{n}$
- $[S_{n}:A_{n}]=2$ for $n>1$
	- This means that the order of any $A_{n}$, is half the order of $S_{n}$
- $A_{1}$ and $A_{2}$ are trivial

> Examples of Alternating Groups
> 	$A_{3}$ has order $3$ because $S_{3}$ has order $6$. The signs of all the elements of $S_{3}$ are:
> 		 $\sigma = \{e, (1 \ 2), (1 \ 3), (2 \ 3),(1 \ 2 \ 3),(1 \ 3 \ 2)\}$
> 		 $sgn(\sigma)=\{1, -1, -1, -1, 1,1\}$
> 		 Thus $A_{3}=\{e, (1 \ 2 \ 3),(1 \ 3 \ 2)\}$. Note that $A_{3}$ is cyclic
> 	$A_{4}$ has order $12$ because $S_{4}$ has order 24

> Why Alternating Groups?
> 	Alternating Groups $A_{n}$ are an interesting groups, have a lot of interesting properties, and generally is a great source of examples (and counterexamples)