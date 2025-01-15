#mathematics/group-theory #uoft/mat301 

An **Orbit** of an element $x\in X$ under a [Group](Group.md) $G$ is the [Equivalence Class](Equivalence%20Class.md) from the [Action](Action.md) of that group $G$ on $X$

In simpler terms, the orbit of an element $x$ under a group $G$ with an [Action](Action.md), is the set of all the elements in $X$ related to $G$ via that action

---
# Definition
The **Orbit** of a [Group](Group.md) $G$ on an element $x\in X$ is the [Equivalence Class](Equivalence%20Class.md) created from the [Relation](../../Computer%20Science/CSC236/CSC236%20Notes/Relation.md) defined by an [Action](Action.md) between $G$ and $X$

A subset $Y$ of $X$ is called $G$-*invariant* if $g \ .y\in Y$ for all $y\in Y$ and all $g\in G$. 
	If $Y\subseteq X$ is $G$-invariant, then $G$ acts on $Y$ the same way it acts on $X$

> Thoughts
> 	The orbit is a set of all the ways that an element $x$, is related to other elements in $X$, via the set $G$ and the [Action](Action.md) between $G$ and $X$
> Orbit Example
> 	![320](attachments/Orbit%20Puzzle%20Piece%20Example.png)
> 	Here, the set is the puzzle pieces, the group is all 4  possible rotations of a puzzle piece, and the action is rotating a puzzle pieces one of the 4 ways

## Notation
Denoted $Orb_{G}(x)$, or $Gx$ to mean $g \ .x: \forall g\in G$ (All the ways $G$ acts on $x$), and $X/G$ to be the set of all orbits 

The set of all all orbits of $X$ in $G$ is denoted $X/G$

The number of orbits of $X$ in $G$ (size of $X/G$) is the *[Index](Index.md) (of $X$ (in $G$))*, is denoted $[G : H]$ 
## Properties
- $o(G)=[G \ : \ H]o(H)$ ([Index](Index.md))
- Orbits are [Equivalence Classes](Equivalence%20Class.md), which mean they *partition* their set $X$ this means:
	- All orbits in under the [Coset](Coset.md) $gH$ has the same size 
	- Orbits do not "overlap" with one another

## Cosets
The (Left or Right) [Coset](Coset.md) of a group element $g\in G$ on a subgroup $H$ is the [Orbit](.md) $gH$
The (Left or Right) [Cosets](Coset.md) of a group $G$ on a subgroups $H$ is the set of all the [Cosets](Coset.md) $gH$, or $H/G$
