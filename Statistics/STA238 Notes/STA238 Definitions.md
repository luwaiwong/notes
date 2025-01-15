#statistics #uoft/sta238 

**Statistical Properties**
	  [[Mean]]: Average of a dataset
		  **Sample Mean**: $\overline{x}_{n}= \frac{1}{n}\sum\limits_{i=1}^{n}x_{i}$
	  [[Variance]]: Measure of 
		  **Sample Variance:**  $s^{2}_{n}=\frac{1}{n-1}\sum\limits_{i=1}^{n}(x_{i}-\overline{x}_{n})^{2}$
	  [[Standard Deviation]]
		  Sample Standard Deviation
	  [[Median Absolute Deviation]]
	  [[Interquartile Range (IQR)]] ^810bd0

**[[Random Variable|Random Variables]]**
	[[Discrete Random Variable]]
	[[Continuous Random Variable]]

**Sample Mean Values**
	Denoted $\overline X_{n}$, where $X$ is the original random variable, $n$ is number of samples which the random variable is made from. $E[X]=\mu, Var(X)=\sigma^{2}$ 
	**Expected Value:** $E[\overline X_{n}]=\mu$
	**Variance:** $Var(\overline X_{n})=\frac{\sigma^{2}}{n}$

**Law of Large Numbers**
	[[Law of Large Numbers|Weak Law]]:  $\lim_{n\rightarrow\infty} P(|\overline X_{n}-\mu|\geq \epsilon)=0$ 
	[[Law of Large Numbers|Strong Law]]: $P(lim_{n\rightarrow\infty}\overline{X}_{n}=\mu)=1$
	[[Chebyshev's Inequality]]: $a>0, \ P(|Y-E[Y]|\geq a)\leq \frac{1}{a^{2}}Var(Y)$
		Rearranged to be: $P(|Y-E(Y)|\leq a\sqrt{Var(Y)})\geq 1- \frac{1}{a^{2}}$

**Statistical Models**
	**First-Order Probabilistic Model**: $y=b_{0}+b_{1}x+\epsilon$
		$\epsilon=$ Random error component
	**Principle of Least Squares**: $g(b_{0},b_{1})=\sum\limits_{i=1}^{n}[y_{i}-b_{0}+b_{1}x_{i}]^{2}$
		Want to minimize value by changing $b_{0}, b_{1}$


**Estimators**
	[[Estimate]]
	[[Estimator]]: Denoted $\hat \theta$, an estimator for the actual value $\theta$
	[[Bias]]: $B(\hat \theta)=E[\hat \theta]-\theta$
	[[Mean Squared Error]]: $MSE(\hat \theta)=E[(\hat \theta- \hat \theta)^{2}]=V(\hat \theta)+[B(\hat \theta)]^{2}$

**Central Limit Theorem**
	Theorem$$Z_{n}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{Var(\overline X_{n})}}$$
	Also written as (Converting $E(\overline X_{n}$ and $Var(\overline X_{n})$ to equations for sample versions): $$Z_{n}=\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$$
	As $n\rightarrow \infty$, $Z_{n}$ will follow a standard normal distribution  $N(0,1)$

[[Estimator|Estimator]]: $\hat \theta$
	[[Bias]]: $B(\hat \theta)=E(\hat \theta)-\theta$
	**Unbiased**: $B(\hat \theta)=0$, $E(\hat \theta)= \theta$
	[[Mean Squared Error]]: $MSE(\hat \theta)=E[(\hat \theta- \hat \theta)^{2}]=V(\hat \theta)+[B(\hat \theta)]^{2}$

[[Sampling Distribution|Sampling Distributions]]

