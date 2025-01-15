#statistics  
#uoft/sta238 

The **Central Limit Theorem** says that if you take different [Random Samples](Random%20Sample.md) of a [Random Variable](Random%20Variable.md). The [Sample Means](Sample%20Mean.md) calculated will approximately follow a  [Normal Distribution](../STA237%20Notes/Normal%20Distribution.md), centered at the mean of the original probability distribution $X$

The **Central Limit Theorem** also provides a way to transform any [Sample Mean](Sample%20Mean.md), so that it follows a [Standard Normal Distribution](Standard%20Normal%20Distribution.md). This transformation makes calculating the probability of observing a [Sample Mean](Sample%20Mean.md) for a given [Random Variable](Random%20Variable.md) easier

---
## Standard Normal
> For any mean where we know the [Expected Value](../STA237%20Notes/Expected%20Value.md) and [Variance](../STA237%20Notes/Variance.md), we can stabilize the distribution, so that the [Sample Mean](Sample%20Mean.md) follows a [Standard Normal Distribution](Standard%20Normal%20Distribution.md)  
> This can allow us to more easily calculate how likely different values of the mean are

Let $X_{1},X_{2},...$ be any sequence of [Independent Identically Distributed Random Variables](Independent%20Identically%20Distributed%20Random%20Variables.md) with finite positive variance.  
Let $\mu$ be the expected value and $\sigma^{2}$ be the variance of $X$ . For $n \geq 1$

Define:  
$$Z_{n}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{Var(\overline X_{n})}}$$
>Also written as (Converting $E(\overline X_{n})$ and $Var(\overline X_{n})$ to equations for [Sample Mean](Sample%20Mean.md)): $Z_{n}=\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$  
>As $n\rightarrow \infty$, $Z_{n}$ will follow a standard normal distribution  $N(0,1)$

This is a stabilization of $\overline X_{n}$, so that it is centered at 0 and follows a [Standard Normal Distribution](Standard%20Normal%20Distribution.md)

We can use $Z_{n}$ to calculate the probability of different values of $\overline X_{n}$  
	Since $Z_{n}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{Var(\overline X_{n})}}$, then for any value of $\overline X_{n}$ that we observe,  
	$P(\overline X_{n}> x) = P(Z_{n} > \frac{x-E(\overline X_{n})}{\sqrt{Var(\overline X_{n})}})$ 

> This value is often also called the **Z-Score**

## T-Distribution
> The method above only works when we know the [Standard Deviation](../STA237%20Notes/Standard%20Deviation.md) or [Variance](../STA237%20Notes/Variance.md) of the underlying [Random Variable](Random%20Variable.md). We can substitute the known Variance for an approximation by [Sample Variance](Sample%20Variance.md), but the resulting distribution then follows a [T-Distribution](T-Distribution.md) with $n-1$ degrees of freedom

Let $X_{1},X_{2},...$ be any sequence of [Independent Identically Distributed Random Variables](Independent%20Identically%20Distributed%20Random%20Variables.md) with finite positive variance.  
Let $\mu$ be the expected value and $S_{n}^{2}$  be the [Sample Variance](Sample%20Variance.md) of the sequence. For $n > 1$  
$$T_{n-1}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{\text{Sample Var}(\overline X_{n})}}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{\frac{S_{n}^{2}}{n}}}$$  
and  
$$P(\overline X_{n}> x) = P(T_{n-1} > \frac{x-E(\overline X_{n})}{\sqrt{\frac{S_{n}^{2}}{n}}})$$ 
> Generally you will be given a *T-Chart* with the values of the [T-Distribution](T-Distribution.md) with different degrees of freedom


