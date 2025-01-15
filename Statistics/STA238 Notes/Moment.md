#statistics 
#uoft/sta238 

The **Moments** of a [Function](../../Mathematics/MAT235%20Notes/Function.md) are different measures related to the shape of a functions graph

---
# Statistics
The $k$th **Moment** of a [Random Variable](Random%20Variable.md) $X$ is defined as $\mu_{k}'=E[X^{k}]$

>The $k$th **Moment** is the [Expected Value](../STA237%20Notes/Expected%20Value.md) of $X$ to the power of $k$
> The 1st moment: $E[X]$
> The 2nd moment: $E[X^{2}]$
> So, the moments are different expected values of the random variable

The **Moments** of a [Random Variable](Random%20Variable.md) are related to its [Expected Value](../STA237%20Notes/Expected%20Value.md) and its [Variance](../STA237%20Notes/Variance.md)
	**Moments** can be used to calculate both values

Related:
	[Moment Generating Functions](../STA237%20Notes/Moment%20Generating%20Function.md) can be used to find the moments of different  [Probability Distributions](Probability%20Distribution.md)
	The [Method of Moments](Method%20of%20Moments) is a technique to come up with [Estimators](Estimator.md) using the moments of a [Random Variable](Random%20Variable.md)
## Sample Moments
For a sample $X_{1},X_{2},...,X_{n}$ that are identically distributed as $X$
The $k$th **Sample Moment** is defined as $m_{k}=\sum\limits_{i=1}^{n} \frac{X^{k}_{i}}{n}$ 

> The sample mean is the first sample moment