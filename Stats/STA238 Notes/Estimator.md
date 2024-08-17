#statistics  
#uoft/sta238 

An **Estimator** is a rule(typically a formula), which produces an [Estimate](Estimate.md)

> In STA238, Estimates are typically the parameters of the distribution of a set of data  
> An example of an **Estimator** would be the formula for [](STA238%20Definitions.md#^810bd0|Sample%20Mean,%20or%20Sample%20Variance)

---
# Error
The [Bias](Bias.md) of an **Estimator** is the difference from the [Expected Value](../STA237%20Notes/Expected%20Value.md) of an **Estimator**, to its actual value.

The **Bias** of an estimator $\hat \theta$ can be calculated by:  
	$B(\hat \theta)=E(\hat \theta)-\theta$

> An **Estimator** $\hat \theta$ is said to be **Unbiased**, if $B(\hat \theta)=0$

The [Mean Squared Error](Mean%20Squared%20Error.md) of an estimator $\hat \theta$ is $MSE(\hat \theta)=E[(\hat \theta- \hat \theta)^{2}]=V(\hat \theta)+[B(\hat \theta)]^{2}$