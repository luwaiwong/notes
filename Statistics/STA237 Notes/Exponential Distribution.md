#statistics #uoft/sta237 

The **Exponential Distribution** can be derived from, and is essentially the [Geometric Distribution](Geometric%20Distribution.md) for [Continuous Random Variable](Continuous%20Random%20Variable.md)s

---
# Definition
A [Continuous Random Variable](Continuous%20Random%20Variable.md) $Y$ has an **Exponential Distribution** given a parameter $\lambda > 0$ if and only if the [Probability Density Function](Probability%20Mass%20Function.md) of $Y$ is: $$f(y)=\begin{cases}\lambda e^{-\lambda y}, \ 0 \leq y < \infty  \\
0, \ \text{ elsewhere} \end{cases}$$
# Values
Given $\lambda$,
[Expected Value](Expected%20Value.md):$$E(Y)=\frac{1}{\lambda}$$
[Variance](Variance.md):$$Var(Y)=\frac{1}{\lambda^{2}}$$
[Moment Generating Function](Moment%20Generating%20Function.md):$$M_{Y}(t)=\frac{\lambda}{\lambda-t},  \ t<\lambda$$