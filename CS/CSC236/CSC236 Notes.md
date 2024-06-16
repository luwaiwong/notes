#computer-science  
#uoft/csc236  
#notes 

Notes for [CSC236](CSC236)  
Textbook References  
	[CSC236 Course Notes (Textbook) Liu](attachments/CSC236%20Course%20Notes%20(Textbook)%20Liu.pdf)  
	[CSC236 Textbook Hadzilacos](attachments/CSC236%20Textbook%20Hadzilacos.pdf)  
	[CSC236 Textbook Rosen](attachments/CSC236%20Textbook%20Rosen.pdf)

---
# Table of Contents

[#Week 1](#Week%201)  
	[CSC236 Week 1 Slides](attachments/CSC236%20Week%201%20Slides.pdf)  
	[#Course Overview](#Course%20Overview)  
	[#Induction](#Induction)  
		[#Simple Induction](#Simple%20Induction)  
		[#Complete Induction](#Complete%20Induction)  
[#Week 2](#Week%202)  
	[CSC236 Week 2 Slides](attachments/CSC236%20Week%202%20Slides.pdf)  
	[#Relations](#Relations)  
	[#Ordering](#Ordering)  
	[#Counting](#Counting)  
[#Week 3](#Week%203)  
	[CSC236 Week 3 Slides](attachments/CSC236%20Week%203%20Slides.pdf)  
	[#Probability](#Probability)  
		[#Pigeonhole Principle](#Pigeonhole%20Principle)  
	[#Graph Theory](#Graph%20Theory)  
[#Week 4](#Week%204)  
	[CSC236 Week 4 Slides](attachments/CSC236%20Week%204%20Slides.pdf)  
	[#Trees](#Trees)  
	[#Recursion](#Recursion)  
		[#Structural Induction](#Structural%20Induction)  
	[#Program Correctness](#Program%20Correctness)  
[#Week 5](#Week%205)  
	[CSC236 Week 5 Slides](attachments/CSC236%20Week%205%20Slides.pdf)


# Notes
## Week 1
>[CSC236 Week 1 Slides](attachments/CSC236%20Week%201%20Slides.pdf)  
>Readings: Liu Chapter 2: The Induction Idea, When Simple Induction Isn't Enough, Complete Induction (PG 16)
### Course Overview
Course Topics
- proofs
- correctness of algos
- finite automaton

Course Schedule  
	![575](attachments/Pasted%20image%2020240508182232.png)

> Midterms are not cumulative

### Asymptotic Analysis

Given two functions $f(n)=n^{2}$ and $g(n)=\frac{n^{3}}{10}$, there is a point $n^{0}$ where $f(n)>g(n)$, or vice versa

$f\in O(g)$ means that there is a point, where $f(n)\leq cg(n)$  
$f\in \Omega(g)$ means that there is a point, where $f(n)\geq cg(n)$

### Induction

A [Predicate](Predicate.md) is a "parameterized logical statement"  
	[Predicates](Predicate.md) have a [Domain](Domain.md), the set of all its possible input values  
	We can use predicates to describe what it means if formulas are correct 

> For example, in the textbook we examine whether $\sum\limits^{n}_{i=0}i=\frac{n(n+1)}{2}$  
> A predicate determining if this formula is accurate can be $P(n):\sum\limits^{n}_{i=0}i=\frac{n(n+1)}{2}$  
> 	This predicate returns true for an $n$ if the formula is correct for that $n$

> You can think of a predicate as a function that takes in one or more arguments, and outputs either True or False  
> 	"Parameterized Logical Statement", a logical statement (true or false statement) that takes a parameter  
> 	So a $P(n)$ that returns true or false depending on $n$

[Induction](Induction.md) is a technique for solving proofs 

> Induction is the general idea of using the existence of a base case, to extrapolate and prove that later cases are also true  
> The following provides the first version of induction we will cover

#### Simple Induction
[Simple Induction](Simple%20Induction.md) is when you prove $(P(0)\wedge \forall k \in \mathbb{N})\implies P(k+1))\implies \forall n\in \mathbb{N},P(n)$  
Steps
1. Find a predicate $P(n)$
2. Prove the Base Case: $P(0)$ is *true*
3. Inductive Step, Prove that  $\forall k\in \mathbb{N}, P(k) \implies P(k+1)$ is *true*  
	For any value, if $P(k)$ is true, $P(k+1 )$ is also guaranteed to be true  
	One technique used to prove this is the [Induction Hypothesis](Induction%20Hypothesis.md), where we assume $P(k)$ is true to solve for $P(k+1)$  
Then we can conclude that $\forall n\in \mathbb{N}, P(n)$ is  true

> An Example  
> Prove $\forall n \in \mathbb{N}, \sum\limits_{i=0}^{n}i=\frac{n(n+1)}{2}$, Predicate is $P(n): \sum\limits_{i=0}^{n}i=\frac{n(n+1)}{2}$  
> Base Case: $P(0):\sum\limits^{0}_{i=0}=\frac{0(0+1)}{2}=0$  (True because both are 0)  
> Induction: $P(k)\implies P(k+1)$ (We solve this by assuming that $P(k)$ is true)  
> 	 ![Pasted image 20240517173143](attachments/Pasted%20image%2020240517173143.png)  
> 	 This proves that $\sum\limits^{k+1}_{i=0}i=\frac{(k+1)(k+2)}{2}$ which proves that $P(k)\implies P(k+1)$  
> And thus the example is proved


> Sometimes [Simple Induction](Simple%20Induction.md)  is not enough to solve all problems. Simple induction relies on being able to compare $P(k)$ and $P(k+1)$  
> 	For example, the question of proving that every natural number greater than 1 has a *prime factorization* (can be written as a product of primes)  
> 	It is hard to break this problem down to $P(k)\implies P(k+1)$, because prime factorizations of consecutive numbers can be completely different  
> 		Take 20 and 21, prime factorization of these would be $2\cdot 2\cdot 5=20$, and $3\cdot  7 = 21$  
> 		These two numbers would be hard to compare $P(k)$ and $P(k+1)$, because their prime factorizations are so different

#### Complete Induction
[Complete Induction](Complete%20Induction.md) or [Strong Induction](Strong%20Induction.md) is when you prove that:  
	$(P(0)\wedge\forall k,(P(0)\wedge P(1)\wedge...\wedge P(k))\implies P(k+1))\implies \forall n, P(n)$  
	Or, if everything leading up to $P(k)$ is true, then $P(k+1)$ is true

> One example in class is proving that for every element of the [Fibonacci Sequence](Fibonacci%20Sequence), $f_{n}=\frac{(\frac{1+\sqrt{5}}{2})n-(\frac{1-\sqrt{5}}{2})n}{\sqrt{5}}$  
> 	I don't want to write out the full proof, but focus on how since for every element of the **Fibonacci Sequence**, $f_{n}=f_{n-1}+f_{n-2}$ (instead of just $f_{n}=f_{n-1}$) , to prove any formula, we would need more than simple induction  
> 	We would need at least 2 base cases for $f_{n-1}$ and $f_{n-2}$

> For the example of prime factorization example above, we can prove that every number has a prime factorization using this line of logic  
> 	If a number $n$ is not a prime, then there exists $a\cdot b =n$, and for $a$ and $b$, if they are not primes, there exists $a_{1}\cdot a_{2}=a$ and on and on, until $n$ is a product of prime numbers


## Week 2
>[CSC236 Week 2 Slides](attachments/CSC236%20Week%202%20Slides.pdf)  
>Readings: Hadzilacos Chapter 0.4, Chapter 1.1., Rosen Chapter 6: 6.1, 6.3~6.5.
### Relations
A [Set](../../Math/MAT223%20Notes/Set.md) is a collection of elements

A [Relation](Relation.md) between two [Set](../../Math/MAT223%20Notes/Set.md)s $A$ and $B$ is an *association* or [Relationship](Relationship.md) between elements of set $A$ and set $B$  
More formally, a [Relation](Relation.md) is a subset of the product $A\times B$, $R\subset A\times B$  
**Properties**
- Relations can be defined with any number of sets
- The number of sets involved in a relation is called the [Arity](Arity.md) of the relation

> If two sets have a relation, then that means their elements have an association with one another in some way  
> The product $A\times B$ would result in a set where every element of $A$, would be with every element of $B$.  
> 	This gives us every possible combination of one element from $A$ and one element of $B$  
> 	The relation would be a subset of this set $A\times B$, and tell us which elements from $A$ have an association with which elements from $B$  
> If we define $A=B$ as the set of integers, and the relation *Less Than* between $A$ and $B$ as the set of ordered pairs of integers $(a,b)$ such that $a<b$.  
> 	The ordered pair $(-2,7)$ belongs to *Less Than*, but $(2,2)$ or $(5,3)$ do not belong

### Ordering
A [Set](../../Math/MAT223%20Notes/Set.md) can be [Ordered](Ordering.md) by a [Relation](Relation.md), defining relationships between elements of the set

> An example of the ordering is the *Less Than* example given above, all natural numbers are ordered by this relationship

>An [Ordering](Ordering.md) of a set can be visualized as a set of nodes, with arrows connected to one another  
>	![Pasted image 20240517203833](attachments/Pasted%20image%2020240517203833.png)  
>You could visualize the *Less Than* ordering as the larger numbers pointing towards the smaller numbers

[Total Ordering](Total%20Ordering.md) is when all elements have a relationship to all other elements

[Well Ordering](Well%20Ordering.md) is all nodes are connected to all other nodes, in a order  
	Is a total ordering where very non-empty subset has a *least element*  
	This least element is not directed to any other element

>A Visual Example of Total Ordering and Well Ordering  
>	![500](attachments/Pasted%20image%2020240517203945.png)![425](attachments/Pasted%20image%2020240517204035.png)  
>Note in the well ordering example, how each node connects to every node, and only points downwards from where it starts

The [Well Ordering Theorem](Well%20Ordering%20Theorem.md) (also called Zermelo's theorem)  
	Every [Non Empty](Non%20Empty.md) [Set](../../Math/MAT223%20Notes/Set.md) has a relation < on $S$ which is a [Well Ordering](Well%20Ordering.md)

> This states that the natural numbers are [Well Ordering](Well%20Ordering.md)  
> Also mentioned in lectures is that combined with [Zorn's Lemma](Zorn's%20Lemma) results in the [Axiom of Choice](Axiom%20of%20Choice) (No idea what this means)

The [Well Ordering Principle](Well%20Ordering%20Principle.md) says every nonempty set $\mathbb{N}$ has a *smallest* element

> This principle can be proved using [Induction](Induction.md)  
> Induction and Well Ordering have a close relationship, in that they are equivalent  
> 	Although so far we are only shown that induction implies well ordering, not the other way around yet  
> 	(We can prove that the well ordering principle is true, with induction)  
> I'm not sure that this all matters, just understand relations, and well ordering in relation to nodes

### Counting
A [Factorial](Factorial) $n!=n\cdot(n-1)...2\cdot 1$ 

A [Permutation](../../Stats/STA237%20Notes/Permutation.md) is the number of ways $n$ objects can be arranged, when order matters  
	Without replacement, the formula for permutation is $n!$ (because $n$ ways to arrange first item, $n-1$ ways to arrange second...)  
	With replacement, the formula for permutation is $n^{n}$ (because can pick out of $n$ for first item, $n$ for second item...)

A [Combination](../../Stats/STA237%20Notes/Combination.md) is the number of ways $n$ objects can be arranged to groups of $m$, when order does **not** matter  
	Without replacement, the formula for combination is $_nC_{m}=\begin{pmatrix} n \\ m\end{pmatrix} = \frac{n!}{m!(n-m)!}$  
	With replacement, the formula for combination is $\begin{pmatrix} m+n-1 \\ m\end{pmatrix}$

## Week 3
>[CSC236 Week 3 Slides Completed](attachments/CSC236%20Week%203%20Slides%20Completed.pdf)  
>Readings: Rosen Chapter 6.2, 7.1. West Chapter 1.

> Discrete Probability -> Probability with countable numbers, no continuous numbers

### Probability
Stats Recap:  
	[Random Variables](Random%20Variable) represent an experiment, think of a random variable as a [Function](../../Math/MAT235%20Notes/Function.md) that takes in the sample space of the experiment (For example, the different ways you can roll a dice), and returns the outcome (If the dice lands on an even number)
	
	[Probability Distributions](Probability%20Distribution), and [Probability Functions](../../Stats/STA237%20Notes/Probability%20Function.md) return a [Probability](../../Stats/STA237%20Notes/Probability.md) from 0-1 of the probability of any event occurring for a [Random Variable](Random%20Variable)  
	
	[Expected Value](../../Stats/STA237%20Notes/Expected%20Value.md)
	[Variance](../../Stats/STA237%20Notes/Variance.md)

#### Pigeonhole Principle
The [Pigeonhole Principle](Pigeonhole%20Principle) (Also known as the **Dirichlet Drawer Principle**) states that:  
	If $k+1$ or more objects are placed into $k$ boxes, then there is as least one box containing two or more of the objects

> This property is quite obvious.  
> 	Suppose a flock of 20 pigeons flies into a set of 19 pigeonholes to roost. Because there are 20 pigeons, but only 19 pigeonholes, at least one of these 19 pigeonholes must have at least two pigeons in it.  
> Even though this principle is so obvious, it can still be useful in certain situations

> Usages of the **Pigeonhole Principle**  
	- A function $f$ from a set with $k+1$ or more elements to a set with $k$ elements is not one-to-one  
	- Among any group of 367 people, there must be at least two with the same birthday, because there are only 366 possible birthdays

This definition of the [Pigeonhole Principle](Pigeonhole%20Principle) only says that that there must be at least two objects in the same box, we can generalize the principle to work for more possibilities  
**Generalized Pigeonhole Principle**:  
	If $N$ objects are placed into $k$ boxes, then there is at least one box containing at least $[\frac{N}{k}]$ objects

### Graph Theory
A [Graph](Graph) is a series of [Vertexes](Vertex) connected by [Edges](Edge)

A [Walk](Walk) is a list of vertexes and edges connecting vertexes together  
	Each vertex in the walk is connected to the next by an edge  
A [Trail](Trail) is a [Walk](Walk) where no edge is repeated  
A [Path](Path) is a [Trail](Trail) with no repeated *internal* vertices
- A $u, v$-path is a [Path](Path) with endpoints $u$ and $v$  
A [Cycle](Cycle) is a $u,u$-path  
	A path that starts, and ends on the same [Vertex](Vertex)

The [Length](Length) of any of the concepts above, is the number of edges

> An example of each of the concepts  
> 	![Pasted image 20240529155616](attachments/Pasted%20image%2020240529155616.png)

A [Graph](Graph) is:
- [Connected](Connected), if between every pair of [Vertices](Vertex), there exits a path
- A [Tree](Tree), if it is [Connected](Connected), but with no [Cycles](Cycle) 

The [Degree](Degree) of a [Vertex](Vertex) is the *number of neighbors* it has, or the amount of edges it has connecting it to other vertices
 - A [Leaf](Leaf) is a [Vertex](Vertex) with degree 1 in a tree

## Week 4
> [CSC236 Week 4 Slides Completed](attachments/CSC236%20Week%204%20Slides%20Completed.pdf)  
> Readings: Liu Chapter 2: Structural induction, Chapter 4: What is Correctness. Vassos Hadzilacos Chapter 2: 1, 2, 3

### Trees
> Some more definitions for trees

The [Root](Root) of a [Tree](Tree) is a node in a tree without a [Parent](Parent)  
A [Binary Tree](Binary%20Tree) is a [Tree](Tree) where every node has $\leq$ 2 children  
The [Height](Height) of any node is the length of the longest path from the node *down* to a [Leaf](Leaf)  node  
The [Depth](Depth) of a node is the length of the path to the [Root](Root)


### Recursion
You can use [Recursion](Recursion) to **Recursively** define sets.

> For example, a recursive definition of $\mathbb{N}$, all natural numbers is:
> - $0\in \mathbb{N}$
> - If $k\in \mathbb{N}$, then $k+1\in \mathbb{N}$

Recursively defining set requires a "base case", and a recursive continuation

> You can almost imagine recursively defining sets as using [Induction](Induction.md) to define sets

> We can construct the "set of all non-empty binary trees" recursively  
> Recursive Definition:
> - A single node is a non-empty binary tree
> - If $T_{1},T_{2}$ are two non-empty binary trees, then the tree with a new root $r$ connected to the roots of $T_{1}$ and $T_{2}$ is a non-empty binary tree
> - If $T_{1}$ is a non-empty binary tree, then the tree with a new root $r$ connected to the root of $T_{1}$ to the left or to the right is a non-empty binary tree  
> *Note that this definition has two recursive rules, not one*

#### Structural Induction

[Structural Induction](Structural%20Induction) is a proving technique similar to [Induction](Induction.md) (Hence the name)

Structural Induction is the technique of using the [Recursive](Recursive) Definition of a set to prove a property for all elements of the set

> An example of using [Structural Induction](Structural%20Induction) to prove that every non-empty binary tree has one more node than edge  
> (Using the recursive definition of the set of all non-empty binary trees shown above)  
> ![349](attachments/Pasted%20image%2020240612153053.png)

### Program Correctness

> In order to prove program correctness, we need to define what our program being correct means

The [Precondition](Precondition) of a function is a property that an input to the function *must* satisfy in order to guarantee that the function will work correctly  
The [Postcondition](Postcondition) of a function is a property that *must* be satisfied after the function completes  
	What the "correct result" of the function entails

A function has [Program Correctness](Program%20Correctness) if:  
	For every input $I$ to $f$, if $I$ satisfies the preconditions, then $f(I)$ terminates, and all the postconditions hold after it terminates

> An example of the preconditions and the postcondition of a function  
> ![650](attachments/Pasted%20image%2020240612160719.png)  
> This code is correct, its **Statement of Correctness** is such:  
> 	For all $a,b\in \mathbb{Z}^{+}$ such that $a\geq b$, `gcd_rec(a,b)` terminates and returns `gcd(a,b)`

### Minimum Spanning Tree
>TODO: Take notes on this, and what prims algo is

#### Prim's Algorithm

An algo to find the minimum spanning tree


## Week 5
>[CSC236 Week 5 Slides Completed](attachments/CSC236%20Week%205%20Slides%20Completed.pdf)  
> Readings: Liu Chapter 4 (Iterative Programs, Termination)

> Most of this week is focused on reinforcing concepts from previous weeks, and exploring more problems using previous content

### Program Correctness (Iterative)
> Some further definitions of program correctness, for iterative programs running with loops  
> Remember:  
> 	[Precondition](Precondition)  
> 	[Postcondition](Postcondition)  
> 	[Program Correctness](Program%20Correctness)

The [Loop Invariant](Loop%20Invariant) is a condition that guarantees that during the execution of the algorithm, you are making progress towards the goal  
[Termination](Termination) Guarantees that the loop terminates

The Structure of a [Program Correctness](Program%20Correctness) proof would be
1. Find the appropriate post-condition (if not given)
2. If there are loops in your algorithm, give an appropriate [Loop Invariant](Loop%20Invariant) (LI) for the loop, and prove your loop invariant
3. Use your LI and the loop exit condition to prove partial correctness
4. Define an appropriate loop measure to prove termination of the loop
5. Running time analysis  
	This is not officially part of the proof. but may be useful to correctness, think about for termination

> Review examples, in week 5 slides
## Week 6
>[CSC236 Week 6 Slides Completed](attachments/CSC236%20Week%206%20Slides%20Completed.pdf)  
>_Readings: Liu Chapter 3, Chapter 4 (Correctness of Recursive Programs)._







