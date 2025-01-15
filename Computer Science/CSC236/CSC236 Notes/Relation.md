#mathematics 
#uoft/csc236 

A **Relation** between two [[Set|Sets]] is an *association* or [[Relationship]] between the elements of the two sets

A **Relation** itself is a set, which contains all the [[Relationship|Relationships]] between the elements of the two sets

---
# Definition
The relation of two sets $A$ and $B$ is a [[Subset]] of the product $A\times B$, $R\subset A\times B$

>Remember:
>	$\times$ is the [[Cartesian Product]]
## Notation
A relation is can be simply a subset $R$

Two elements $x,y$ can be said to be related with the notation $xRy$
	Meaning $x$ is related to $y$

A relation which is [[Reflexive]], [[Symmetric]], and [[Transitive]] is called an [[Equivalence Relation]]
- These are denoted $\sim$ 

> If two sets have a relation, then that means their elements have an association/[[Relationship]] with one another in some way
> The product $A\times B$ would result in a set where every element of $A$, would be with every element of $B$.
> 	This gives us every possible combination of one element from $A$ and one element of $B$
> 	The relation would be a subset of this set $A\times B$, and tell us which elements from $A$ have an association with which elements from $B$

>Example of a simple relation
> If we define $A=B$ as the set of integers, and the relation *Less Than* between $A$ and $B$ as the set of ordered pairs of integers $(a,b)$ such that $a<b$.
> 	The ordered pair $(-2,7)$ belongs to *Less Than*, but $(2,2)$ or $(5,3)$ do not belong

## Properties
- Relations can be defined with any number of sets
- The number of sets involved in a relation is called the [[Arity]] of the relation
- A relation is  [[Reflexive]] if all elements are related to themselves, $xRx$ for all $x$
- [[Symmetric]] if the relation goes both ways, if $xRy$ then $yRx$
- [[Antisymmetric]] if *no* two distinct elements are mutually related, if $xRy$ and $yRx$, $x=y$
- [[Transitive]] if you can "remove the middleman" in a chain of relations, if $xRy$, $yRz$, then $xRz$
