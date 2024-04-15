# STA238 Term Test Cheat Sheet      
SN:1008911108     Lu-Wai Wong

---
**Sample Formulas**
Sample Mean: $\overline{x}=\frac{1}{n}\sum\limits_{i=1}^{n}x_{i}$ |      Sample Variance: $S^{2}=\frac{1}{n-1}\sum\limits^{n}_{i=1}(x_{i}-\overline{x})^{2}$ |      Sample Standard Deviation: $S=\sqrt{S^{2}}$
Median Absolute Deviation (MAD): $\text{MAD} = \text{Median}(|x_{1}-\overline{x}|,|x_{2}-\overline{x},...,|x_{n}-\overline{x})$ , $\overline{x}=\text{Median}$ 
Interquartile Range(IQR): Distance between lower & upper quartiles = $q_{n}(0.75)-q_{n}(0.25)$

**Estimator**
$\theta$ is value of a parameter, $\hat\theta$ is point estimator for $\theta$
Bias: $B(\hat{\theta})=E(\hat{\theta})-\theta$
Mean Square Error: $MSE(\hat\theta)=E[(\hat\theta-\theta)^2]=V(\hat\theta)+[B(\hat\theta)]^{2}$

**Standard Error**
Standard Error: $\hat\sigma_{\hat p}=\sqrt{p\frac{(1-p)}{n}}$ |   2-Standard Error = $2\hat\sigma_{\hat p}$


**Discrete Random Variables**
Expected Value: $E(X)=\sum\limits_{x}xP(x)=\mu$ 
Variance: $V(X)=E[X-\mu]^{2}=E[X^{2}]-\mu^{2}$

**Expectation & Variance of Average**
Average of first *n* RV's in sequence: $\overline{X_{n}}=\frac{X_{1}+X_{2}+...+X_{n}}{n}$  $E(\overline{X_{n}})=\mu$, $Var(\overline{x_{n}})=\frac{\sigma^{2}}{n}$ 
Chebyshev's Inequality: For arbitrary RV $X$ and any $\epsilon > 0$, $P(|X-E(X)| \geq \epsilon)\leq \frac{1}{\epsilon^{2}}Var(X)$


**Law of Large Numbers**
Weak: $\lim_{x\rightarrow\infty}P(|\frac{S_{n}}{n}-\mu|\geq \epsilon)=0$ 
Strong: $P(\lim_{n\rightarrow\infty} \frac{S_{n}}{{n}}=\mu )=1$ 

First-Order Probabilistic Model: $y=\beta_{0}+\beta_{1}x+\epsilon$, $\epsilon =$ error

****