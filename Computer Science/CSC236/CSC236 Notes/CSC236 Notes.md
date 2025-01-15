#computer-science 
#uoft/csc236 
#notes 

Notes for [CSC236](../CSC236.md)
Textbook References
	[CSC236 Course Notes (Textbook) Liu](attachments/CSC236%20Course%20Notes%20(Textbook)%20Liu.pdf)
	[CSC236 Textbook Hadzilacos](attachments/CSC236%20Textbook%20Hadzilacos.pdf)
	[CSC236 Textbook Rosen](attachments/CSC236%20Textbook%20Rosen.pdf)

---

> Make sure to write down proof examples 

# Table of Contents

[#Week 1](#Week%201)
	[CSC236 Week 1 Slides](attachments/CSC236%20Week%201%20Slides.pdf)
	[#Course Overview](#Course%20Overview)
	[#Asymptotic Analysis](#Asymptotic%20Analysis)
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
[#Week 6](#Week%206)
	[#Recursion](#Recursion)


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

### [Asymptotic Analysis](Asymptotic%20Analysis)
> Asymptotic Analysis is our way of determining how, in the long term, which function is larger than the other
> This is important because it is representative of an algorithms running time, with a function which represents its running time given its inputs
> Asymptotic Analysis helps us compare running time of functions

Given two functions $f(n)=n^{2}$ and $g(n)=\frac{n^{3}}{10}$, there is a point $n^{0}$ where $f(n)>g(n)$, or vice versa for all $n>n^{0}$

If there exists a point $n^{0}$ where for all $n>n^{0}$, $f(n)>g(n)$, then we say that $g(n)$ is [Absolutely Dominated](Absolutely%20Dominated.md)


$f\in O(g)$ means that there is a point, where $f(n)\leq cg(n)$
$f\in \Omega(g)$ means that there is a point, where $f(n)\geq cg(n)$

### [Induction](Induction.md)

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
A [Set](../../../Mathematics/MAT223%20Notes/Set.md) is a collection of elements

A [Relation](Relation.md) between two [Set](../../../Mathematics/MAT223%20Notes/Set.md)s $A$ and $B$ is an *association* or [Relationship](Relationship.md) between elements of set $A$ and set $B$ 
More formally, a [Relation](Relation.md) is a subset of the product $A\times B$, $R\subset A\times B$
**Properties**
- Relations can be defined with any number of sets
- The number of sets involved in a relation is called the [Arity](Arity.md) of the relation

> If two sets have a relation, then that means their elements have an association with one another in some way
> The product $A\times B$ would result in a set where every element of $A$, would be with every element of $B$.
> (A set of every combination of elements in $A$ and $B$)
> 	This gives us every possible combination of one element from $A$ and one element of $B$
> 	The relation would be a subset of this set $A\times B$, and tell us which elements from $A$ have an association with which elements from $B$
> If we define $A=B$ as the set of integers, and the relation *Less Than* between $A$ and $B$ as the set of ordered pairs of integers $(a,b)$ such that $a<b$.
> 	The ordered pair $(-2,7)$ belongs to *Less Than*, but $(2,2)$ or $(5,3)$ do not belong

### Ordering
A [Set](../../../Mathematics/MAT223%20Notes/Set.md) can be [Ordered](Ordering.md) by a [Relation](Relation.md), defining relationships between elements of the set

> An example of the ordering is the *Less Than* example given above, all natural numbers are ordered by this relationship

>An [Ordering](Ordering.md) of a set can be visualized as a set of nodes, with arrows connected to one another
>	![Pasted image 20240517203833](attachments/Pasted%20image%2020240517203833.png)
>You could visualize the *Less Than* ordering as the larger numbers pointing towards the smaller numbers

[Total Ordering](Total%20Ordering.md) is when all elements have a relationship to all other elements

[Well Ordering](Well%20Ordering.md) is all nodes are connected to all other nodes, in a order
	Is a total ordering where very non-empty subset has a *least element*
	This least element is not directed to any other element

> The Less Than relation on the set of all real numbers is a [Well Ordering](Well%20Ordering.md)

>A Visual Example of Total Ordering and Well Ordering
>	![500](attachments/Pasted%20image%2020240517203945.png)![425](attachments/Pasted%20image%2020240517204035.png)
>Note in the well ordering example, how each node connects to every node, and only points downwards from where it starts

The [Well Ordering Theorem](Well%20Ordering%20Theorem.md) (also called Zermelo's theorem)
	Every [Non Empty](Non%20Empty.md) [Set](../../../Mathematics/MAT223%20Notes/Set.md) has a relation < (less than) on $S$ which is a [Well Ordering](Well%20Ordering.md)

> This states that the natural numbers are [Well Ordering](Well%20Ordering.md)
> Also mentioned in lectures is that combined with [Zorn's Lemma](Zorn's%20Lemma) results in the [Axiom of Choice](Axiom%20of%20Choice) (No idea what this means)

The [Well Ordering Principle](Well%20Ordering%20Principle.md) says every nonempty set $\mathbb{N}$ has a *smallest* element

> This principle can be proved using [Induction](Induction.md)
> Induction and Well Ordering have a close relationship, in that they are equivalent 
> 	Although so far we are only shown that induction implies well ordering, not the other way around yet
> 	(We can prove that the well ordering principle is true, with induction)
> I'm not sure that this all matters, just understand relations, and well ordering in relation to nodes

### Counting
A [Factorial](Factorial.md) $n!=n\cdot(n-1)...2\cdot 1$ 

A [Permutation](../../../Statistics/STA237%20Notes/Permutation.md) is the number of ways $n$ objects can be arranged, when order matters
	Without replacement, the formula for permutation is $n!$ (because $n$ ways to arrange first item, $n-1$ ways to arrange second...)
	With replacement, the formula for permutation is $n^{n}$ (because can pick out of $n$ for first item, $n$ for second item...)

A [Combination](../../../Statistics/STA237%20Notes/Combination.md) is the number of ways $n$ objects can be arranged to groups of $m$, when order does **not** matter
	Without replacement, the formula for combination is $_nC_{m}=\begin{pmatrix} n \\ m\end{pmatrix} = \frac{n!}{m!(n-m)!}$
	With replacement, the formula for combination is $\begin{pmatrix} m+n-1 \\ m\end{pmatrix}$

## Week 3
>[CSC236 Week 3 Slides Completed](attachments/CSC236%20Week%203%20Slides%20Completed.pdf)
>Readings: Rosen Chapter 6.2, 7.1. West Chapter 1.

> Discrete Probability -> Probability with countable numbers, no continuous numbers

### Probability
Stats Recap:
	[Random Variables](../../../Statistics/STA238%20Notes/Random%20Variable.md) represent an experiment, think of a random variable as a [Function](../../../Mathematics/MAT235%20Notes/Function.md) that takes in the sample space of the experiment (For example, the different ways you can roll a dice), and returns the outcome (If the dice lands on an even number)
	
	[Probability Distributions](../../../Statistics/STA238%20Notes/Probability%20Distribution.md), and [Probability Functions](../../../Statistics/STA237%20Notes/Probability%20Function.md) return a [Probability](../../../Statistics/STA237%20Notes/Probability.md) from 0-1 of the probability of any event occurring for a [Random Variable](../../../Statistics/STA238%20Notes/Random%20Variable.md)  
	
	[Expected Value](../../../Statistics/STA237%20Notes/Expected%20Value.md)
	[Variance](../../../Statistics/STA237%20Notes/Variance.md)

#### Pigeonhole Principle
The [Pigeonhole Principle](Pigeonhole%20Principle.md) (Also known as the **Dirichlet Drawer Principle**) states that:
	If $k+1$ or more objects are placed into $k$ boxes, then there is as least one box containing two or more of the objects

> This property is quite obvious. 
> 	Suppose a flock of 20 pigeons flies into a set of 19 pigeonholes to roost. Because there are 20 pigeons, but only 19 pigeonholes, at least one of these 19 pigeonholes must have at least two pigeons in it.
> Even though this principle is so obvious, it can still be useful in certain situations

> Usages of the **Pigeonhole Principle**
> 	- A function $f$ from a set with $k+1$ or more elements to a set with $k$ elements is not one-to-one
> 	- Among any group of 367 people, there must be at least two with the same birthday, because there are only 366 possible birthdays

This definition of the [Pigeonhole Principle](Pigeonhole%20Principle.md) only says that that there must be at least two objects in the same box, we can generalize the principle to work for more possibilities
**Generalized Pigeonhole Principle**: 
	If $N$ objects are placed into $k$ boxes, then there is at least one box containing at least $[\frac{N}{k}]$ objects

### Graph Theory
A [Graph](Graph.md) is a series of [Vertexes](Vertex.md) connected by [Edges](Edge.md)

A [Walk](Walk.md) is a list of vertexes and edges connecting vertexes together
	Each vertex in the walk is connected to the next by an edge
A [Trail](Trail.md) is a [Walk](Walk.md) where no edge is repeated
A [Path](Path.md) is a [Trail](Trail.md) with no repeated *internal* vertices
- A $u, v$-path is a [Path](Path.md) with endpoints $u$ and $v$
A [Cycle](Cycle.md) is a $u,u$-path
	A path that starts, and ends on the same [Vertex](Vertex.md)

The [Length](Length.md) of any of the concepts above, is the number of edges

> An example of each of the concepts
> 	![Pasted image 20240529155616](attachments/Pasted%20image%2020240529155616.png)

A [Graph](Graph.md) is:
- [Connected](Connected.md), if between every pair of [Vertices](Vertex.md), there exits a path
- A [Tree](Tree.md), if it is [Connected](Connected.md), but with no [Cycles](Cycle.md) 

The [Degree](Degree.md) of a [Vertex](Vertex.md) is the *number of neighbors* it has, or the amount of edges it has connecting it to other vertices
 - A [Leaf](Leaf.md) is a [Vertex](Vertex.md) with degree 1 in a tree

## Week 4
> [CSC236 Week 4 Slides Completed](attachments/CSC236%20Week%204%20Slides%20Completed.pdf)
> Readings: Liu Chapter 2: Structural induction, Chapter 4: What is Correctness. Vassos Hadzilacos Chapter 2: 1, 2, 3
> Topics:
> 	Definition of Trees 
> 	Recursion, how to recursively define sets and structural induction
> 	Program correctness, and how to analyze it

### Trees
> Some more definitions for trees

The [Root](Root.md) of a [Tree](Tree.md) is a node in a tree without a [Parent](Parent.md)
A [Binary Tree](Binary%20Tree.md) is a [Tree](Tree.md) where every node has $\leq$ 2 [Children](Children.md)
The [Height](Height.md) of any node is the length of the longest path from the node *down* to a [Leaf](Leaf.md)  node
The [Depth](Depth.md) of a node is the length of the path to the [Root](Root.md)

> Example
> 	![500](attachments/Pasted%20image%2020240618184536.png)

### Recursion
You can use [Recursion](Recursion.md) to [Recursively Define Sets](Recursively%20Defined%20Set.md)

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

[Structural Induction](Structural%20Induction.md) is a proving technique similar to [Induction](Induction.md) (Hence the name)

Structural Induction is the technique of using the [Recursive Definition of a Set](Recursively%20Defined%20Set.md) to prove a property for all elements of the set
1. Prove that the base case of the recursive definition follows the property
2. **Inductive Hypothesis**, show that given the base case being true, recursively defined elements also maintain the property

> An example of using [Structural Induction](Structural%20Induction.md) to prove that every non-empty binary tree has one more node than edge
> (Using the recursive definition of the set of all non-empty binary trees shown above)
> ![349](attachments/Pasted%20image%2020240612153053.png)

### Program Correctness

> In order to prove program correctness, we need to define what our program being correct means

The [Precondition](Precondition.md) of a function is a property that an input to the function *must* satisfy in order to guarantee that the function will work correctly
The [Postcondition](Postcondition.md) of a function is a property that *must* be satisfied after the function completes
	What the "correct result" of the function entails

A function has [Program Correctness](Program%20Correctness.md) if:
	For every input $I$ to $f$, if $I$ satisfies the preconditions, then $f(I)$ terminates, and all the postconditions hold after it terminates

> An example of the preconditions and the postcondition of a function
> ![650](attachments/Pasted%20image%2020240612160719.png)
> This code is correct, its **Statement of Correctness** is such:
> 	For all $a,b\in \mathbb{Z}^{+}$ such that $a\geq b$, `gcd_rec(a,b)` terminates and returns `gcd(a,b)`

How to analyze [Program Correctness](Program%20Correctness.md) for recursive programs
For each program path from the first line to a *return* statement, show that it terminates, and postconditions are satisfied 
- If path contains no recursive calls or loops, analyze code line by line until return statement
- For each recursive call, argue why preconditions are satisfied at time of recursion, then assume postconditions are satisfied when recursive call terminates
	Also show that the recursive call is on a *smaller instance*, so program does not recursively call forever
- Argue from last recursive call to end of the function why the postconditions *of the original function call* will hold
- For loops, use a "loop invariant"

> Example of analyzing program correctness
> Check [Hadzilacos](attachments/CSC236%20Textbook%20Hadzilacos.pdf) page 50 for an example of a program correctness proof
> Proving that the `gcd_rec(a,b)` above is correct
> 	- Path 1: the program terminates at line 7. If the program goes into this block, then a = 1 or b = 1. But in these cases, gcd(a, b) = 1, because gcd(x, 1) = 1 for all x. Then the postcondition holds, since at line 7 the program returns 1. 
> 	- Path 2: the program terminates at line 9. If the program goes into this block, b divides a. Since b is the greatest possible divisor of itself, this means that gcd(a, b) = b, and b is returned at line 9.
> 	- Path 3: the program terminates at line 11. We need to check that the recursive call satisfies its preconditions and is called on a smaller instance. Note that b and (a mod b) are both at least 1, and (a mod b) < b, so the preconditions are satisfied. Since a + b > (a mod b) + b, the sum of the inputs decreases, and so the recursive call is made on a smaller instance. If you recall the example of using complete induction on ordered pairs, taking the sum of the two components was the size measure we used there, too. 
> 	Therefore when the call completes, it returns gcd(b, a mod b). Now we use the identity that gcd(a, b) = gcd(b,a mod b) to conclude that the original call returns the correct answer

### Minimum Spanning Tree

A [Weighted Graph](Weighted%20Graph) is a [Graph](Graph.md) where the edges can have a **Weight**, set by a weight function with $w:E\rightarrow \mathbb{R}$
A [Spanning Tree](Spanning%20Tree) of a [Graph](Graph.md) is a [Tree](Tree.md) where each vertex is in the tree, and the edges are a subset of the edges in the graph
	Or formally, a subgraph $T=(V', E')$ where $V' \subset V, V\subset V'$ and $E'\subset E$ which is a tree
A [Minimum Spanning Tree](Minimum%20Spanning%20Tree) (MST) is a spanning tree $T$ with the minimum weight

> An example of a [Weighted Graph](Weighted%20Graph) with its [Minimum Spanning Tree](Minimum%20Spanning%20Tree)
> 	![Pasted image 20240706165022](attachments/Pasted%20image%2020240706165022.png)

#### Prim's Algorithm

An algo to find the minimum spanning tree

## Week 5
>[CSC236 Week 5 Slides Completed](attachments/CSC236%20Week%205%20Slides%20Completed.pdf)
> Readings: Liu Chapter 4 (Iterative Programs, Termination)
> 	[CSC236 Course Notes (Textbook) Liu](attachments/CSC236%20Course%20Notes%20(Textbook)%20Liu.pdf)

> Most of this week is focused on reinforcing concepts from previous weeks, and exploring more problems using previous content

### Program Correctness (Iterative)
> Some further definitions of program correctness, for iterative programs running with loops
> Remember:
> 	[Precondition](Precondition.md)
> 	[Postcondition](Postcondition.md)
> 	[Program Correctness](Program%20Correctness.md)

#### Loop Invariants
The [Loop Invariant](Loop%20Invariant.md) is a condition that guarantees that during the execution of the algorithm, you are making progress towards the goal
	The loop invariant is a [Predicate](Predicate.md) that is true every time the loop-condition is checked (including the check that terminates the loop)
	Usually, the predicate depends on which iteration the loop is on

>Basically, when proving a program with a loop, we treat the entire loop as a single unit, and give a correctness argument for it seperately, and loop invariants are the way of defining if a loop is "correct"

> The loop invariant of a function like this:
> 	![Pasted image 20240616180319](attachments/Pasted%20image%2020240616180319.png)
> Could be $Inv(i,\text{sum}):0\leq i \leq len(A) \land\text{sum}=\sum\limits_{k=0}^{i-1}A[k]$
> 	The first part is important, defines the loop *termination*/bounds, and then second part defines the value of sum at each point in the loop
> Defining the current state of sum at every point in the loop

A [Loop Invariant](Loop%20Invariant.md) is *correct* if it is always true at the beginning of every loop iteration
	This includes the loop check that fails, and causes the loop to terminate

Proving Loop Invariants are correct.
1. Argue that the loop invariant is satisfied when the loop is reached 
	Preconditions satisfy loop invariant
	Sort of like the first step (base case) of induction
2. Show for any iteration of the loop which satisfies the loop invariant, after another iteration, the loop invariant still holds
	Induction step + Inductive Hypothesis
3. Prove if invariant holds, the postcondition will be satisfied

> This is very similar to an inductive proof

> Review examples in textbook

#### Termination
[Termination](Termination.md) describes how and when a loop will end
	Most of the time, we don't want our looping or recursive function to continue forever, we want to prove that it terminates

A [Loop Variant](Loop%20Variant.md) $v$ is an concept with two properties
- $v$ decreases with each iteration of the loop
- $v$ is always a natural number at the beginning of each loop iteration

If such a $v$ exists, then at some point $v$ won't be able to decrease any further, and the loop can't have any more iterations

> See an example on page 52 of [CSC236 Course Notes (Textbook) Liu](attachments/CSC236%20Course%20Notes%20(Textbook)%20Liu.pdf)

#### Program Correctness Proofs
The Structure of a [Program Correctness](Program%20Correctness.md) proof would be
1. Find the appropriate post-condition (if not given)
2. If there are loops in your algorithm, give an appropriate [Loop Invariant](Loop%20Invariant.md) (LI) for the loop, and prove your loop invariant
3. Use your LI and the loop exit condition to prove partial correctness
4. Define an appropriate loop measure to prove termination of the loop
5. Running time analysis
	This is not officially part of the proof. but may be useful to correctness, think about for termination

> Review examples, in week 5 slides

## Week 6
>[CSC236 Week 6 Slides Completed](attachments/CSC236%20Week%206%20Slides%20Completed.pdf)
>_Readings: Liu Chapter 3, Chapter 4 (Correctness of Recursive Programs)._
>	[CSC236 Course Notes (Textbook) Liu](attachments/CSC236%20Course%20Notes%20(Textbook)%20Liu.pdf)

### Recursion

[Recursive](Recursive) Algorithms are ones which call itself during runtime
[Recursion Depth](Recursion%20Depth) is the number of times a recursive function will call itself

A [Recursive](Recursive) [Function](../../../Mathematics/MAT235%20Notes/Function.md) is one defined with itself

> An example of a *recursively defined function*
> 	$f(n)=\begin{cases} 0, & \text{if } n=0 \\ f(n-1)+2n-1, & \text{if } n\geq 1 \end{cases}$

> Recursive functions are opposite to a [Closed Form](Closed%20Form) expression of the same function, which is one which doesn't depend on recursion
> 	When we have [Recursive](Recursive) Functions, we sometimes want to find the Closed Form Expression of that function

To find the [Closed Form](Closed%20Form) Expression of a [Recursive](Recursive) function, basically *guess* the closed form expression
	Use a "brute force" approach known as *repeated substitution*
	Basically expand out the recursive definition for a variable $n$ until you find a pattern

>*Repeated Substitution*
>	Repeated substitution on the recursively defined function above could be 
>	$\begin{aligned} f(n)&=2f(n-2)\\ &=4f(n-4)\\ \vdots \\ &= 2^{k}f(n-2k)\end{aligned}$

> The closed form expression of the recursively defined function above is: 
> 	$f(n)= \begin{cases} 0,  & \text{if } n \text{ is odd} \\ 2^{\frac{n}{2}}, & \text{if } n \text{ is even} \end{cases}$

## Week 7
> Readings: Liu Chapter 3 (remaining subsections), CLRS Chapter 4.3~4.5