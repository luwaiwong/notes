#uoft/mat235 #mathematics 

A **Critical Point** is a **Local Maximum**, **Local Minimum**, or a **Saddle Point**(For functions in 3-space)

---
# Definition
A **Critical Point** is a point where the [Gradient Vector](Gradient%20Vector.md) is either $\vec 0$ or *undefined*

If a point is a **Critical Point** it is not neccesarily a *local maximum* or *local minimum*

# Finding Critical Points

A point where the [Gradient Vector](Gradient%20Vector.md) is either $\vec{0}$ or *undefined* are [Critical Points](.md) of the function.
>Given a position p, if: $$gradf(p)=\vec{0}$$Then $f(x,y)$ has either a global, or local maximum or minimum at that point.


# Classifying Critical Points
#### Classifying Critical Points
Critical points are **Local Max/Mins**, **Global Max/Mins**, or **Neither**
	A critical point is not a maximum or a minimum if near the point the [partial derivatives](Partial%20Derivative.md) take both positive and negative values
> [!example]- A critical point that is neither a local max or min
>  ![Pasted image 20240205135527](attachments/Pasted%20image%2020240205135527.png)

After finding a critical point, you can classify it using the [Second Derivative Test](Second%20Derivative%20Test.md)

> **The Second Derivative Test**
Suppose $(x,y)$ is a point where $grad f(x,y) = \vec{0}$ 
Let $D=f_{xx}(x,y)f_{yy}(x,y)-(f_{xy}(x,y))^{2}$
>  - $D > 0$ && $f_{xx}(x,y) > 0$  $\implies$ $f$ has a **local minimum** at $(x,y)$
>  - $D > 0$ && $f_{xx}(x,y) < 0$  $\implies$ $f$ has a **local maximum** at $(x,y)$
>  - $D < 0$  $\implies$ $f$  has a **local minimum** at $(x,y)$
>  - $D = 0$  $\implies$ inconclusive, $f$ can have local max, min, saddle point, or none at $(x,y)$