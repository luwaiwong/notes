#mathematics #uoft/mat235 

The **Parameterization** of a curve is taking an equation/graph, and describing it using one variable.

---
# Parametric Equations
To **Parameterize** an equation of two variables with $x$ and $y$, we can create **Parametric Equations** for $x$ and $y$ in terms of a new variable $t$


>Examples
>	1. The parametric equation for the curve $y=x^{2}$ could be $$x=t, y=t^{2}$$Changing $t$ changes $x$ and $y$, in a way which exactly describes the original equation
>	2. The parametric equation for a circle, centered at 0 with a radius of 4 could be: $$x=3\cos t, y = 3\sin t$$$t$ here is sort of like the angle of the circle, and it defines an $x$ and $y$ at that angle, as $t$ progresses, it traces out the entire circle

The **Parametric Equations of a Line** through the point $(x_{0},y_{0},z_{0})$ and parallel to the vector $\vec{ai} + \vec{bj} +\vec{ck}$ are: $$x=x_{0}+at, y=y_{0}+bt, z= z_{0}+ct$$
# Vector Form
After creating **parametric equations**, we can rewrite them into a single **vector** which describes the original graph.

We notate this vector as $\vec r = \vec{xi} + \vec{yj}$, or in 3-space as $\vec{r} = \vec{xi} + \vec{yj}+ \vec{zk}$


> Example  
> 	The circle of radius 1, with $x=\cos t, y=\sin t$, is **parameterized** by the vector-valued function as $\vec r_{1}(t)=cos \vec{ti} + sin \vec{tj}, 0 \leq t \leq 2\pi$



The **Parametric Equation of a Line in Vector Form** for a line through the point with position vector $\vec{r}_{0}=\vec{x_{0}i}+\vec{y_{0}j}+\vec{z_{0}k}$ in the direction of the vector $\vec{v}=\vec{ai}+\vec{bj}+\vec{ck}$ has the parametric equation $$\vec{r}(t)=\vec{r}_{0}+t\vec{v}$$