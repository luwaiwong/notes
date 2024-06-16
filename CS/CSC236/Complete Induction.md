#mathematics 
#uoft/csc236 

**Complete [Induction](Induction.md)** (Also sometimes called [Strong Induction](Strong%20Induction.md)) is a technique for proving and solving problems

---
# Definition

[Complete Induction](.md) or [Strong Induction](Strong%20Induction.md) is when you prove that:
	$(P(0)\wedge\forall k,(P(0)\wedge P(1)\wedge...\wedge P(k))\implies P(k+1))\implies \forall n, P(n)$ 
	Or, if everything leading up to $P(k)$ is true, then $P(k+1)$ is true

>  One use case of **Complete Induction** is proving that for every element of the [Fibonacci Sequence](Fibonacci%20Sequence), $f_{n}=\frac{(\frac{1+\sqrt{5}}{2})n-(\frac{1-\sqrt{5}}{2})n}{\sqrt{5}}$ 
> 	I don't want to write out the full proof, but focus on how since for every element of the **Fibonacci Sequence**, $f_{n}=f_{n-1}+f_{n-2}$ (instead of just $f_{n}=f_{n-1}$) , to prove any formula, we would need more than simple induction
> 	We would need at least 2 base cases for $f_{n-1}$ and $f_{n-2}$

## Why?
> Why do we need complete induction?
> Sometimes [Simple Induction](Simple%20Induction.md)  is not enough to solve all problems. Simple induction relies on being able to compare $P(k)$ and $P(k+1)$
> 	For example, the question of proving that every natural number greater than 1 has a *prime factorization* (can be written as a product of primes)
> 	It is hard to break this problem down to $P(k)\implies P(k+1)$, because prime factorizations of consecutive numbers can be completely different 
> 		Take 20 and 21, prime factorization of these would be $2\cdot 2\cdot 5=20$, and $3\cdot  7 = 21$
> 		These two numbers would be hard to compare $P(k)$ and $P(k+1)$, because their prime factorizations are so different