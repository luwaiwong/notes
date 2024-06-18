#mathematics #uoft/mat235 

**Partial Derivative** of a [Function](Function.md) of several variables is its [Derivative](Derivative.md) with respect to one of those variables, with the others held constant

---
# Formal Definition & Notation
For all points at which the limits exist, we define the **partial derivatives** at the point (a, b) (ROC) stands for *Rate of Change* $$f_x(a,b)=\text{ROC of f with respect to x at the point (a,b)}=\lim_{h\rightarrow0}\frac{f(a+h,b)-f(a,b)}{h}$$$$f_y(a,b)=\text{ROC of f with respect to y at the point (a,b)}=\lim_{h\rightarrow0}\frac{f(a,b+h)-f(a,b)}{h}$$
## Alternative Notation
If $z=f(x,y)$, $$\begin{aligned} f_x(x,y)=\frac{\partial z}{\partial x} \text{ and }f_y(x,y)=\frac{\partial z}{\partial y}\\ f_x(a,b)=\frac{\partial z}{\partial x}|_{(a,b)} \text{ and } f_y(a,b)=\frac{\partial z}{\partial y}|_{(a,b)}\end{aligned}$$  
	The variable in the subscript indicates the variable of interest, and any other variable in the problem is temporarily considered **constant**

# Properties
- The *signs* of the partial derivatives indicate increase or decrease of the function in the x or y direction
- The *units* of a partial derivative are the units of the output divided by the units of the direction variable. 
	- If $z=f(x,y)$, the units of $f_z=\frac{\Delta z}{\Delta x}$ are $\frac{\text{Units of z}}{\text{Units of x}}$ 
- If a function $f$ is [Continuous](Continuous.md) with all higher-order partial derivatives, then we say that $f$ if [Smooth](Smooth) at $(a,b)$

# Computations
^1b9c97

To calculate  $f_x(x,y)$ or **the partial derivative with respect to x**, think of y as a constant, and differentiate with respect to $x$ normally

To calculate $f_{y}(x,y)$, or **the partial derivative with respect to y**, think of $x$ as a constant, and differentiate with respect to $y$ normally

> Computation Example  
![Pasted image 20231101122426](Pasted%20image%2020231101122426.png)

>Graph Example  
>![Pasted image 20231011101848](Pasted%20image%2020231011101848.png)

---
# Second-Order Partial Derivatives

^8b3bce

Related  
	[Taylor Approximations](Taylor%20Approximations.md)

The **Second-Order Partial Derivatives** are the derivatives of the partial derivatives of a function $f$  
A two-variable function has *two* **first-order partial derivatives**, and *four* **second-order partial derivatives**

## Notation
The **Second-Order Partial Derivatives** of a function $z=f(x,y)$ are: $$f_{xx}=(f_{x})_{x'} = \frac{\partial^{2}z}{\partial x^{2}} \ \text{ and } \ f_{xy}=(f_{x})_{y'} = \frac{\partial^2z}{\partial y\partial x} $$  
and  
$$f_{yy}=(f_{y})_{y'} = \frac{\partial^{2}z}{\partial y^{2}} \ \text{ and } \ f_{yx}=(f_{y})_{x'} = \frac{\partial^2z}{\partial x\partial y} $$

## Mixed Partial Derivatives
Some values for **second-order partial derivatives** are often the same

if $f_{xy}$ and $f_{yx}$ are continuous at $(a,b)$, an interior point of their domain, then $$f_{xy}(a,b)=f_{yx}(a,b)$$

---
