#mathematics  
#uoft/csc236 

**Induction** is a technique for proving and solving problems

> Induction is the general idea of using the existence of a base case, to extrapolate and prove that later cases are also true  
> There are two versions of induction, [Simple/Weak Induction](Simple%20Induction.md), and [Complete/Strong Induction](Complete%20Induction.md)

---
## Simple Induction

[Simple Induction](Simple%20Induction.md) is when you prove  that$(P(0)\wedge \forall k \in \mathbb{N})\implies P(k+1))\implies \forall n\in \mathbb{N},P(n)$ 

### Steps
1. Find a predicate $P(n)$
2. Prove the Base Case: $P(0)$ is *true*
3. Inductive Step, Prove that  $\forall k\in \mathbb{N}, P(k) \implies P(k+1)$ is *true*  
	For any value, if $P(k)$ is true, $P(k+1 )$ is also guaranteed to be true  
	One technique used to prove this is the [Induction Hypothesis](Induction%20Hypothesis.md), where we assume $P(k)$ is true to solve for $P(k+1)$  
Then we can conclude that $\forall n\in \mathbb{N}, P(n)$ is  true

> An Example  
> Prove $\forall n \in \mathbb{N}, \sum\limits_{i=0}^{n}i=\frac{n(n+1)}{2}$, Predicate is $P(n): \sum\limits_{i=0}^{n}i=\frac{n(n+1)}{2}$  
> Base Case: $P(0):\sum\limits^{0}_{i=0}=\frac{0(0+1)}{2}=0$  (True because both are 0)  
> Induction: $P(k)\implies P(k+1)$ (We solve this by assuming that $P(k)$ is true)  
> 	 ![Pasted image 20240517173143](Pasted%20image%2020240517173143.png)  
> 	 This proves that $\sum\limits^{k+1}_{i=0}i=\frac{(k+1)(k+2)}{2}$ which proves that $P(k)\implies P(k+1)$  
> And thus the example is proved

## Complete Induction
> Why do we need complete induction?  
> Sometimes [Simple Induction](Simple%20Induction.md)  is not enough to solve all problems. Simple induction relies on being able to compare $P(k)$ and $P(k+1)$  
> 	For example, the question of proving that every natural number greater than 1 has a *prime factorization* (can be written as a product of primes)  
> 	It is hard to break this problem down to $P(k)\implies P(k+1)$, because prime factorizations of consecutive numbers can be completely different  
> 		Take 20 and 21, prime factorization of these would be $2\cdot 2\cdot 5=20$, and $3\cdot  7 = 21$  
> 		These two numbers would be hard to compare $P(k)$ and $P(k+1)$, because their prime factorizations are so different

[Complete Induction](Complete%20Induction.md) or [Strong Induction](Strong%20Induction.md) is when you prove that:  
	$(P(0)\wedge\forall k,(P(0)\wedge P(1)\wedge...\wedge P(k))\implies P(k+1))\implies \forall n, P(n)$  
	Or, if everything leading up to $P(k)$ is true, then $P(k+1)$ is true

>  One use case of **Complete Induction** is proving that for every element of the [Fibonacci Sequence](Fibonacci%20Sequence), $f_{n}=\frac{(\frac{1+\sqrt{5}}{2})n-(\frac{1-\sqrt{5}}{2})n}{\sqrt{5}}$  
> 	I don't want to write out the full proof, but focus on how since for every element of the **Fibonacci Sequence**, $f_{n}=f_{n-1}+f_{n-2}$ (instead of just $f_{n}=f_{n-1}$) , to prove any formula, we would need more than simple induction  
> 	We would need at least 2 base cases for $f_{n-1}$ and $f_{n-2}$

## Structural Induction

[Structural Induction](Structural%20Induction.md) is a proving technique very similar to [Induction](.md) (Hence the name)

Structural Induction is the technique of using the [Recursive Definition of a Set](Recursively%20Defined%20Set.md) to prove a property for all elements of the set
1. Prove that the base case of the recursive definition follows the property
2. **Inductive Hypothesis**, show that given the base case being true, recursively defined elements also maintain the property

> An example of using [Structural Induction](Structural%20Induction.md) to prove that every non-empty binary tree has one more node than edge  
> (Using the recursive definition of the set of all non-empty binary trees shown above)  
> ![349](Pasted%20image%2020240612153053.png)
