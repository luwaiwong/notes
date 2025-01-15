#statistics #uoft/sta237 
A **Gamma Distribution** can be used to model the time until the $\alpha$th occurrence of an event

---
# Definition
A [[Continuous Random Variable]] $X$ has a **Gamma Distribution** with parameters $\alpha > 0$ and $\lambda > 0$ if its [[Probability Mass Function|Probability Density Function]] is given by $f(x) = 0$ for $x<0$ and $$f(x)=\frac{\lambda(\lambda x)^{\alpha-1}e^{-\lambda x}}{\Gamma(\alpha)}$$Where $\Gamma (\alpha)$ is a **normalizing constant** such that $f$ **integrates to 1**
This distribution is denoted $Gam(\alpha , \lambda)$

# Gamma Function
$\Gamma (\alpha)$ is the [[Gamma Function]], where $$\Gamma (\alpha)=\int_{0}^{\infty}x^{\alpha-1}e^{-x}dx$$
## Properties
- For $\alpha$ > 1, $\Gamma$($\alpha$)=$(\alpha - 1)\Gamma(\alpha-1)$
- If $k$ is a positive integer, $\Gamma(k)=(k-1)!$
- $\Gamma(\frac{1}{2})=\sqrt{\pi}$ S
# Values
Given $\alpha > 0$ and $\lambda > 0$:
[[Expected Value]]: $$E(X)=\frac{\alpha}{\lambda}$$
[[Variance]]:$$\frac{\alpha}{\lambda^2}$$
[[Moment Generating Function]]: $$M_X(t)=(\frac{\lambda}{\lambda-t})^{\alpha}, t<\lambda$$

# Examples
![[Pasted image 20231027105210.png]]