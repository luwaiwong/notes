#statistics #uoft/sta237

A **Joint Continuous Distribution** is a [Joint Distribution](Joint%20Distribution.md) with [Continuous Random Variable](Continuous%20Random%20Variable.md)s

---
# Definition
Two [Random Variable](../STA238%20Notes/Random%20Variable.md)s $X$ and $Y$ have a **Joint Continuous Distribution** if for some [Function](../../Mathematics/MAT235%20Notes/Function.md) $f:\mathbb{R}^{2}\rightarrow \mathbb{R}$ and for all numbers $a_{1},a_{2}$ and $b_{1},b_{2}$ with $a_{1}\leq b_{1}$ and $a_{2}\leq b_{2}$,
$$P(a_{1}\leq X \leq b_{1}, a_{2}\leq Y \leq b_{2})=\int_{a_{1}}^{b_{1}} \int_{a_{2}}^{b_{2}}f(x,y)dxdy$$
Where $f(x,y)$ must satisfy
- $f(x,y)\geq 0$ for all $x$ and $y$
- $\int_{-\infty}^{\infty} \int_{-\infty}^{\infty}f(x,y)dxdy=1$
$f$ is the [Joint Probability Density Function](Joint%20Probability%20Density%20Function.md) of $X$ and $Y$