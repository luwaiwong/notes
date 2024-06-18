#mathematics/linear-algebra  
#uoft/mat224 

A set $S$ has a **Linear Dependence** if for the vectors of $S$:  
	$a_{1}x_{1}+...a_{n}x_{n}=0$ , where $a_i \in \mathbb{R}$ are not all zero

A **Linear Dependence** in a set, means that one or more of the [Vectors](Vector.md), can be made up by [Linear Combination](Linear%20Combination.md) of the other vectors

---
# Properties
- Any set containing $\vec 0$ is **Linearly Dependent**
- A superset of a **Linearly Dependent Set** is also linearly dependent
# Concept

Let $S$ be *subset* of a *vector space* $V$

Think of $Span(S)$. If the [Span](Span.md) of a subset of $S$ results in the same value as $Span(S)$, then that means that there are unused vectors in $S$, the vectors in $S$ are not being used in the most "economical" way, and there is a set with less elements than $S$ which can be used to convey the same information

If this trait is true, then there exists a set of scalars, which can result in $a_{1}x_{1}+...a_{n}x_{n}=0$ , where $a_i \in \mathbb{R}$ are not all zero

# Calculations
**Determining Whether a set of Vectors is Linearly Dependent**  
Given a set of vectors $S=\{x,y,z\}$, we want to see if there are any scalars such that  
$a_{1}(x)+a_{2}(y)+a_{3}(z)=0$  
This would give us a system of linear equations such as  
$$ \begin{aligned} a_{1}x_{1}+a_{2}y_{1}+a_{3}z_{1}&=0\\ a_{1}x_{2}+a_{2}y_{2}+a_{3}z_{2}&=0\\a_{1}x_{3}+a_{2}y_{3}+a_{3}z_{3}&=0\end{aligned}$$  
Solve this system of linear equations, if there is a solution, then the vectors are linearly dependent