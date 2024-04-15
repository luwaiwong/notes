#uoft/sta238 #notes

Notes for STA238

---

Status: Up to Week 3
Todo: Up to Week 7

W2: [Module2 LEC0201-1](attachments/Module2%20LEC0201-1.pdf)
W3: [Module3LEC0201](attachments/Module3LEC0201.pdf)

[STA237 Textbook](../../STA237/STA237%20Textbook.pdf)


[STA238 Definitions](STA238%20Definitions.md)

Study Strategy
	Read through slides and textbooks, figure out core concepts and try to take notes on them
	Do separate research on core concepts, and expand on notes
	Do questions in slides

# Notes
## Week 1
  Chapters 15-16 Dekking et al
  
  
  The [Mean](Mean.md) is the average of a dataset
  
  >**Sample Mean**, the mean from a sample set can be calculated by $\overline{x}_{n}= \frac{1}{n}\sum\limits_{i=1}^{n}x_{i}$
  
  The [Variance](../../STA237/Notes/Variance.md) and [Standard Deviation](../../STA237/Notes/Standard%20Deviation.md) quantify the amount of variability in a dataset
  Variance is measured in different units from the elements of the dataset, but standard deviation is in the same units as the dataset
  > **Sample Variance** can be calculated by $s^{2}_{n}=\frac{1}{n-1}\sum\limits_{i=1}^{n}(x_{i}-\overline{x}_{n})^{2}$
  > **Sample Standard Deviation** is the square root of sample variance, or $s_{n}=\sqrt{s^{2}_{n}}$
  
  >The [[Median Absolute Deviation](**MAD**) is calculated as $\text{Median}(|x_{1}-\overline{x}|,|x_{2}-\overline{x}|, ..., |x_{n}-\overline{x}|)$
  
  The MAD is mostly unaffected by outliers
  
  The [Interquartile Range (IQR|[IQR)](Interquartile%20Range%20(IQR)]].md) is the distance between the the upper and lower [Quartile](Quartile.md)
## Week 2
  Chapters 13, 17 Dekking et al
### Random Variables
  [Discrete Random Variables](../../STA237/Notes/Discrete%20Random%20Variable.md) represent the outcome of an experiment conducted.
  Discrete RV's are for [Quantitative](Quantitative.md) experiments
  For discrete random variables,
	  The [Cumulative Distribution Function](../../STA237/Notes/Cumulative%20Distribution%20Function.md) describes the probability that a value < a specified value occurs
	  The [Probability Mass Function](../../STA237/Notes/Probability%20Mass%20Function.md) describes the probability of an value occurring
	  The [Expected Value](../../STA237/Notes/Expected%20Value.md) is the [Mean](Mean.md) of the RV
	  The [Variance](../../STA237/Notes/Variance.md) quantifies the amount of variability for the RV
  
  There are many distributions for [Discrete Random Variables](../../STA237/Notes/Discrete%20Random%20Variable.md) to take, such as:
  [Binomial Distribution](../../STA237/Notes/Binomial%20Distribution.md)
  [Poisson Distribution](../../STA237/Notes/Poisson%20Distribution.md)
  
  [Continuous Random Variables](../../STA237/Notes/Continuous%20Random%20Variable.md) also represent the outcome of an experiment conducted.
  Continuous RV's can take on continuous values/any value on an interval
  For continuous random variables,
	  The [Cumulative Distribution Function](../../STA237/Notes/Cumulative%20Distribution%20Function.md) describes the probability that a value < a specified value occurs
	  The [Probability Density Function](../../STA237/Notes/Probability%20Density%20Function.md) describes the probability of a value occurring
	  The [Expected Value](../../STA237/Notes/Expected%20Value.md) and [Variance](../../STA237/Notes/Variance.md) are the same as for a [Discrete Random Variable](../../STA237/Notes/Discrete%20Random%20Variable.md)
  
  There are many distributions for [Continuous Random Variables](../../STA237/Notes/Continuous%20Random%20Variable.md) to take, such as;
  [Continuous Uniform Distribution](../../STA237/Notes/Continuous%20Uniform%20Distribution.md)
  [Normal Distribution](../../STA237/Notes/Normal%20Distribution.md)
  [Exponential Distribution](../../STA237/Notes/Exponential%20Distribution.md)
  
