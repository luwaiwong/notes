#mathematics/group-theory #uoft/mat301 

The **Stabilizer** of an [Action](Action.md) under a [Group](Group.md) is the set of elements in $G$ that [Fix](Fix) an element or subgroup

---
## Definition
The **Stabilizer** of an element $x$, under an [Action](Action.md) under a [Group](Group.md) is the set of elements in $G$ that [Fix](Fix) $x$
$$Stab_{G}(x)=G_{x}=\{g\in G:g \ .x=x\}$$

A Stabilizer (in $G$) of a *subset* $S\in G$ is defined in two ways
The *Pointwise Stabilizer* of $S$ is:
$$\{g\in G:g\ .x=x \text{ for all $x$ in $S$}\}=\bigcap\limits_{x\in S}G_{x}$$
And the *Setwise Stabilizer* of $S$ (On the [Powerset Action](Powerset%20Action.md)) is:
$$\{g\in G:g\ . S=S\}=G_{S}$$

> Example of Stabilizers:
> 	![Stabilizer Puzzle Piece Example Image](Stabilizer%20Puzzle%20Piece%20Example%20Image.png)
> 	o(stabilizer) represents all the ways the piece can be rotated, so that it still looks identical
### Properties
- The stabilizer is always a subgroup of the ambient group $G$
- If two different elements move $x$ to the same place, then their "difference" must leave $x$ alone. If $g_{1}\ . x=g_{2} \ . x$, then $g_{2}^{-1}g_{1} \ . x=x$ and $g_{2}^{-1}g_{1}\in G_{x}$

### Orbit Stabilizer Theorem
The [Orbit Stabilizer Theorem](Orbit%20Stabilizer%20Theorem.md) states the relationship between orbits and stabilizer, where if $G\curvearrowright X$ and $x\in X$
$$[G:G_{x}]=|Gx|$$
In particular, $G$ is finite iff both $Gx$ and $G_{x}$ are finite, in which case
$$o(G)=|Gx|\cdot o(G_{x})$$

> Simplifying:
> 	The relationship between orbits and stabilizers is very close. 
> 		If $x$ has a large orbits, then most elements of $G$ are busy moving $x$ around, while if $x$ has a small orbit, then most of the elements of $G$ leave $x$ alone
> 	The above is true, because we already know from lagranges theorem, $o(G)=[G:G_{x}]o(G_{x})$ 
> 		Thus if $o(G)=|Gx|\cdot o(G_{x})$, then $[G:G_{x}]=|Gx|$
> 	The product of the size of the orbit of an element, with the order of its stabilizer, is always the order of the group
> 		You can view this anecdotally in examples of orbits and stabilizers

