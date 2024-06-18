#mathematics  
#uoft/mat235 

The **Integral** is the opposite of the [Derivative](Derivative.md)

> Simplified definition I know, This entire note is pretty low-effort

--- 
## Iterated Integrals
An **Iterated Integral** is an **Integral** in the typical form.  
For a [Function of One Variable](Function%20of%20One%20Variable.md) $f$, $$\int_{a}^{b}f(x)dx$$
## Double Integrals
If $R$ is the rectangle $a \leq x \leq b, c \leq y \leq d$ , and $f$ is a continuous [Function of Two Variables](Function%20of%20Two%20Variables.md) on $R$, then the integral of $f$ over $R$ exists and is equal to the **iterated integral** $$\int_{R}fdA=\int_{y=c}^{y=d}(\int_{x=a}^{x=b}f(x,y)dx)dy$$
>In this example, x is integrated first before y (x is the inside integral)  
This does not have to always be the case, and the y integral can be inside of x instead  
	For most integrals, the order of integration can be switched, giving the same result

### Calculation
When calculating the iterated integral, calculate the inside integral with respect to its variable (holding the other constant), then integrate the result of that with the outer integral

### Double Integrals Over Non-Rectangular Regions
The description above covers a double integral over a *Rectangular Region*  
For non-rectangular area, we can set the inside to a variable of the outer integral to define shapes  
**Properties**
- The limits on the outer integral must be constants
- The limits on the inner integral can involve only the variable in the outer integral  
	For example, if the outer integral is with respect to $x$, the inner integral can be functions of $x$ 

> For integrals with variables involved, the order of integration cannot just be switched.  
> See below for an example of reversing the order of integration over a non-rectangular region
#### Examples
> Example of a Iterated Integral over a non-rectangular area  
> ![450](Pasted%20image%2020240205164354.png)![475](Pasted%20image%2020240205164407.png)  
> Note: This example bounds only the top limit

>  Example of an Iterated Integral Bounding the Top and Bottom  
> ![375](Pasted%20image%2020240205164614.png)

#### Reversing the Order of Integration
![Pasted image 20240412172956](Pasted%20image%2020240412172956.png)
## Triple Integrals
[Functions of Three Variables](Function%20of%20Three%20Variables) can be **integrated** much the same as functions of two variables  
For a box $W$ with the shape:  
	![Pasted image 20240205175730](Pasted%20image%2020240205175730.png)

A **Triple Integral** as an iterated integral can be set up as: $$\int_{W}f dV = \int_{p}^{q}(\int_{c}^{d}(\int_{a}^{b}f(x,y,z)dx)dy)dz$$ Where $y$ and $z$ are constants in the center integral, and $z$ is a constant in the middle integral

### Properties
**Limits on Triple Integrals**
- The limits for the outer integral are constants
- The limits for the middle integral can involve only one variable (that in the outer integral)
- The limits for the inner integral can 