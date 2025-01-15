#statistics  
#uoft/sta238 

**Bootstrapping** is a method to extrapolate additional data from a finite set of observations  
	Bootstrapping can be used to estimate the distribution of a set of random data

The idea of bootstrapping is to estimate the [Cumulative Distribution Function](../STA237%20Notes/Cumulative%20Distribution%20Function.md) based on an observed sample, try to recreate the probability distribution based on what we observe, and then take random samples of our *estimated distribution function*

---

## Bootstrap Sample
Lets say we have a [Random Sample](Random%20Sample.md) $X_{1},X_{2},...,X_{n}$ from the [Cumulative Distribution Function](../STA237%20Notes/Cumulative%20Distribution%20Function.md) $F$ (where $F$ is unknown)  
We then compute an *estimate* $\hat F$ for the distribution function $F$  
The **Bootstrap Sample** is denoted by:  
	$X^{*}_{1}, X^{*}_{2},...,X^{*}_{n}$  
	And is a random sample from $\hat F$, the estimated distribution function of the original observation

## Types of Bootstrapping
There are multiple way that we can compute our *estimate* $\hat F$ for the distribution function $F$

### Empirical Bootstrap
^1dc228

When we have no idea of the type of $F$, we can estimate $\hat F$ with the [Empirical Cumulative Distribution Function](Empirical%20Cumulative%20Distribution%20Function.md) where:  
$$\hat F(x)=F_{n}(x)=\frac{\text{number of elements in dataset}\leq x}{n}$$  
	When estimating $F$ with the **empirical Distribution function**, the corresponding [Bootstrap](.md) is called the [Empirical Bootstrap](Empirical%20Bootstrap)

### Parametric Bootstrap
If we do have an idea of the type of $F$, and we can construct a [Parametric Model](Parametric%20Model)  of which we don't know the true parameters parameters, Than our [Bootstrap](.md) can be done with a model where we estimate the parameters of $F$

In this case, the distribution function would be determined by a parameter, or a vector of parameters $\theta$  
We can [Estimate](Estimate.md) the parameter $\theta$ with an [Estimator](Estimator.md) $\hat \theta$ and estimate $F$ with $\hat F = F_{\hat \theta}$  
	The bootstrap done with this distribution is called the **Parametric Bootstrap**

>Often the parametric bootstrap approximation is better than the empirical bootstrap approximation