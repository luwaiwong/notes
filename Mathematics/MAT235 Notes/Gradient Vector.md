#mathematics  
#uoft/mat235 

The **Gradient Vector** of a function $f$ describes the direction at which $f$ has the largest rate of increase.

---
## Related
[Directional Derivative](Directional%20Derivative.md)  
[Differential](Differential.md)

# Definition and Notation
### Function of Two Variables
The **Gradient Vector** of a differentiable [Function of Two Variables](Function%20of%20Two%20Variables.md) $f$ at the point $(a,b)$ is $$grad \ f(a,b)=f_{x}(a,b)\vec{i}+f_{y}(a,b)\vec{j}$$  
Or the [Partial Derivative](Partial%20Derivative.md) of $f$ with respect to $x$ in the x-axis, and the [Partial Derivative](Partial%20Derivative.md) with respect to $y$ in the y-axis

### Function of Three Variables
Let $f$ be a [Function of Three Variables](Function%20of%20Three%20Variables) $f(x,y,z)$  
The [Gradient Vector](.md) for $f$ is  
	$grad(f)=f_{x}\vec i + f_{y}\vec j + f_{z}\vec k$


### Alternative Notation
Using [Partial Derivative](Partial%20Derivative.md) notation, we can defined the gradient vector as: $$\triangledown = \frac{\partial f}{\partial x}\vec{i}+\frac{\partial f}{\partial y}\vec{j}$$  
The gradient vector can also be written as: $$grad f = \triangledown f$$
# Properties
## Function of Two Variables
If $f$ is a [Differentiable](Differentiable) function at the point $(a,b)$ and $grad \ f(a,b) \neq \vec{0}$, then the **gradient** has the following properties
- The direction of $grad \ f(a,b)$ is 
	- [Orthogonal](../MAT223%20Notes/Orthogonal.md) to the contour of $f$ through $(a,b)$
	- In the direction of the maximum rate of increase of $f$
- The magnitude of the gradient vector $||grad \ f||$ is  
	- The maximum rate of change of $f$ at that point
	- Large when contours are close together, and small when they are far apart

## Function of Three Variables
**Properties**
-  $grad(f)(a,b,c)$ is  [Orthogonal](../MAT223%20Notes/Orthogonal.md) to the level surface of $f$ at $(a,b,c)$
-  $grad(f)(a,b,c)$ is in the direction of the greatest rate of increase if $f$
-  $||grad(f)(a,b,c)||$ is the maximum rate of change of $f$ at $(a,b,c)$

# Directional Derivative
The definition of the **gradient vector** can be found from the definition of the [Directional Derivative](Directional%20Derivative.md)  
If $f$ is differentiable at $(a,b)$ and $\vec{u}$ is a unit vector, then the [Directional Derivative](Directional%20Derivative.md) can be computed using $$f_{\vec{u}}(a,b)=f_{x}(a,b)u_{1}+f_{y}(a,b)u_{2}=gradf(a,b)\cdot \vec{u}$$