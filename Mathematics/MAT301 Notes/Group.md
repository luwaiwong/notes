#mathematics  
#uoft/mat301 

A **Group** is a set $G$ with a [Composition Law](Composition%20Law.md), an identity element $e$, and where each element has an [Inverse](../MAT224%20Notes/Inverse.md) element 

---
# Definition
A [Group](.md) is a set $G$ with two properties
- It has a [Composition Law](Composition%20Law.md) $*$, also called its *group operation*
- It as a distinguished element $e$ satisfying two axioms
	- **Identity**: $a*e=e*a=a$ for all $a$ in $G$
	- **Inversion**: for each $a$ in $G$ there exists $b$ in $G$ such that $a*b=b*a=e$
		- We also denote this element the [Inverse](../MAT224%20Notes/Inverse.md) of $a$ and denote it $a^{-1}$

> Remember:  
> 	 A [Composition Law](Composition%20Law.md) is a [Set](../MAT223%20Notes/Set.md) with an [Associative](Associative.md) [Binary Operation](Binary%20Operation.md)

## Notation
A group with the *composition law* $*$ and identity element $e$ is denoted $(G,*,e)$.  
	We often write $(G,*)$ or $G$ and just imply the rest
## Properties
- The identity element $e$ is unique
- The inverse for any element is unique
- We can perform *right cancellation* and *left cancellation* on any group  
	![Right & Left Cancellation](Right%20&%20Left%20Cancellation.png)

## Notation


> There are many notations for [Composition Laws](Composition%20Law.md), but when we're dealing with a single group and only one composition law, we can use **Multiplicative Notation**, and not write a symbol for the composition law at all  
> 	So writing $ab$ instead of $a*b$ 

The [Power](Power) $g^{n}$ of an element in a group $G$ with $e$, and $g\in G$. $\forall n\in \mathbb{Z}$, is defined:  
	If $n>0, g^{n}=g\cdot...\cdot g$  
	If $n<0, g^{n}=(g^{-1})^{-n}$  
	If $n=0, g^{0}=e$  
^dcf485
