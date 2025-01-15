#mathematics 

A formal definition of division

Related  
	[Modulus](Modulus)

---
# Definition
For any integer $a$ and ay nonzero integer $b$, there are unique integers $q$ and $r$ where  
$$a=bq+r \text{ and } 0\leq r\leq |b|$$  
	$q$ is the *quotient* and $r$ is the *remainder*  
	$q$ can be found as $q=\lfloor \frac{a}{b} \rfloor$  
	And then $r$ can be found as $r=a-bq$

When $r=0$, we say $b$ *divides* $a$, and we can write $b | a$  
	Divisibility is a [Transitive](../../Computer%20Science/CSC236/CSC236%20Notes/Transitive.md) and [Reflexive](Reflexive.md) [Relation](../../Computer%20Science/CSC236/CSC236%20Notes/Relation.md) on $\mathbb{Z}$

## Notation
$a \mid b$ if $b$ *divides* $a$

use `\mid` for $\mid$ 
## Properties
- **Divisibility** is [Transitive](../../Computer%20Science/CSC236/CSC236%20Notes/Transitive.md) and [Reflexive](Reflexive.md) on $\mathbb{Z}$
- It is neither [Symmetric](../../Computer%20Science/CSC236/CSC236%20Notes/Symmetric.md) nor [Antisymmetric](../../Computer%20Science/CSC236/CSC236%20Notes/Antisymmetric.md)
- If $a|b, b|a$ then $a=b$ or $a=-b$
- A number is [Prime](Prime) if it has just two *divisors* (1 and itself)
- A *common divisor* of two numbers is a number which *divides* them both
- The [Greatest Common Divisor (GCD)](Greatest%20Common%20Divisor%20(GCD).md) is the biggest of the common divisors
	- If $c | a$ and $c|b$, then $c|gcd(a,b)$ 
	- $gcd(a,b)\cdot lcm(a,b)=|ab|$