### Law of Large Numbers
Say we have a random variable $X$, where its [Expected Value](../../STA237/Notes/Expected%20Value.md) is $\mu$, and its [Standard Deviation](../../STA237/Notes/Standard%20Deviation.md) is $\sigma$
We can take independent samples of $X, X_{1},X_{2},X_{3},...,X_{n}$ and attempt to calculate the expected value of $X$ using these random samples

Our calculated value for the expected value will be called $\overline{X}_{n}$ , calculated using the formula for [Sample Mean](Mean.md)

>$\overline{X}_{n}$ represents the mean from a set of $n$ samples of $X$
>$X$ has $E[X]=\mu$, and $Var(X)=\sigma^{2}$
>$\overline X_{n}$is now a new [Random Variable](Random%20Variable.md), with different possible values based on the samples of $X$
> For the random variable $\overline{X}_{n},E[\overline{X}_{n}]=\mu \text{ and } Var(\overline{X}_{n})=\frac{\sigma^{2}}{n}$

The expected value of $\overline{X}_{n}$ will be the expected value of $X$,
and the variance of $\overline X_{n}$ will be based on the variance of $X$, and be lower based on the number of samples

>[The Weak Law of Large Numbers](Law%20of%20Large%20Numbers.md) says that $\lim_{n\rightarrow\infty} P(|\overline X_{n}-\mu|\geq \epsilon)=0$ 
Or, if you take an infinite number of samples of $X$, that the value of $\overline X_{n}=\mu$(the expected value of $X$) 
>[The Strong Law of Large Numbers](Law%20of%20Large%20Numbers.md) says that 
$P(lim_{n\rightarrow\infty}\overline{X}_{n}=\mu)=1$

>[Chebyshev's Inequality](Chebyshev's%20Inequality.md) says that for a [Random Variable](Random%20Variable.md) $Y$ and  $a>0, \ P(|Y-E[Y]|\geq a)\leq \frac{1}{a^{2}}Var(Y)$
>Can be rearranged to achieve
>$P(|Y-E(Y)|\leq a\sqrt{Var(Y)})\geq 1- \frac{1}{a^{2}}$

**Chebyshev's Inequality** tells us that the probability that a random variable is outside of a certain range $a$ of its [Expected Value](../../STA237/Notes/Expected%20Value.md) is related to its [Variance](../../STA237/Notes/Variance.md)
	The second equation given, is rearranged from the first, and gives us the probability that a [Random Variable](Random%20Variable.md) will be within a few ($a$) **standard deviations**$\sqrt{Var(Y)}$ from its **expectation** $\mu$
		Most of the probability mass of a random variable is within a few standard deviations from its expectation
	This is pretty intuitive.

Chebyshev's Inequality can be used to prove [Law of Large Numbers](Law%20of%20Large%20Numbers.md)

Any feature of a probability distribution can be found by analyzing samples of the probability distribution. 
	For example, the probability of an event $p=P(X\in C) \text{, where }C=(a,b] \text{ for some } a<b$
	If we do not know the probability $p$, we can instead estimate it from how often $X\in C$ occurs in the sequence
  
We can also reconstruct a distribution's [Probability Density Function](../../STA237/Notes/Probability%20Density%20Function.md) using its samples

### Statistical Models
A  **Statistical Inference** is an estimate, prediction, or some other generalization about a population based on information contained in a sample

A **Population Parameter** is an unknown numerical value based on a population. We can conduct statistical inferences about population parameters
	Examples of population parameters are:
		Mean
		Variance

A **Statistic** is a function of the observable random variables in a sample.
	Examples are:
		Sample Mean
		Sample Variance

A **Deterministic Model** is a hypothesized model about the relationship between two variables. 
	Deterministic models we crate are probabilistic. 
	Example of a deterministic model would be the relationship between two variables $y$ and $x$, where:
		$y=1.5x+ \text{Random Error}$

A **First-Order Probabilistic Model (Linear Regression)** is an equation:
	$y=b_{0}+b_{1}x+\epsilon,$ where:
		$y=$ dependent or response variable (variable to be modeled or predictied)
		$x=$ independent or predictor variable (used to predict $y$)
		$b_{0}+b_{1}x=$ deterministic component
		$\epsilon=$ Random error component, assumed to follow $N(0,\sigma)$ distribution
		$b_{0}=$ y-intercept of line
		$b_{1}=$ Slope of line 

