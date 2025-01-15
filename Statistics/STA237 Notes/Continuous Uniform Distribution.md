#statistics #uoft/sta237 

A **Continuous Uniform Distribution** describes an experiment for a [Continuous Random Variable](Continuous%20Random%20Variable.md) where there every value has the same probability of occurring

---
# Definition

if $a<b$, a random variable $Y$ is said to have a **Continuous Uniform Probability Distribution** on the interval $(a,b)$ if and only if the [Probability Density Function](Probability%20Mass%20Function.md) of $Y$ is: $$f(y)=\begin{cases} \frac{1}{(b-a)}, \ a \leq y\leq b  \\  
0, \ \text{ elsewhere} \end{cases}$$
# Values
Given $a$ and $b$ such that $a<b$:  
[Expected Value](Expected%20Value.md): $$E(Y)=\frac{a+b}{2}$$  
[Variance](Variance.md): $$\frac{(b-a)^{2}}{12}$$  
[Moment Generating Function](Moment%20Generating%20Function.md): $$\frac{e^{tb}-e^{ta}}{t(b-a)}$$