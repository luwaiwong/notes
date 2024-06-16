#economics #uoft/eco200 

**Expenditure Minimization** is done to find the cheapest method/[Consumption Bundle](Consumption%20Bundle.md), given a level of [Utility](Utility.md)

> Similar:  
> 	[Utility Optimization](Utility%20Optimization.md)


---

# Calculation

Expenditure minimization can be done using the [Lagrangian Method](Lagrangian%20Method.md)
> [!quote]+
> ### Textbook Explanation of the [Lagrangian Method](Lagrangian%20Method.md)
> "The Lagrangian is a technique for transforming a constrained optimization problem into an unconstrained problem by combining the objective and the constraint into one equation. $\lambda$ is a variable that multiplies the constraint"
> 
> Suppose the objective function is $f(x,y)$ and the constraint is $g(x,y)=0$.  
> The **Lagrangian Equation** is $$L(x,y,\lambda)=f(x,y)+\lambda(g(x,y))$$  
> We can then use the partial derivatives of this equation to solve for the system of equations

Given a Utility $\overline{U}$, We want to find the bundle of goods which achieves this utility at the lowest cost.  
Our objective in **Expenditure Minimization** is: $$\min_{X,Y}I=P_{X}X+P_{Y}Y$$  
Constrained, such that: $$ \overline{U}=U(X,Y)$$

To solve for this, we can use the [Lagrangian Method](Lagrangian%20Method.md) and rewrite the equation as: $$\min_{X,Y,\lambda}L(X,Y,\lambda)=P_{X}X+P_{Y}Y+\lambda(\overline{U}-U(X,Y))$$  
Then, we can find the [Partial Derivative](../../Math/MAT235%20Notes/Partial%20Derivative.md) of all variables involved, and solve for the system of equations.