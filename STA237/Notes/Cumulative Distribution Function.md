#uoft/sta237 #statistics 

The **Cumulative Distribution Function** is a [Function](../../MAT235/Notes/Function.md) that describes the [Probability](Probability.md) in a [Random Variable](../../STA238/STA238%20Notes/Random%20Variable.md) that an [Event](Event.md) <= to the input will occur

Some [Continuous Random Variable](Continuous%20Random%20Variable.md)s cannot be specified with a **probability mass function**, so, the **Cumulative Distribution Function** of a random variable X lets us treat both discrete and continuous random variables the same way

---

# Definition
The **distribution function** $F$ of a random variable $X$ is the [Function](../../MAT235/Notes/Function.md) $F:\mathbb{R}\rightarrow[0,1]$, $$F(a) = P(X \leq a) \text{ for }-\infty<a<\infty$$
## Discrete Random Variable
Expressing the function in terms of the [Probability Mass Function](Probability%20Mass%20Function.md) *p* of *X*, if X has values $a_{1},a_{2},... s.t p(a_{i})> 0, p(a_{1})+p(a_{2})+...=1,$ $$F(a)=\Sigma_{a_{i}\leq a}p(a_{i})$$
## Continuous Random Variable


Both the [Probability Mass Function](Probability%20Mass%20Function.md) and the **Cumulative Distribution Function** of a discrete random variable *X* contain the all the probabilistic information of *X*, in other words, you can determine the *probability distribution* of *X* with either. 
**Properties

1. For $a\leq b, \ F(a)\leq F(b)$. this is a because $a \leq b$ implies that the event {$X\leq a$} is contained in the event {$X\leq b$} (Is **nondecreasing**)
2. $F(a)$ is a [Probability](Probability.md), this the value is always between 0 and 1, Moreover, $$\lim_{a\rightarrow +\infty} F(a) = \lim_{a\rightarrow +\infty}P(X\leq a) = 1$$$$\lim_{a\rightarrow -\infty} F(a) = \lim_{a\rightarrow -\infty}P(X\leq a) = 0$$ 
3. $F$ is right-continuous: $$\lim_{\epsilon \downarrow0}F(a+\epsilon) = F(a)$$


See [](Probability%20Mass%20Function.md#^f17a84) for an example