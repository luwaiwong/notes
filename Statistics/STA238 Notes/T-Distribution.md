#statistics  
#uoft/sta238 

The **T-Distribution** with $n$ *degrees of freedom* is a distribution, similar to the [Standard Normal Distribution](Standard%20Normal%20Distribution.md)  
	As $n\rightarrow \infty$, the [T-Distribution](.md) approaches the [Standard Normal Distribution](Standard%20Normal%20Distribution.md)

> From the [Central Limit Theorem](Central%20Limit%20Theorem.md)  
> 	Similar to how the [Sample Mean](Sample%20Mean.md) can be approximated to a [Standard Normal Distribution](Standard%20Normal%20Distribution.md) when we know the [Expected Value](../STA237%20Notes/Expected%20Value.md) and the [Variance](../STA237%20Notes/Variance.md) of the underlying [Random Variable](Random%20Variable.md)  
> 	When we don't know the underlying [Variance](../STA237%20Notes/Variance.md) of [Random Variable](Random%20Variable.md) of the [Sample Mean](Sample%20Mean.md), we can approximate it with the **T-Distribution** instead, with $n-1$ degrees of freedom depending on the number of samples taken for the [Sample Mean](Sample%20Mean.md)

---
# Definition
A [Continuous Random Variable](../STA237%20Notes/Continuous%20Random%20Variable.md) has a **T-Distribution** with *parameter $m\geq 1$*, if its probability density is given by  
$$f_{x}=k_{m}(1+\frac{x^{2}}{m})^{-\frac{m+1}{2}}$$  
	For $-\infty<x<\infty$  
	And where $k_{m}=\frac{ \Gamma\frac{m+1}{2}}{\Gamma(\frac{m}{2})\sqrt{m\pi}}$  
	Where $\Gamma$ is the [Gamma Function](Gamma%20Function) $\Gamma (\alpha)=\int_{0}^{\infty}x^{\alpha-1}e^{-x}dx$

This distribution is referred to as the **t-distribution** with *m degrees of freedom*  
	The **T-Distribution** approaches the [Standard Normal Distribution](Standard%20Normal%20Distribution.md) as $m \rightarrow  \infty$

>When variance is unknown $\frac{\overline X_{n}-\mu}{\sqrt{\frac{S_{2}^{n}}{n}}}$ follows a $t(n-1)$ distribution regardless of $\mu$ and $\sigma$ rather than the [Standard Normal Distribution](Standard%20Normal%20Distribution.md)  
>Generally, we are provided a t-chart, giving us t-values for different *degrees of freedom*




