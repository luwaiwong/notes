#statistics #uoft/sta237 

The **Poisson distribution** describes the changes a random [[Event]] will occur in an interval(time or space) assuming that
- The [[Probability]] the outcome occurs is very small
- the # of trials is very large so that the event is bound to happen sometimes anyways (Can think of it almost as infinite in time of space)

---
# Definition
X is called a **Poisson** [[Discrete Random Variable]] if it has the [[Probability Mass Function]]: $$p_{x}(x)=\frac{e^{-\lambda}\lambda^{x}}{x!}, \ x=0,1,2,...$$
Where $x$ is the number of occurrences
And $\lambda$ is the [[Expected Value]] of $X$ and its [[Variance]] (Is called the **rate parameter**)
# Other Related Functions
Given $\lambda$,
[[Moment Generating Function]]:$$M_{X}(t)=e^{\lambda(e^{t}-1)}$$
[[Expected Value]]:$$E(X)=\lambda$$
[[Variance]]:$$Var(X)=\lambda$$
# Example
Patients arrive at a hospital emergency room at a constant rate of 5 patients per hour, on average.![[Pasted image 20231012122945.png]]
## R Functions 
Computing [[Probability Mass Function]]: $p(x)=P(X=x)$
`dpois(x, \lambda)`
Computing [[Cumulative Distribution Function]]:  $F(x)=P(X\leq x;n,M,n)$
`ppois(x, \lambda)`
Determine Quantile $x_{prob}$ such that $F(x_{prob})=prob$:
`qpois(x, \lambda)` 
Generate *k* independent observations of X:
`rhyper(prob, k, \lambda)`