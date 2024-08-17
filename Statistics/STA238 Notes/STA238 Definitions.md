#statistics #uoft/sta238 

**Statistical Properties**  
	  [Mean](Mean.md): Average of a dataset  
		  **Sample Mean**: $\overline{x}_{n}= \frac{1}{n}\sum\limits_{i=1}^{n}x_{i}$  
	  [Variance](../STA237%20Notes/Variance.md): Measure of  
		  **Sample Variance:**  $s^{2}_{n}=\frac{1}{n-1}\sum\limits_{i=1}^{n}(x_{i}-\overline{x}_{n})^{2}$  
	  [Standard Deviation](../STA237%20Notes/Standard%20Deviation.md)  
		  Sample Standard Deviation  
	  [Median Absolute Deviation](Median%20Absolute%20Deviation.md)  
	  [Interquartile Range (IQR)](Interquartile%20Range%20(IQR)) ^810bd0

**[Random Variables](Random%20Variable.md)**  
	[Discrete Random Variable](../STA237%20Notes/Discrete%20Random%20Variable.md)  
	[Continuous Random Variable](../STA237%20Notes/Continuous%20Random%20Variable.md)

**Sample Mean Values**  
	Denoted $\overline X_{n}$, where $X$ is the original random variable, $n$ is number of samples which the random variable is made from. $E[X]=\mu, Var(X)=\sigma^{2}$  
	**Expected Value:** $E[\overline X_{n}]=\mu$  
	**Variance:** $Var(\overline X_{n})=\frac{\sigma^{2}}{n}$

**Law of Large Numbers**  
	[Weak Law](Law%20of%20Large%20Numbers.md):  $\lim_{n\rightarrow\infty} P(|\overline X_{n}-\mu|\geq \epsilon)=0$  
	[Strong Law](Law%20of%20Large%20Numbers.md): $P(lim_{n\rightarrow\infty}\overline{X}_{n}=\mu)=1$  
	[Chebyshev's Inequality](Chebyshev's%20Inequality.md): $a>0, \ P(|Y-E[Y]|\geq a)\leq \frac{1}{a^{2}}Var(Y)$  
		Rearranged to be: $P(|Y-E(Y)|\leq a\sqrt{Var(Y)})\geq 1- \frac{1}{a^{2}}$

**Statistical Models**  
	**First-Order Probabilistic Model**: $y=b_{0}+b_{1}x+\epsilon$  
		$\epsilon=$ Random error component  
	**Principle of Least Squares**: $g(b_{0},b_{1})=\sum\limits_{i=1}^{n}[y_{i}-b_{0}+b_{1}x_{i}]^{2}$  
		Want to minimize value by changing $b_{0}, b_{1}$


**Estimators**  
	[Estimate](Estimate.md)  
	[Estimator](Estimator.md): Denoted $\hat \theta$, an estimator for the actual value $\theta$  
	[Bias](Bias.md): $B(\hat \theta)=E[\hat \theta]-\theta$  
	[Mean Squared Error](Mean%20Squared%20Error.md): $MSE(\hat \theta)=E[(\hat \theta- \hat \theta)^{2}]=V(\hat \theta)+[B(\hat \theta)]^{2}$

**Central Limit Theorem**  
	Theorem$$Z_{n}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{Var(\overline X_{n})}}$$  
	Also written as (Converting $E(\overline X_{n}$ and $Var(\overline X_{n})$ to equations for sample versions): $$Z_{n}=\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$$  
	As $n\rightarrow \infty$, $Z_{n}$ will follow a standard normal distribution  $N(0,1)$

[Estimator](Estimator.md): $\hat \theta$  
	[Bias](Bias.md): $B(\hat \theta)=E(\hat \theta)-\theta$  
	**Unbiased**: $B(\hat \theta)=0$, $E(\hat \theta)= \theta$  
	[Mean Squared Error](Mean%20Squared%20Error.md): $MSE(\hat \theta)=E[(\hat \theta- \hat \theta)^{2}]=V(\hat \theta)+[B(\hat \theta)]^{2}$

[Sampling Distributions](Sampling%20Distribution.md)

