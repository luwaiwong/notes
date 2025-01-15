#statistics 
#uoft/sta238 

The **Moments** of a [[Function]] are different measures related to the shape of a functions graph

---
# Statistics
The $k$th **Moment** of a [[Random Variable]] $X$ is defined as $\mu_{k}'=E[X^{k}]$

>The $k$th **Moment** is the [[Expected Value]] of $X$ to the power of $k$
> The 1st moment: $E[X]$
> The 2nd moment: $E[X^{2}]$
> So, the moments are different expected values of the random variable

The **Moments** of a [[Random Variable]] are related to its [[Expected Value]] and its [[Variance]]
	**Moments** can be used to calculate both values

Related:
	[[Moment Generating Function|Moment Generating Functions]] can be used to find the moments of different  [[Probability Distribution|Probability Distributions]]
	The [[Method of Moments]] is a technique to come up with [[Estimator|Estimators]] using the moments of a [[Random Variable]]
## Sample Moments
For a sample $X_{1},X_{2},...,X_{n}$ that are identically distributed as $X$
The $k$th **Sample Moment** is defined as $m_{k}=\sum\limits_{i=1}^{n} \frac{X^{k}_{i}}{n}$ 

> The sample mean is the first sample moment