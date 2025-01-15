#statistics 
#uoft/sta238 

The **T-Distribution** with $n$ *degrees of freedom* is a distribution, similar to the [[Standard Normal Distribution]]
	As $n\rightarrow \infty$, the [[T-Distribution]] approaches the [[Standard Normal Distribution]]

> From the [[Central Limit Theorem]]
> 	Similar to how the [[Sample Mean]] can be approximated to a [[Standard Normal Distribution]] when we know the [[Expected Value]] and the [[Variance]] of the underlying [[Random Variable]]
> 	When we don't know the underlying [[Variance]] of [[Random Variable]] of the [[Sample Mean]], we can approximate it with the **T-Distribution** instead, with $n-1$ degrees of freedom depending on the number of samples taken for the [[Sample Mean]]

---
# Definition
A [[Continuous Random Variable]] has a **T-Distribution** with *parameter $m\geq 1$*, if its probability density is given by 
$$f_{x}=k_{m}(1+\frac{x^{2}}{m})^{-\frac{m+1}{2}}$$
	For $-\infty<x<\infty$
	And where $k_{m}=\frac{ \Gamma\frac{m+1}{2}}{\Gamma(\frac{m}{2})\sqrt{m\pi}}$
	Where $\Gamma$ is the [[Gamma Function]] $\Gamma (\alpha)=\int_{0}^{\infty}x^{\alpha-1}e^{-x}dx$

This distribution is referred to as the **t-distribution** with *m degrees of freedom*
	The **T-Distribution** approaches the [[Standard Normal Distribution]] as $m \rightarrow  \infty$

>When variance is unknown $\frac{\overline X_{n}-\mu}{\sqrt{\frac{S_{2}^{n}}{n}}}$ follows a $t(n-1)$ distribution regardless of $\mu$ and $\sigma$ rather than the [[Standard Normal Distribution]]
>Generally, we are provided a t-chart, giving us t-values for different *degrees of freedom*




