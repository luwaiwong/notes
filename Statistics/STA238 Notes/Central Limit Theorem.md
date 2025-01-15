#statistics 
#uoft/sta238 

The **Central Limit Theorem** says that if you take different [[Random Sample|Random Samples]] of a [[Random Variable]]. The [[Sample Mean|Sample Means]] calculated will approximately follow a  [[Normal Distribution]], centered at the mean of the original probability distribution $X$

The **Central Limit Theorem** also provides a way to transform any [[Sample Mean]], so that it follows a [[Standard Normal Distribution]]. This transformation makes calculating the probability of observing a [[Sample Mean]] for a given [[Random Variable]] easier

---
## Standard Normal
> For any mean where we know the [[Expected Value]] and [[Variance]], we can stabilize the distribution, so that the [[Sample Mean]] follows a [[Standard Normal Distribution]]
> This can allow us to more easily calculate how likely different values of the mean are

Let $X_{1},X_{2},...$ be any sequence of [[Independent Identically Distributed Random Variables]] with finite positive variance.
Let $\mu$ be the expected value and $\sigma^{2}$ be the variance of $X$ . For $n \geq 1$

Define:
$$Z_{n}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{Var(\overline X_{n})}}$$
>Also written as (Converting $E(\overline X_{n})$ and $Var(\overline X_{n})$ to equations for [[Sample Mean]]): $Z_{n}=\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$
>As $n\rightarrow \infty$, $Z_{n}$ will follow a standard normal distribution  $N(0,1)$

This is a stabilization of $\overline X_{n}$, so that it is centered at 0 and follows a [[Standard Normal Distribution]]

We can use $Z_{n}$ to calculate the probability of different values of $\overline X_{n}$
	Since $Z_{n}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{Var(\overline X_{n})}}$, then for any value of $\overline X_{n}$ that we observe,
	$P(\overline X_{n}> x) = P(Z_{n} > \frac{x-E(\overline X_{n})}{\sqrt{Var(\overline X_{n})}})$ 

> This value is often also called the **Z-Score**

## T-Distribution
> The method above only works when we know the [[Standard Deviation]] or [[Variance]] of the underlying [[Random Variable]]. We can substitute the known Variance for an approximation by [[Sample Variance]], but the resulting distribution then follows a [[T-Distribution]] with $n-1$ degrees of freedom

Let $X_{1},X_{2},...$ be any sequence of [[Independent Identically Distributed Random Variables]] with finite positive variance.
Let $\mu$ be the expected value and $S_{n}^{2}$  be the [[Sample Variance]] of the sequence. For $n > 1$
$$T_{n-1}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{\text{Sample Var}(\overline X_{n})}}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{\frac{S_{n}^{2}}{n}}}$$
and 
$$P(\overline X_{n}> x) = P(T_{n-1} > \frac{x-E(\overline X_{n})}{\sqrt{\frac{S_{n}^{2}}{n}}})$$ 
> Generally you will be given a *T-Chart* with the values of the [[T-Distribution]] with different degrees of freedom