The **Principle of Least Squares** is:
	The vertical deviation of the point $(x_{i},y_{i})$ from a line $y=b_{0}+b_{1}x$ is:
		Error $=y_{i}-b_{0}+b_{1}x_{i}$
	The sum of the squared vertical deviations from a set of points is: $g(b_{0},b_{1})=\sum\limits_{i=1}^{n}[y_{i}-b_{0}+b_{1}x_{i}]^{2}$
		We want to minimize this value
		The values which minimize $g(b_{0},b_{1})$,  are $\hat b_{0}, \hat b_{1}$ and are called the **least squares estimates**
	The **Estimated [Regression Line](Regression%20Line.md)**, or **Least Squares Regression Line** is the line whose equation is: 
		$y=\hat b_{0} + \hat b_{1} x$



## Week 3
Chapters 14,19 Dekking et al

**Base Terms**
An **Experimental Unit** is *something* about which we collect data
	For example, a person living in the US
A **Population** is the set of all **Units**
	For example, all people living in the US
A **Variable** is a characteristic/property of a **Unit** in the population
	i.e, A persons age
**Measurement** is the process we use to assign numbers to **variables** of **Units**
A **Sample** is a subset of a **Population**

### Central Limit Theorem
The [Law of Large Numbers](Law%20of%20Large%20Numbers.md) says that as you take more samples of a distribution, the [Mean](Mean.md) of those samples will become the mean of the distribution

The [Central Limit Theorem](Central%20Limit%20Theorem.md) Says that different values of $\overline{X}_{n}$ from different samples will follow a [Normal Distribution](../../STA237/Notes/Normal%20Distribution.md), centered at $\mu$ , regardless the original distribution.

>We can define $Z_{n}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{Var(\overline X_{n})}}$ (also written as $Z_{n}=\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$), this is a stabilization of $\overline X_{n}$, so that it is centered at 0 and follows a standard bell curve
>As $n\rightarrow \infty$, $Z_{n}$ will follow a standard normal distribution $N(0,1)$

We can use $Z_{n}$ to calculate the probability of different values of $\overline X_{n}$

### Estimators

