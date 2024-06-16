#uoft/eco200 #economics 

**Utility Optimization** is done to determine the most optimal amount of goods a consumer should purchase. It can be done using the [Utility Function](Utility%20Function.md) of a [Consumer](Consumer)

This type of problem is called a *constrained optimization problem* 

> Similar:  
> 	[Expenditure Minimization](Expenditure%20Minimization.md)


---
>[!Example]+  
>Utility Maximizing Bundle Given a Budget Constraint  
>	![Pasted image 20231011002827](attachments/Pasted%20image%2020231011002827.png)

# Calculation Methods
^e62080

How to calculate **Utility Optimization**
## Method 1
Given Utility Function $U=U(B,F)$  
And prices $P_{B}$ and $P_{F}$
1. Find the ratio between the goods  
	Since we know that $$MRS_{BF}=\frac{MU_{B}}{MU_{F}}=\frac{P_{B}}{P_{F}}$$  
	We can plug in values for [Marginal Utility](Marginal%20Utility.md) and the prices, and isolate for a variable to find their ratio
> [!Example]+  
> Given a Utility Function $U=\sqrt{BF}=B^{0.5}F^{0.5}$ and prices$P_{B}=5$ and $P_{F}=2$, we can calculate the ratio as  
> ![Pasted image 20231107190734](attachments/Pasted%20image%2020231107190734.png)
1. Substitute the ratio into the [Budget Constraint](Budget%20Constraint.md) to find the quantity between the goods  
	According to the definition of the [Budget Constraint](Budget%20Constraint.md), $$Income=P_{F}F+P_{B}B$$We can rearrange this formula to isolate for one of the the quantities as such: $$B=\frac{Income}{P_{B}}-\frac{P_{F}}{P_{B}}F$$Substituting our values into the equation, we get that$$B=\frac{20}{5}-\frac{2}{5}F$$  
	From Step 1, we know that $F=2.5B$, substituting that value into $F$, we can get that $B=2$.  
	We can now find too that $F=5$  
	Thus our utility maximizing bundle is $B=2$ and $F=5$

> [!Example]-  
> Full Textbook Example  
![Pasted image 20231011003800](attachments/Pasted%20image%2020231011003800.png)![Pasted image 20231011003817](attachments/Pasted%20image%2020231011003817.png)  
In this example we find the [Marginal Rate of Substitution](Marginal%20Rate%20of%20Substitution.md), giving us the ratio of fries to bugers where Antonio maximizes his [Utility](Utility.md)
	
>Even if two consumers have very different preferences between two goods, they will have the *same* ratio of marginal utilities for the two goods in equilibrium when they are at their utility maximization

Utility maximization implies that the MRS for each of them will equal the ratio of the prices, and that ratio is the same for both of them

## Method 1.5
If the [Utility Function](Utility%20Function.md) follows the [Cobb-Douglas Production Function](../../Math/MAT235%20Notes/Cobb-Douglas%20Production%20Function.md), such that 

$$U(X,Y)=X^{\alpha}Y^{1-\alpha}, \text{ where } 0 < \alpha<1$$  
And [Income/Budget Constraint](Budget%20Constraint.md) is $$I=P_X X+P_{Y}Y$$  
Then, solving the equation the same way as in **Method 1**, the resulting optimal bundle can be found as $$(\frac{\alpha I}{P_{X}},\frac{(1-\alpha)I}{P_{Y}})$$
## Method 2
^3c9057

This approach uses something known as the Lagrange Multiplier, or $\lambda$ 
> [!quote]+
> ### Textbook Explanation of the [Lagrangian Method](Lagrangian%20Method.md)
> "The Lagrangian is a technique for transforming a constrained optimization problem into an unconstrained problem by combining the objective and the constraint into one equation. $\lambda$ is a variable that multiplies the constraint"
> 
> Suppose the objective function is $f(x,y)$ and the constraint is $g(x,y)=0$.  
> The **Lagrangian Equation** is $$L(x,y,\lambda)=f(x,y)+\lambda(g(x,y))$$  
> We can then use the partial derivatives of this equation to solve for the system of equations

Using this method, we write our problem as such  
	Our objective, is:$$\max_{X,Y}U(X,Y)=X^{\alpha}Y^{1-\alpha}$$ And we want to find it, such that $$I-(P_{X}X+P_{Y}Y)=0$$
1. We rewrite this into **Lagrangian Form** as: $$\max_{X,Y,\lambda}L(X,Y,\lambda)=X^{\alpha}Y^{1-\alpha}+\lambda (I-P_{X}X-P_{Y}Y)$$
2. We then find the "first-order conditions"(The [Partial Derivative](../../Math/MAT235%20Notes/Partial%20Derivative.md) of each variable)  
	$$\frac{\partial L}{\partial X}=\alpha X^{\alpha-1}Y^{1-\alpha}-\lambda P_{X}=0$$$$\frac{\partial L}{\partial Y}=(1-\alpha) X^{\alpha}Y^{-\alpha}-\lambda P_{Y}=0$$$$\frac{\partial L}{\partial \lambda}=I-P_{X}X-P_{Y}Y=0$$
3. Then, we can first isolate $\lambda$  
	$$\lambda=\frac{\alpha X^{\alpha-1}Y^{1-\alpha}}{P_{X}}= \frac{(1-\alpha) X^{\alpha}Y^{-\alpha}}{P_{Y}}$$This $\lambda$ value can be interpreted as the *exchange rate between utility and income*
	>**Exchange Rate Between Utility and Income**  
	>What does this mean?
	>
	>An additional dollar of income, allows the consumer to purchase goods that generate $\lambda$ more units of utility.
	>
	>Thus, if income increases by $1, maximum utility increases by $\lambda$ units. In other words, $\lambda$ measure the marginal utility of income.
	
4. Like in method 1/1.5 we can rearrange the two formulas to find the amount of the two goods we want  
	![Pasted image 20231108151137](attachments/Pasted%20image%2020231108151137.png)  
	Plugging this value into the last derivative solved in part 2, we isolate $X$ and $Y$  
	![Pasted image 20231108151319](attachments/Pasted%20image%2020231108151319.png)
5. Simply plug in the values, and you will have the quantity of $X$ and $Y$

# Corner and Interior Solutions
A utility-maximizing bundle located at the "corner" of the budget constraint where the consumer purchases only one of two goods is called a **corner solution** . A utility-maximizing bundle that contains positive quantities of both goods is called an  **interior solution**.  
**Corner Solution Example**: ![Pasted image 20231011004839](attachments/Pasted%20image%2020231011004839.png)

> Remember: $U_1$ is lower than $U_2$, thus it has lower utility

