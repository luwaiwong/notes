#statistics #uoft/sta237 

The **Joint Probability Mass Function** of a [[Joint Distribution]] describes the [[Probability]] of different [[Event]]s of its [[Discrete Random Variable]]s occurring simultaneously 

---
# Definition
The **Joint Probability Mass Function** $p$ of two [[Discrete Random Variable]]s $X$ and $Y$ is the  [[Function]] $p:\mathbb{R}^{2}\rightarrow [0,1]$, defined by  $$p(a,b) = P(X=a, Y=b) \ \text{ for } \ -\infty<a,b <\infty$$
Let [[Set]] A be a set of pairs of $(x,y)$ in [[Sample Space]] $\Omega$. Then, $$P[(X,Y)\in A]=\sum\limits_{(x,y)\in A}p_{(X,Y)}(x,y)$$
> [!example]- Table Example of a Joint Probability Mass Function
> ![[Pasted image 20231123121107.png]]
> On the left, are all possible values for *Random Variable $A$*, on top are all possible values for *Random Variable $B$*
> On the right, we can retrieve the [[Probability Mass Function]] of only $A$, by adding up all probabilities

## Properties
- $p_{X,Y}(x,y) \geq 0$ for all $x$ and $y$
- Probabilities must add to 1

---
# Calculating Probabilities
To calculate $P(a\leq X < b, c \leq Y < d)$, use the formula: $$\sum\limits_{x=a}^{b-1} \sum\limits_{y=c}^{d-1}p_{x,y}(x,y)$$
