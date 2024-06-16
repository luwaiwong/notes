#mathematics  
#uoft/csc236 

**Simple [Induction](Induction.md)** (Also sometimes called Weak Induction) is a technique for proving and solving problems

---
# Definition

[Simple Induction](.md) is when you prove  that$(P(0)\wedge \forall k \in \mathbb{N})\implies P(k+1))\implies \forall n\in \mathbb{N},P(n)$ 

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
> 	 ![Pasted image 20240517173143](attachments/Pasted%20image%2020240517173143.png)  
> 	 This proves that $\sum\limits^{k+1}_{i=0}i=\frac{(k+1)(k+2)}{2}$ which proves that $P(k)\implies P(k+1)$  
> And thus the example is proved
