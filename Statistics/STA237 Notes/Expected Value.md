#statistics 
#uoft/sta237 

The **Expectation** or **Expected Value** of a [Random Variable](Discrete%20Random%20Variable.md) is the mean of all its probabilities

---
# Definition
## Random Variables
Given [Continuous Random Variable](Continuous%20Random%20Variable.md) $X$ taking the values $a_1,a_2,...$, The **Expectation** of a **random variable** is defined and notated as: $$E[X]=\Sigma_{i}a_{i}P(X=a_{i})=\Sigma_{i}a_{i}p(a_{i}) \text{ or, } \int_{-\infty}^{\infty}xP_X(x)dx$$
Where $x$ is the events/values of the **Discrete Random Variable** $X$
Described in words, the **Expected Value** of X is every possible event/value of X, **times** the **probability** of that value occurring
$P(X=a_i)$ is the [Probability Mass Function](Probability%20Mass%20Function.md) of $X$

## Joint Distributions

The [Expected Value](.md) of a [Joint Distribution](Joint%20Distribution.md) is: $$E(X)=\sum\limits_{\text{all y}} \sum\limits_{\text{all x}}xp_{X,Y}(x,y)$$


The [Expected Value](.md) of a [Joint Continuous Distribution](Joint%20Continuous%20Distribution.md) is: $$E(X)=\int_{-\infty}^{+\infty}\int_{-\infty}^{+\infty}xf_{X,Y}(x,y)dxdy$$

---

# Conditional Expectation
The **Conditional** [Expected Value](.md) of two [Discrete Random Variable](Discrete%20Random%20Variable.md)s is: $$E(X|Y=y) =\sum\limits_{all x}xp_{X|Y}(x|y)$$
The **Conditional** [Expected Value](.md) of two [Continuous Random Variable](Continuous%20Random%20Variable.md)s is:$$E(X|Y=y)=\int_{-\infty}^{+\infty}xf_{X|Y}(x|y)dx$$

---
# Moments
$E[X]$ is the **first moment** of a random variable X
$E[X^2]=\int_{-\infty}^{\infty}x^2p_{x}(x)dx$ is the **second moment** of X
$E(X^{i})$ is called the $i^{th}$ moment of X

What does this mean?
Is just the expected value, if you squared(exponent to the power of whatever moment) every possible event/value in the random variable

[Moment Generating Function](Moment%20Generating%20Function.md)s are functions which generate the **Moments** of a [Random Variable](../STA238%20Notes/Random%20Variable.md)