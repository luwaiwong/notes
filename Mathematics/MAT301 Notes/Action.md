#mathematics  
#uoft/mat301 

An **Action** of a [Group](Group.md) $G$ on a [Set](../MAT223%20Notes/Set.md) $X$ is a [Function](../MAT235%20Notes/Function.md) $G\times X\rightarrow X$ 

---

## Definition
An **Left Action** of a [Group](Group.md) $G$ on a [Set](../MAT223%20Notes/Set.md) $X$ is a [Function](../MAT235%20Notes/Function.md) $G\times X\rightarrow X$ 

An action must satisfy
- Identity: $e \ .x =x$ for all $x$
- Compatibility: $g \ .(h \ . x)=gh \ . x$

Given any action of $G$ on $X$ we can define a [Homomorphism](Homomorphism.md) $\phi:G\to Sym(X)$ as $\phi(g)=x\to g \ .x$  
	Informally, $\phi(g)=g \ .-$ for all $g\in G$

> "a function $G\times X\rightarrow X$"  
> 	Or a function which takes an element from $G$ and an element from $X$, to an element of $X$  
> How an element $g\in G$ acts on an element $x\in X$ depends solely on how the action is defined  
> An example of a simple action, is $g \ . x =x$  
> Every group acts on itself by its [Binary Operation](Binary%20Operation.md):  
> 	Say $g,x\in G$, $g \ .x=gx$

### Notation
Denoted $G\curvearrowright X$ to mean"$G$ *acts* on $X$",  
	$\curvearrowright$ is `\curvearrowright`

Also denoted $g \ .x$ for an element of $G$ acting on an element $x$
### Actions
#### Self Action
Every [Group](Group.md) acts on itself by its *[Group Operation](Composition%20Law.md)*  
	There is only one [Orbit](Orbit.md) (way that every element is related to every other), because for any two group elements, we can take $g=yx^{-1}$ and get $g.x=y$

#### Conjugation
Every group $G$ acts on itself by *conjunction*  
[Conjugation](Conjugation.md) is the action  
$$g.x=gxg^{-1}$$  
Properties
- The orbits of this action are called *Conjugacy Classes*
- The [Number](Index.md) of these classes is called the *class number* of $G$
	- Denoted $k(G)$

#### Pullback Action
[Pullback Action](Pullback%20Action.md)  
	Let $f:H\rightarrow G$ be a [Homomorphism](Homomorphism.md). Then $H$ acts on $X$ by $h \ .x=f(h) \ . x$ for all $x\in X$ and $h\in H$

#### Powerset Action
[Powerset Action](Powerset%20Action.md)  
	Let $P(X)$ denote the [Power Set](Power%20Set.md) of $X$ (Collection of all subsets of $X$)  
	Then $G$ acts on $P(X)$ by $g \ . A=\{g \ .x=x\in A\}$  
$G$ [Acts](.md) on the set $S(G)$ of its own subgroups by [Conjugation](Conjugation.md), then action $g. H=gHg^{-1}$

### Properties
An action $G\curvearrowright X$ is called
- [Faithful](Faithful.md) if no nontrivial element acts trivially, if $g \ .x=x$ for all $x$, then $g=e$
- [Free](Free.md) (Fixed-Point) If every stabilizer is trivial, if $g \ .x=x$ then $g=e$
- [Transitive](../../Computer%20Science/CSC236/CSC236%20Notes/Transitive.md) if there is only one orbit, for any $x,y$ there is some $g$ such that $g \ .x=y$  
We say $G$ acts on $X$ *faithfully / freely / transitively* in these cases respectively

#### Properties of these Properties
- every free action is faithful
- "freeness" and "transitivity" can be seen as opposing forces
- An action which is both free and transitive is called *regular*
- Let $G\curvearrowright X$ with the permutation representation $\phi : G\rightarrow  S_{X}$. $\phi$ is injective iff the action is faithful

## Orbits & Stabilizers
#### Orbits
An [Equivalence Relation](Equivalence%20Relation.md) can be defined with **Actions**, [Equivalence Classes](Equivalence%20Class.md) from this relation is called an [Orbit](Orbit.md)  
An relation defined with an action would be:  
	$x\sim y$ if and only if $g\ .x=y$ for some $g$ in $G$ , and

#### Stabilizers
The **Stabilizer** of an element $x$, under an **Action** under a [Group](Group.md) is the set of elements in $G$ that [Fix](Fix) $x$  
$$Stab_{G}(x)=G_{x}=\{g\in G:g \ .x=x\}$$

A Stabilizer (in $G$) of a *subset* $S\in G$ is defined in two ways  
The *Pointwise Stabilizer* of $S$ is:  
$$\{g\in G:g\ .x=x \text{ for all $x$ in $S$}\}=\bigcap\limits_{x\in S}G_{x}$$  
And the *Setwise Stabilizer* of $S$ (On the [Powerset Action](Powerset%20Action.md)) is:  
$$\{g\in G:g\ . S=S\}=G_{S}$$

#### Orbit Stabilizer Theorem
[Orbit Stabilizer Theorem](Orbit%20Stabilizer%20Theorem.md) states that if $G\curvearrowright X$ and $x\in X$  
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

 Example of Orbits & Stabilizers:
> 	![Stabilizer Puzzle Piece Example Image](Stabilizer%20Puzzle%20Piece%20Example%20Image.png)  
> 	o(stabilizer) represents all the ways the piece can be rotated, so that it still looks identical

