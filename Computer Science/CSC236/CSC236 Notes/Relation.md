#mathematics 
#uoft/csc236 

A **Relation** between two [Sets](../../../Mathematics/MAT223%20Notes/Set.md) is an *association* or [Relationship](Relationship.md) between the elements of the two sets

A **Relation** itself is a set, which contains all the [Relationships](Relationship.md) between the elements of the two sets

---
# Definition
The relation of two sets $A$ and $B$ is a [Subset](Subset) of the product $A\times B$, $R\subset A\times B$

>Remember:
>	$\times$ is the [Cartesian Product](../../../Mathematics/MAT301%20Notes/Cartesian%20Product.md)
## Notation
A relation is can be simply a subset $R$

Two elements $x,y$ can be said to be related with the notation $xRy$
	Meaning $x$ is related to $y$

A relation which is [Reflexive](../../../Mathematics/MAT301%20Notes/Reflexive.md), [Symmetric](Symmetric.md), and [Transitive](Transitive.md) is called an [Equivalence Relation](../../../Mathematics/MAT301%20Notes/Equivalence%20Relation.md)
- These are denoted $\sim$ 

> If two sets have a relation, then that means their elements have an association/[Relationship](Relationship.md) with one another in some way
> The product $A\times B$ would result in a set where every element of $A$, would be with every element of $B$.
> 	This gives us every possible combination of one element from $A$ and one element of $B$
> 	The relation would be a subset of this set $A\times B$, and tell us which elements from $A$ have an association with which elements from $B$

>Example of a simple relation
> If we define $A=B$ as the set of integers, and the relation *Less Than* between $A$ and $B$ as the set of ordered pairs of integers $(a,b)$ such that $a<b$.
> 	The ordered pair $(-2,7)$ belongs to *Less Than*, but $(2,2)$ or $(5,3)$ do not belong

## Properties
- Relations can be defined with any number of sets
- The number of sets involved in a relation is called the [Arity](Arity.md) of the relation
- A relation is  [Reflexive](../../../Mathematics/MAT301%20Notes/Reflexive.md) if all elements are related to themselves, $xRx$ for all $x$
- [Symmetric](Symmetric.md) if the relation goes both ways, if $xRy$ then $yRx$
- [Antisymmetric](Antisymmetric.md) if *no* two distinct elements are mutually related, if $xRy$ and $yRx$, $x=y$
- [Transitive](Transitive.md) if you can "remove the middleman" in a chain of relations, if $xRy$, $yRz$, then $xRz$
