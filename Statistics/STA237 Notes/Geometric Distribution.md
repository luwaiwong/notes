#statistics 
#uoft/sta237 

The **Geometric Distribution** is a *sequence* of [[Bernoulli distribution]] experiments (n *not* fixed) that continue until the first success is observed. A **Geometric distribution** must have:
1. Independent trials
2. Dichotomous trials("success", "failure")
3. Have constant $p$ across trials

---
# Definition
A [[Discrete Random Variable]] *X* has a **geometric distribution** with [[Probability]] *p*, if its probability mass function can be shown by $$p_{X}(k)=P(X=k) =(1-p)^{k-1}p \ \ \text{  for k = 1,2,...}$$ This distribution is denoted $Geo(p)$

# Values of Related Functions
Given $p$ trials
[[Expected Value]]: $$E(X)=\frac{1}{p}$$
[[Variance]]: $$Var(X)=\frac{1-p}{p^{2}}$$
[[Moment Generating Function]]: $$M_{X}{t}=\frac{pe^{t}}{1-e^{t}(1-p)}$$
# Example
The geometric distribution can model probability of flipping a head on the first try, or the probability of not flipping a head until the second, or third try. 
![[Pasted image 20231002221134.png]]