An [Estimate](Estimate.md) is any value derived from a dataset, such as estimating the value of the mean of a distribution, using equation of [Sample Mean](#^7b5944)
Estimates can be used for other values, the [Bias](Bias.md) of an estimate is how far it is from its intended value

An [Estimator](Estimator.md) is a rule which produces an [Estimate](Estimate.md), for example, the [Sample Mean](#^7b5944) formula is an **estimator** which produces an **estimate** for the [Mean](Mean.md)
	An **Estimator** is typically a *formula*, that tells use how to calculate the value of an estimate based on the measurements contained in a sample
	Estimates in this class are typically the parameters of the distribution of a set of data, and estimators are for calculating those

A [Sampling Distribution](Sampling%20Distribution.md) is the [Probability Distribution](Probability%20Distribution.md) of an estimator

> Say we are looking for a parameter $\theta$, $\hat{\theta}$ is the value of an estimator for  $\theta$ 

The [Bias](Bias.md) of an [Estimator](Estimator.md) is the difference from its [Estimate](Estimate.md) to its intended value
	The [Bias](Bias.md) of an estimator $\hat \theta, B(\hat \theta)$ is the difference $E[\hat \theta]-\theta$
	And we say the estimator $\hat \theta$ is **unbiased** if $E[\hat \theta] =\theta$, otherwise, it is **biased**
The [Mean Squared Error](Mean%20Squared%20Error.md) of an estimator $\hat \theta$ is $MSE(\hat \theta)=E[(\hat \theta- \hat \theta)^{2}]=V(\hat \theta)+[B(\hat \theta)]^{2}$

Some examples of **unbiased estimators** are the estimators for sample mean and variance

### Interval Estimators
A [Confidence Interval](Confidence%20Interval) or **Interval Estimator** is a rule which gives a certain degree of confidence, that an [Estimate](Estimate.md) of an [Estimator](Estimator.md) will be within certain bounds, or that:

> Let $\hat \theta_{L}$ and $\hat \theta_{U}$ be the **lower and upper confidence limits**, then:$$P(\hat \theta_{L}\leq \theta\leq \hat \theta_{U})=1-\alpha$$
> Where $(1-\alpha)$ is the **confidence coefficient**

The lower and upper confidence limits for  $\theta$ are given by: $$\hat \theta_{L}= \hat \theta-{z_{\frac{\alpha}{2}}}{\sigma_{\hat \theta}} \ \text{ and } \ \hat \theta_{U}= \hat \theta+{z_{\frac{\alpha}{2}}}{\sigma_{\hat \theta}}$$
Where $z$ is the confidence level value

> $\sigma_{\hat \theta} = SE(\hat \theta)$, or the [Standard Error](Standard%20Error)
> The **standard error** of $\hat \theta$ is the [Standard Deviation](../../STA237/Notes/Standard%20Deviation.md) of $\hat \theta$
> The **standard error** for a sample with $n$ units, with a given probability $p$, can be calculated by:
> 	$\sigma_{\hat p}=\sqrt{\frac{p-(1-p)}{n}}$

Basically, we can calculate the probability that an [Estimator](Estimator.md) will return a value between $\hat \theta_{L}$ and $\hat \theta_{R}$, with a confidence of $1-\alpha$

### Sampling Distributions
A [Sampling Distribution](Sampling%20Distribution.md) is the distribution of a **Sample** of **Units** from a **Population**

If $y_{1},y_{2},...,y_{n}$ is a *random sample* from a $N(\mu,\sigma)$ distribution, where $\overline y$ is the **Sample Mean**, and $s$ is the **Sample Standard Deviation** then:
Then $$\frac{\overline y -\mu}{\frac{s}{\sqrt{n}}}$$
Has a [T-Distribution](T-Distribution) with $(n-1)$ degrees of freedom,
And $$\frac{(n-1)s^{2}}{\sigma^{2}}=\frac{1}{\sigma^{2}}\sum\limits_{i=1}^{n}(y_{i}-\overline y)^{2}$$
Has a [Chi^2 Distribution](Chi^2%20Distribution) with $(n-1)$ degrees of freedom

Given a chart, with the probabilities of different values of a **T-Distribution** or a **Chi^2 Distribution** with $(n-1)$ degrees of freedom, we can roughly calculate values for small sample sizes

## Week 4
Chapter 20 Dekking et al


## Week 9
Dekking et al., Chapters 25 and 26
Evans & Rosenthal, Section 6.3.3

**Hypotheses** are different inferences made about a population parameter 

**Hypothesis Testing** is the process of formulating possible hypotheses which we can draw from an experiment, and choosing between two alternatives

The two hypotheses, or proposals we make during hypothesis testing are the:
	**Null Hypothesis**, denoted by $H_{0}$
		The null hypothesis is our primary assumption
		It is "innocent until proven guilty"
			Presumed to be true until the data provides convincing evidence against it
	The **Alternative Hypothesis**, denoted by $H_{1}$
		An alternative hypothesis away from the **Null Hypothesis** which we are looking to prove
		We are gathering evidence to prove

If we reject the **Null Hypothesis** we will accept $H_{1}$, This is *rejecting $H_{0}$ in favor of $H_{1}$*

A **Test Statistic** is any sample statistic, computed from a dataset, whose numerical value is used to decide whether we reject $H_{0}$
	A test statistic is any method/computation which we use to determine whether $H_{0}$ or $H_{1}$ is true
true
The **Rejection Region** is the set of possible values for a **Test Statistic** which a researcher will reject the **null hypothesis** for the **alternative hypothesis**

A **Type 1 Error** is when we reject the **null hypothesis** falsely
	When we reject the null hypothesis for the **alternative hypothesis**, when, the null hypothesis is actually correct
A **Type 2 Error** is when we accept the **null hypothesis** falsely
	When we accept the null hypothesis instead of the alternative hypothesis, when the alternative hypothesis is actually correct

The **Observed Significance Level** or **P-Value**, for a statistical test is the probability of observing a value of the **test statistic** that is contradictory to the null hypothesis, and supportive of the alternative hypothesis, when $H_{0}$ is true.
	The probability that the **test statistic** will reject the **null hypothesis**, when in fact, the null hypothesis is true
	The smaller the **P-Value**, the more we can trust the value of the **Test Statistic**

The **Significant Level** is the largest acceptable probability of committing a **Type 1** error, denoted by $\alpha$

## Week 10





