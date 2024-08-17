#statistics  
#uoft/sta238 

**Efficiency** is a measure of how good an [Estimator](Estimator.md) is at creating a specific [Estimate](Estimate.md)

An estimator $T_{1}$ is more [Efficient](.md) than an estimator $T_{2}$ if $Var(T_{2})<Var(T_{1})$, irrespective of the value of $\theta$

The [Mean Squared Error](Mean%20Squared%20Error.md) of an estimator $\hat \theta$ is $MSE(\hat \theta)=E[(\theta- \hat \theta)^{2}]=V(\hat \theta)+[B(\hat \theta)]^{2}$

> This is another way to calculate if one estimator performs better than another

 If $MSE(T_{1})<MSE(T_{2})$ for any parameter $\theta$, then $T_{1}$ is a more efficient estimator  
	This value is better because it takes into account the bias, and the variance.


