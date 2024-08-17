#statistics  
#uoft/sta237 

The **Variance** of a [Discrete Random Variable](Discrete%20Random%20Variable.md) is how much its [probabilities](Probability%20Mass%20Function.md) vary from the [Expected Value](Expected%20Value.md)

---
# Definition
The **Variance** of a [Discrete Random Variable](Discrete%20Random%20Variable.md) *X* is the number. $$Var(X)=E[(X-E[X])^{2}]$$ or alternatively,$$Var(X)=E[X^2]-(E[X])^2$$  
$E[X]$ is the [Expected Value](Expected%20Value.md) of X

## Estimators
An [Unbiased](../STA238%20Notes/Bias.md) estimator for the [Variance](.md) of a [Random Sample](Random%20Sample) is:  
$$S^{2}_{n}=\frac{1}{n-1}\sum\limits_{i=1}^{n}(X_{i}-\overline{X}_{n})^{2}$$

For any [Random Variable](../STA238%20Notes/Random%20Variable.md) $Y$ with $E[Y]=0$, we have  
$Var(Y)=E[Y^{2}]-(E[Y])^{2}=E[Y^{2}]$