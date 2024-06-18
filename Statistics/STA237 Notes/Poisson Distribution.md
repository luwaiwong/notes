#statistics #uoft/sta237 

The **Poisson distribution** describes the changes a random [Event](Event.md) will occur in an interval(time or space) assuming that
- The [Probability](Probability.md) the outcome occurs is very small
- the # of trials is very large so that the event is bound to happen sometimes anyways (Can think of it almost as infinite in time of space)

---
# Definition
X is called a **Poisson** [Discrete Random Variable](Discrete%20Random%20Variable.md) if it has the [Probability Mass Function](Probability%20Mass%20Function.md): $$p_{x}(x)=\frac{e^{-\lambda}\lambda^{x}}{x!}, \ x=0,1,2,...$$  
Where $x$ is the number of occurrences  
And $\lambda$ is the [Expected Value](Expected%20Value.md) of $X$ and its [Variance](Variance.md) (Is called the **rate parameter**)
# Other Related Functions
Given $\lambda$,  
[Moment Generating Function](Moment%20Generating%20Function.md):$$M_{X}(t)=e^{\lambda(e^{t}-1)}$$  
[Expected Value](Expected%20Value.md):$$E(X)=\lambda$$  
[Variance](Variance.md):$$Var(X)=\lambda$$
# Example
Patients arrive at a hospital emergency room at a constant rate of 5 patients per hour, on average.![Pasted image 20231012122945](Pasted%20image%2020231012122945.png)
## R Functions 
Computing [Probability Mass Function](Probability%20Mass%20Function.md): $p(x)=P(X=x)$  
`dpois(x, \lambda)`  
Computing [Cumulative Distribution Function](Cumulative%20Distribution%20Function.md):  $F(x)=P(X\leq x;n,M,n)$  
`ppois(x, \lambda)`  
Determine Quantile $x_{prob}$ such that $F(x_{prob})=prob$:  
`qpois(x, \lambda)`  
Generate *k* independent observations of X:  
`rhyper(prob, k, \lambda)`