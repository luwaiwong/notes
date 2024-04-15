#mathematics #uoft/mat235 
## Definition
The **Derivative** of a [Function](Function.md) describes its rate of change with respect to the input.

## Derivatives of One Variable Functions
The **derivative** of a function $f(x)$ can be defined with a limit as: $$\lim_{h\rightarrow0}\frac{f(x+h)-f(x)}{h}$$
## Derivatives of Two Variable Functions

### [Partial Derivative](Partial%20Derivative.md)
^705935

A **Partial Derivative** of a function of several variables is its **derivative** with respect to one of those variables, with the others held constant

For all points at which the limits exist, we define the **partial derivatives** at the point (a,b) (ROC) stands for *Rate of Change* $$f_x(a,b)=\text{ROC of f with respect to x at the point (a,b)}=\lim_{h\rightarrow0}\frac{f(a+h,b)-f(a,b)}{h}$$$$f_x(a,b)=\text{ROC of f with respect to y at the point (a,b)}=\lim_{h\rightarrow0}\frac{f(a,b+h)-f(a,b)}{h}$$
**Partial Derivatives** can also be alternatively as
If $z=f(x,y)$,$$\begin{aligned} f_x(x,y)=\frac{\Delta z}{\Delta x} \text{ and }f_y(x,y)=\frac{\Delta z}{\Delta y}\\ f_x(a,b)=\frac{\Delta z}{\Delta x}|_{(a,b)} \text{ and } f_y(a,b)=\frac{\Delta z}{\Delta y}|_{(a,b)}\end{aligned}$$The variable in the subscript indicates the variable of interest, and any other variable in the problem is temporarily considered **constant**

- The *signs* of the partial derivatives indicate increase or decrease of the function in the x or y direction
- The *units* of a partial derivative are the units of the output divided by the units of the direction variable. 
	- If $z=f(x,y)$, the units of $f_z=\frac{\Delta z}{\Delta x}$ are $\frac{\text{Units of z}}{\text{Units of x}}$ 
#### Example of the graph of a partial derivative
	![Pasted image 20231011101848](../Images/Pasted%20image%2020231011101848.png)