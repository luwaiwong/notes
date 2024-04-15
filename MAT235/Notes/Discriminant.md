#mathematics 
#uoft/mat235 

The **Discriminat** is a formula which helps in determining if a critical point is a **Minimum**, **Maximum**, or **Neither**

---
## Function of Two Variables
For a [Function of Two Variables](Function%20of%20Two%20Variables.md) $f$, and its [Gradient Vector](Gradient%20Vector.md) $gradf(x,y)$
Suppose $(x,y)$ is a point where $grad f(x,y) = \vec{0}$ 
The **Discriminant** $D=f_{xx}(x,y)f_{yy}(x,y)-(f_{xy}(x,y))^{2}$
  - $D > 0$ && $f_{xx}(x,y) > 0$  $\implies$ $f$ has a **local minimum** at $(x,y)$
  - $D > 0$ && $f_{xx}(x,y) < 0$  $\implies$ $f$ has a **local maximum** at $(x,y)$
  - $D < 0$  $\implies$ $f$  has a **local minimum** at $(x,y)$
  - $D = 0$  $\implies$ inconclusive, $f$ can have local max, min, saddle point, or none at $(x,y)$