#statistics #uoft/sta237 

The **Exponential Distribution** can be derived from, and is essentially the [[Geometric Distribution]] for [[Continuous Random Variable]]s

---
# Definition
A [[Continuous Random Variable]] $Y$ has an **Exponential Distribution** given a parameter $\lambda > 0$ if and only if the [[Probability Mass Function|Probability Density Function]] of $Y$ is: $$f(y)=\begin{cases}\lambda e^{-\lambda y}, \ 0 \leq y < \infty  \\
0, \ \text{ elsewhere} \end{cases}$$
# Values
Given $\lambda$,
[[Expected Value]]:$$E(Y)=\frac{1}{\lambda}$$
[[Variance]]:$$Var(Y)=\frac{1}{\lambda^{2}}$$
[[Moment Generating Function]]:$$M_{Y}(t)=\frac{\lambda}{\lambda-t},  \ t<\lambda$$