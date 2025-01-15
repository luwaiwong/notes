#statistics 
#uoft/sta238 

A $100(1-\alpha)$% **Confidence Interval** or **Interval Estimator** is an interval $(a,b)$ where we are $100(1-\alpha)$% confident that a parameter is within the interval
	In other words, a rule which gives a certain degree of confidence, that an [[Estimate]] of an [[Estimator]] will be within certain bounds, or that:
	$P(L_{n}<\theta<U_{n})=1-\alpha$
	Where $L_{n}$ and $U_{n}$ are the **lower and upper confidence limits**, and $(1-\alpha)$ is the **confidence coefficient

---
## Calculating Confidence Intervals

There are many ways to calculate confidence intervals, depending on the situation:

> Generally, we are looking for a parameter, which follows some [[Probability Distribution]]. We use the properties of that probability distribution to construct a confidence interval
#### Normal Distribution, Variance Known
For a normal distribution, we can calculate the **Confidence Interval** with the techniques below:

The $z_\alpha$ score or **Critical Value** is a value of the [[Standard Normal Distribution]] $P(Z\geq z)=\alpha$ or $P(Z\leq z)=1-\alpha$
	The value in the standard distribution, where $\alpha$ proportion of values are lower than $z$

If the parameter of interest follows a [[Normal Distribution]] where we know the variance, then our confidence interval can be derived with:
	The result will be $L_{n}=\overline X_{n} - z_{\frac{\alpha}{2}}\frac{\sigma}{\sqrt{n}}$ and $U_{n}=\overline X_{n} + z_{\frac{\alpha}{2}}\frac{\sigma}{\sqrt{n}}$
	$\overline X_{n}$ is the mean of the data that we are basing the confidence interval off of.

>So, basically the confidence interval is the *value where there is an $\alpha$ proportion of numbers greater in the **Standard Normal Distribution***, times the variance of the random sample, centered on the mean of that same random sample
> We calculate $z_{\frac{\alpha}{2}}$ instead of $z_{\alpha}$ because we are centering the $\alpha$ in the center, and so calculate half the probability above, and below, this is just general best practice
> Derived from rearranging $\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$
> From [[Central Limit Theorem]]:
> 	$\begin{aligned} P(L_{n}<\overline X_{n} <U_{n})&= P(c_{l}<\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}<c_{u}) \\ &= P(\overline X_{n}-c_{u} \frac{\sigma}{\sqrt{n}}< \mu< \overline X_{n}-c_{l}\frac{\sigma}{\sqrt{n}})\end{aligned}$
> Then pick $c_{u}$ and $c_{l}$ as $z_{\frac{\alpha}{2}}$, in theory you could pick anything else
> 	Just pick any value where the proportion of values between $c_{u}$ and $c_{l}$ is $\alpha$

#### Normal Distribution, Unknown Variance
If the parameter follows a [[Normal Distribution]] that we do **NOT** know the variance, then the confidence interval must be derived with [[Sample Variance]]

>When $\sigma$ is unknown, we cannot use $\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$ from the central limit theorem
>What we can do is substitute $\sigma$ with [[Sample Variance]], for $\frac{\overline X_{n}-\mu}{\frac{S_{n}}{\sqrt{n}}}$
> Since $S_{n}$ is its own random variable, we can't use the same rules that we did earlier with standard normal for the new random variable $\frac{\overline X_{n}-\mu}{\frac{S_{n}}{\sqrt{n}}}$
> 	This value $\frac{\overline X_{n}-\mu}{\frac{S_{n}}{\sqrt{n}}}$ is sometimes also referred to as the [[Studentized Mean]]
> This now has a distribution that can be described with the [[T-Distribution]], [[#T-Distribution|View Below]]

When we substitute $\sigma$ with [[Sample Variance]] $S_{n}$, its distribution now follows a [[T-Distribution]] $T$ with $n-1$ degrees of freedom, which we can use to calculate a new [[T-Distribution|T-Score]]

The $t_{m,p}$ score, also called the **Critical Value** is a value of the [[T-Distribution]] $P(T(m)\geq t_{m,p})=p$ or $P(T(m)\leq t_{m,p})=1-p$
	The value in the t-distribution, where $\alpha$ proportion of values are lower than $z$
	You can use a T-Distribution Chart to get the $t$ value for a given probability and degree of freedom

Now, instead we calculate $L_{n}=\overline X_{n} - t_{n-1, \frac{\alpha}{2}}\frac{S_{n}}{\sqrt{n}}$ and $U_{n}=\overline X_{n} + t_{n-1, \frac{\alpha}{2}}\frac{S_{n}}{\sqrt{n}}$

> Same concept as before, but instead of the $z$ critical value and the standard normal distribution, use the $t$ critical value and the t-distribution

#### Unknown Variance, Large Samples
As $n\rightarrow \infty$, the [[T-Distribution]] approaches the [[Standard Normal Distribution]]

Then if $n$ is large enough, than $P(-z_{\frac{\alpha}{2}}<\frac{\overline X_{n}-\mu}{\frac{S_{n}}{\sqrt{n}}}<z_{\frac{\alpha}{2}} \approx 1-\alpha$
	Using $z$ *critical value* instead of $t$, while using [[Sample Variance]]

>Typically we use $n\geq 100$ to determine when to use [[Standard Normal Distribution]]
