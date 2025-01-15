#statistics #uoft/sta237

The **Joint Probability Density Function** of a [[Joint Continuous Distribution]] describes the [[Probability]] of different [[Event]]s of its [[Continuous Random Variable]]s occurring simultaneously 

---
# Definition
The **Joint Probability Mass Function** $f$ of two [[Discrete Random Variable]] $X$ and $Y$ is the  [[Function]] $p:\mathbb{R}^{2}\rightarrow [0,1]$, defined by  $$f(a,b) = P(X=a, Y=b) \ \text{ for } \ -\infty<a,b <\infty$$
## Properties
- $f_{X,Y}(x,y)\geq 0$ for all $x,y$
- Total volume under density over all possible $x,y$ is 1

---
# Calculating Probabilities
To calculate $P(a\leq X < b, c \leq Y < d)$, use the formula: $$\int_{c}^{d}\int_{a}^{b}f_{X,Y}(x,y)dx \ dy$$