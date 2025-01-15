#uoft/csc165

Notes for [CSC165](../CSC165.md)


---
# Table of Contents

### Notes
[CSC165 Cheat Sheet](CSC165%20Cheat%20Sheet.md)
[CSC165 Worksheets](CSC165%20Worksheets.md)

### Course Materials
[CSC165 Past Course Notes](attachments/CSC165%20Past%20Course%20Notes.pdf)
[CSC165 Numeric Types](attachments/CSC165%20Numeric%20Types.pdf)

### Weeks
[#Week 1](#Week%201)
[#Week 2](#Week%202)

---
# Notes
## Week 1
> Worksheets
> 	[CSC165 WS01Mon](attachments/CSC165%20WS01Mon.pdf)
> 	[CSC165 WS01Wed](attachments/CSC165%20WS01Wed.pdf)
> Worksheet Solutions
> 	[CSC165 WS01Mon-solution](attachments/CSC165%20WS01Mon-solution.pdf)
> 	[CSC165 WS01Wed-solution](attachments/CSC165%20WS01Wed-solution.pdf)


Course Notation
- In this course, natural numbers include zero, $\mathbb{N}=\{ 0,1,2,3,\dots \}$
- A matrix of $n\times n$ size $a=\begin{pmatrix}a_{0,0} & \dots & a_{0,n-1} \\ \vdots & \ddots & \vdots \\ a_{n-1,0} & \dots & a_{n-1,n-1} \end{pmatrix}$, is represented by $a_{i,j}$, where $i$ is the row, and $j$ is the column

### Mathematical Expression
- Summation & Product Notation:
	- $\sum_{i=s}^{c}t_{i} =t_{s}+t_{s+1}+\dots+t_{c}$
		- $s$ is defined to be 0 by convention
	- $\prod_{i=s}^{c}t_{i}=t_{s}\cdot t_{s+1}\cdot \ ...  \cdot t_{c}$
	- The full versions on the right are called the *expansions* of the notation
- Set Operators & Set Builder Notation
	- $\{ \text{Variable Type}: \text{Variable Condition} \}$: Set Builder Notation 
	- $A \backslash B$: Set Difference:
		- $A \backslash B=\{ a\in A:a\neq B \}$
- Operators:
	- $\land$: And (also called conjunction)
	- $\lor$: Inclusive or (also called disjunction), 
- Predicate Notation (also called quantification):
	- $\forall$: "For All"
		- $\forall v\in \{x_{0},x_{1},x_{2},\dots  \}, c_{v}=c_{x_{0}}\land c_{x_{1}}\land c_{x_{2}}\land\dots$
		- Statements with $\forall$ can be called *universals*
	- $\exists$: "Exists"
		- $\exists v\in \{ x_{0},x_{1},x_{2},\dots \}, e_{v}=e_{x_{0}}\lor e_{x_{1}}\lor e_{x_{2}}\lor\dots$

> Examples of set builder notation
> 	Set of all numbers less than 165 $\{ z\in \mathbb{Z}, z<165 \}$

A [Predicate](../../CSC236/CSC236%20Notes/Predicate.md) is a function which produces booleans
	For example, $\forall v\in \{x_{0},x_{1},x_{2},\dots  \}, c_{v}$ produces either true or false, depending on the value of the set $\{ x_{0},x_{1},x_{2},\dots \}$ and the value of $c_{v}$


### Solving problems
Notation
- The *parameters* of a problem/definitions are variables in the problem/definition, which must be set for an equation to make sense, and whose values may need to satisfy *preconditions*
- When we *instantiate* a problem with a value, we set a parameter in the problem, to see the result

When solving problems where we want to determine when something is true
- Gather *necessary conditions*
	- Restrictions that *must* be true for original condition to be true
	- Helps us find *conjunctions*
- Gather *sufficient conditions*
	- A case for which the original condition is true
	- Helps us find *disjunctions*

We can divide problems with predicate notation into parts to help better understand it
- Quantification Type
	- Whether the question is using $\forall$ or $\exists$
- Quantified Variable
	- The variable which is being quantified
- Domain
	- The set which is being quantified
- Body
	- The result of the quantification

> Example of Quantification
> 	Take $\forall v\in \{x_{0},x_{1},x_{2},\dots\}, e_{v}$
> 	Quantification type is $\forall$
> 	The quantified variable is $v$
> 	The domain is $\{ x_{0},x_{1},x_{2},\dots \}$
> 	The body is $e_{v}$

Proof Techniques
- To disprove a $\forall$ (universal) statement, we can try to find a counterexample
	- If a counterexample is found, then a universal statement can be proven false
	- Examples where a universal statement holds, are witnesses, and where the statement does not hold, are counterexamples
## Week 2
> Worksheets
> 	[CSC165 WS02Mon](attachments/CSC165%20WS02Mon.pdf)
> Worksheet Solutions
> 	[CSC165 WS02Mon-solution](attachments/CSC165%20WS02Mon-solution.pdf)