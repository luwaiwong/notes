#computer-science 
#uoft/csc236 

A [Set](../../../Mathematics/MAT223%20Notes/Set.md) can be defined [Recursively](Recursive) using several strategies

---
# How?
To define a [Set](../../../Mathematics/MAT223%20Notes/Set.md) using [Recursion](Recursion.md), first define a base starting value, and then use recursion to propagate along all values that you want

For example, a recursive definition of $\mathbb{N}$, all natural numbers is:
 - $0\in \mathbb{N}$
 - If $k\in \mathbb{N}$, then $k+1\in \mathbb{N}$

>Recursively defining a set requires a "base case", and a recursive continuation
>You can almost imagine recursively defining sets as using [Induction](Induction.md) to define a set

## Examples

#### Constructing the "set of all non-empty binary trees" recursively
 Recursive Definition:
 - A single node is a non-empty binary tree
 - If $T_{1},T_{2}$ are two non-empty binary trees, then the tree with a new root $r$ connected to the roots of $T_{1}$ and $T_{2}$ is a non-empty binary tree
 - If $T_{1}$ is a non-empty binary tree, then the tree with a new root $r$ connected to the root of $T_{1}$ to the left or to the right is a non-empty binary tree
 *Note that this definition has two recursive rules, not one*

# Structural Induction
[Structural Induction](Structural%20Induction.md) can be used to prove properties of **Recursively Defined Sets**

Structural Induction is the technique of using the Recursive Definition of a set to prove a property for all elements of the set

> An example of using [Structural Induction](Structural%20Induction.md) to prove that every non-empty binary tree has one more node than edge
> (Using the recursive definition of the set of all non-empty binary trees shown above)
> ![349](attachments/Pasted%20image%2020240612153053.png)
