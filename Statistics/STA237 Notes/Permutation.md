#statistics #computer-science #mathematics 
#uoft/sta237 #uoft/csc236 

In [Statistics](Statistics.md), the **Permutations** of a [Set](../../Mathematics/MAT223%20Notes/Set.md) is the number of ways $n$ distinct objects can be arranged, when order matters.
	Can be thought of as the *number of ways you can arrange $n$ items*

In [Group Theory](../../Mathematics/MAT301%20Notes/Group.md), a permutation is a [Bijective](../../Mathematics/MAT301%20Notes/Bijective.md) [Self Map](../../Mathematics/MAT301%20Notes/Self%20Map.md) 

Also see:
	[Combination](Combination.md)
	[Symmetric Group](../../Mathematics/MAT301%20Notes/Symmetric%20Group.md)

---
# Group Theory
A **Permutation** [Function](../../Mathematics/MAT235%20Notes/Function.md) which is a [Bijective](../../Mathematics/MAT301%20Notes/Bijective.md) [Self Map](../../Mathematics/MAT301%20Notes/Self%20Map.md) 

> A [Permutation](.md) is by definition a [Bijective](../../Mathematics/MAT301%20Notes/Bijective.md) [Self Map](../../Mathematics/MAT301%20Notes/Self%20Map.md).
> You can imagine a permutation as a function which takes a set and "mixes" it up.
> 	We can imagine what a permutation is in the context of numbers, a random rearrangement of a set of numbers
> 	For example a permutation of the numbers :
> 		1 2 3 4 5 6 7 8
> 	Could be
> 		2 4 3 5 6 1 7 8
> 	The function which rearranges the numbers in that way, is a permutation
> 	The group theory permutation, would be the function which maps each number to its new value after the permutation (1->2, 2->4)
> 		Which is why it must be [Injective](../../Mathematics/MAT224%20Notes/Injective.md) and [Surjective](../../Mathematics/MAT224%20Notes/Surjective.md), and be a self map
> 		If it isn't surjective or injective, it wouldn't be a permutation of the original set, because it would be missing some element.
> 		And it's a self map because the set of elements the permutation covers is the same
> 	These elements don't have to be numbers, can be any element

The [Symmetric Group](../../Mathematics/MAT301%20Notes/Symmetric%20Group.md) on the set $X$ is the set of all permutations on $X$ under [Composition](../../Mathematics/MAT224%20Notes/Composition.md)

> Simplification:
> 	The Symmetric Group is the set of functions from $X\to X$, which are bijective

A [Cycle](../../Computer%20Science/CSC236/CSC236%20Notes/Cycle.md) in a [Permutation](.md), is a set of elements which *loops back on itself* as the permutation is applied repeatedly

A  $k$-*cycle* (with $k\geq 2$), denoted $(a_{1} \ a_{2} \ ... \ a_{k})$, is a [Permutation](.md) which
- *Moves* $a_{i}$ to $a_{i+1}$ for $1\leq i\leq k$, 
- *Moves* $a_{k}$ to $a_1$, and
- *Fixes* everything else

A [Transposition](Transposition.md) is a permutation that moves just two points


# Statistics
## Definition

The number of permutations without replacement of a set of $n$ distinct objects is $$n(n-1)(n-2)...(1)=n!$$