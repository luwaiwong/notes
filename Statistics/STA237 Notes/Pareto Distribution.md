#statistics #uoft/sta237 

The **Pareto Distribution** was discovered by *Vilfredo Pareto*, who discovered that the number of people whose income exceeded level $x$, was well approximated by $\frac{C}{x^{a}}$

---
# Definition
A [[Continuous Random Variable]] has a **Pareto Distribution** given a parameter $\alpha > 0$ if its [[Probability Mass Function|Probability Density Function]] $f$ is given by $f(x)=0$ if $x < 1$ and  $$f(x)= \begin{cases} \frac{\alpha\beta^\alpha}{x^{\alpha+1}}, \ \text{ for } x \geq \ \beta   \\
0, \ \text{ otherwise}\end{cases}$$
This distribution is denoted $Par(\alpha, \beta)$

# Values
Given $\alpha$ and $\beta$,
[[Cumulative Distribution Function]]: $$F(x)=1-(\frac{\beta}{x})^{\alpha} \text{ for } x\geq \beta$$
[[Expected Value]]:$$E(X)=\frac{\alpha \beta}{a-1} \ \text{ if } \alpha>1$$
[[Variance]]:$$Var(X)=\frac{\alpha\beta^{2}}{(\alpha-1)^{2}(\alpha-2)} \text{ if } \alpha>2$$

# Graph Example
![[Pasted image 20231027103125.png]]