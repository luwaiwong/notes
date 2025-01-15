#mathematics 
#uoft/mat301 


The **Totient** of a number $n$ is the number of integers between 1 and $n$ which are [Coprime](Coprime.md) to $n$
	Denoted $\varphi$

> Recall:
> 	An element is coprime with $n$ if its greatest common denominator is 1
> 	Or $a$ is coprime with $n$ if $gcd(a,n)=1$ 

Formally,
$$\varphi(n)=|\{1\leq a \leq n:gcd(a,n)=1\}|$$

---
## Properties
- Let $p$ be a prime and $k$ be positive integer, $\varphi(p^{k})=p^{k-1}(p-1)$
	- $\varphi(p)=p-1$