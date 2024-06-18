#mathematics  
#uoft/mat235 

**Taylor Approximations** are ways of approximating polynomials, to varying accuracies

---
## Degree 1 Taylor Polynomials
Given a [Function of Two Variables](Function%20of%20Two%20Variables.md) $f(x,y)$, assuming $f$ is differentiable at $(a,b)$  
The **Taylor Polynomial of Degree 1** is: $$L(x,y)=f(a,b)+f_{x}(a,b)(x-a)+f_{y}(a,b)(y-b)$$

## Degree 2 Taylor Polynomials
The *degree-2 Taylor Polynomial* for a [Function](Function.md) $f(x)$ is:$$f(x) \approx f(a)+f'(a)(x-a)+\frac{f''(a)}{2}(x-a)^{2} \ \text{ for x near a}$$  
For a [Function of Two Variables](Function%20of%20Two%20Variables.md) $f(x,y)$, it is:$$f(x,y) \approx f(a,b)+f_{x}(a,b)(x-a)+f_{y}(a,b)(y-b)+ \frac{f_{xx}(a,b)}{2}(x-a)^{2} +f_{xy}(a,b)(x-a)(y-b) +\frac{f_{yy}(a,b)}{2}(y-b)^{2}\ \text{ for x,y near a,b}$$  
These approximations use [Partial Derivatives](Partial%20Derivative.md), and **Second Order Partial Derivatives**