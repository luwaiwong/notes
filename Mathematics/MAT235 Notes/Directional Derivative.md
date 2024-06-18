#mathematics #uoft/mat235 

The **Directional Derivative** of a function $f$ is a [Scalar](Scalar.md) which defines the rate of $f$ in a direction

---
# Definition and Notation
## Definition with Limit
^9bf978

If $\vec{u}=\vec{u_{1}i}+\vec{u_{2}j}$ is a unit vector, we define the **directional derivative $f_{\vec{u}}$** as:$$f_{\vec{u}}(a,b)=\text{Rate of Change in Direction of u at (a,b)} = \lim_{h\rightarrow 0}\frac{f(a+hu_{1},b+hu_{2})-f(a,b)}{h}$$  
Provided the limit exists. 

## Definition with [Partial Derivative](Partial%20Derivative.md)
^951b0c

If $\vec{u}=\vec{u_{1}i}+\vec{u_{2}j}$ is a unit vector, we define the **directional derivative $f_{\vec{u}}$** as:  
$$f_{\vec{u}}(a,b)=f_{x}(a,b)u_{1}+f_{y}(a,b)u_{2}$$


> Example  
> ![Pasted image 20231101134030](Pasted%20image%2020231101134030.png)

## Definition for Function
If $\vec u$ is a [Unit Vector](Unit%20Vector.md), the **Directional Derivative** of $f$ can be computed using  
	$f_{\vec{u}}(a,b,c)=grad (f)(a,b,c)\cdot \vec u$ 