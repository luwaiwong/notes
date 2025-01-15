#statistics 
#uoft/sta237 

The **Variance** of a [[Discrete Random Variable]] is how much its [[Probability Mass Function|probabilities]] vary from the [[Expected Value]]

---
# Definition
The **Variance** of a [[Discrete Random Variable]] *X* is the number. $$Var(X)=E[(X-E[X])^{2}]$$ or alternatively,$$Var(X)=E[X^2]-(E[X])^2$$
$E[X]$ is the [[Expected Value]] of X

## Estimators
An [[Bias|Unbiased]] estimator for the [[Variance]] of a [[Random Sample]] is [[Sample Variance]]:
$$S^{2}_{n}=\frac{1}{n-1}\sum\limits_{i=1}^{n}(X_{i}-\overline{X}_{n})^{2}$$

For any [[Random Variable]] $Y$ with $E[Y]=0$, we have
$Var(Y)=E[Y^{2}]-(E[Y])^{2}=E[Y^{2}]$