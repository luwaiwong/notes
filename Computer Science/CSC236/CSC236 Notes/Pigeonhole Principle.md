#computer-science 
#uoft/csc236 

The [Pigeonhole Principle](.md) (Also known as the **Dirichlet Drawer Principle**) states that:
	If $k+1$ or more objects are placed into $k$ boxes, then there is as least one box containing two or more of the objects

> This property is quite obvious. 
> 	Suppose a flock of 20 pigeons flies into a set of 19 pigeonholes to roost. Because there are 20 pigeons, but only 19 pigeonholes, at least one of these 19 pigeonholes must have at least two pigeons in it.
> Even though this principle is so obvious, it can still be useful in certain situations

> Usages of the **Pigeonhole Principle**
	- A function $f$ from a set with $k+1$ or more elements to a set with $k$ elements is not one-to-one
	- Among any group of 367 people, there must be at least two with the same birthday, because there are only 366 possible birthdays

---
## Generalized Pigeonhole Principle
This definition of the [Pigeonhole Principle](.md) only says that that there must be at least two objects in the same box, we can generalize the principle to work for more possibilities
**Generalized Pigeonhole Principle**: 
	If $N$ objects are placed into $k$ boxes, then there is at least one box containing at least $[\frac{N}{k}]$ objects