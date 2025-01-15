#computer-science 
#uoft/csc236 

A **Predicate** is a *parameterized logical statement*

> You can think of a predicate as a function that takes in one or more arguments, and outputs either True or False
> 	"Parameterized Logical Statement", a logical statement (true or false statement) that takes a parameter
> 	So a $P(n)$ that returns true or false depending on $n$

---
## Properties

[[Predicate|Predicates]] have a [[Domain]], the set of all its possible input values

## Uses

We can use predicates to describe more formally what if means if formulas are correct

> For example, in the textbook we examine whether $\sum\limits^{n}_{i=0}i=\frac{n(n+1)}{2}$
> A predicate determining if this formula is accurate can be $P(n):\sum\limits^{n}_{i=0}i=\frac{n(n+1)}{2}$
> 	This predicate returns true for an $n$ if the formula is correct for that $n$


## Examples of Predicates
- $EV(n)$: $n$ is even
- $GR(x,y)$:$x>y$
- $FROSH(a)$: $a$ is a first-year university student