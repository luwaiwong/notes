#statistics #uoft/sta237

[STA237+238 Dekking Textbook](STA237+238%20Dekking%20Textbook.pdf)

# Course Overview
[R Programming Language](R%20Programming%20Language.md)  
[Manipulating Probabilities](Manipulating%20Probabilities.md)

## Definitions
### Terms to describe experiments
[Statistics](Statistics.md)  
[Outcomes](Outcomes.md)  
[Sample Space](Sample%20Space.md)  
[Event](Event.md)  
[Probability](Probability.md)  
[Conditional Probability](Conditional%20Probability.md)  
[Independence](Independence.md)  
<<<<<<< Updated upstream:Statistics/STA237 Notes/STA237 Notes.md
[Quantile(Percentile)](Percentile)).md)
=======
[Quantile(Percentile)](Quantile(Percentile).md)
>>>>>>> Stashed changes:Stats/STA237 Notes/STA237 Notes.md

### Random Variables and their Functions
[Discrete Random Variable](Discrete%20Random%20Variable.md)  
	[Probability Mass Function](Probability%20Mass%20Function.md)  
[Continuous Random Variable](Continuous%20Random%20Variable.md)  
	[Probability Density Function](Probability%20Density%20Function.md)  
[Cumulative Distribution Function](Cumulative%20Distribution%20Function.md)

### Joint Distributions
[Joint Distribution](Joint%20Distribution.md)  
	[Joint Probability Mass Function](Joint%20Probability%20Mass%20Function.md)  
[Joint Continuous Distribution](Joint%20Continuous%20Distribution.md)  
	[Joint Probability Density Function](Joint%20Probability%20Density%20Function.md)  
[Joint Cumulative Distribution Function](Joint%20Cumulative%20Distribution%20Function.md)
### Properties of Random Variables
[Variance](Variance.md)  
	[Covariance](Covariance.md)  
[Correlation Coefficient](Correlation%20Coefficient.md)  
[Standard Deviation](Standard%20Deviation.md)  
[Expected Value](Expected%20Value.md)

### Probability Distributions
[Probability Distribution](../STA238%20Notes/Probability%20Distribution.md)  
For **Discrete Random Variables**  
	[Binomial Distribution](Binomial%20Distribution.md)  
		[Bernoulli distribution](Bernoulli%20distribution.md)  
		[Negative Binomial Distribution](Negative%20Binomial%20Distribution.md)  
	[Geometric Distribution](Geometric%20Distribution.md)  
	[Hypergeometric Distribution](Hypergeometric%20Distribution.md)  
	[Discrete Uniform Distribution](Discrete%20Uniform%20Distribution.md)  
	[Poisson Distribution](Poisson%20Distribution.md)

For **Continuous Random Variables**  
	[Continuous Uniform Distribution](Continuous%20Uniform%20Distribution.md)  
	[Gamma Distribution](Gamma%20Distribution.md)  
	[Pareto Distribution](Pareto%20Distribution.md)  
	[Normal Distribution](Normal%20Distribution.md)  
	[Exponential Distribution](Exponential%20Distribution.md)
## Laws
[Law of total probability](Law%20of%20total%20probability.md)  
[Multiplication Rule](Multiplication%20Rule.md)  
[Bayes Rule](Bayes%20Rule.md)

## Lecture Notes
[STA237 WEEK 2 Lecture Slides](STA237%20WEEK%202%20Lecture%20Slides.pdf)  
[STA237 Week 2 Lecture Notes](STA237%20Week%202%20Lecture%20Notes.md)  
[STA237 Week 3 Lecture Slides](STA237%20Week%203%20Lecture%20Slides.pdf)

---
# Textbook Notes
## Week 1
Probability and statistics are cool I guess
## Week 2
The goal of [Statistics](Statistics.md) is to model phenomena as [Outcomes](Outcomes.md) of an experiment. Outcomes are elements of a [Sample Space](Sample%20Space.md) ($\Omega$), subsets of $\Omega$ are called [Event](Event.md)s, and events are all assigned a [Probability](Probability.md).
## Week 3: Conditional Probability

Lets say we have two events, R and L, and we know that one event is true, and we wonder if the other is true. This would be the *[Conditional Probability](Conditional%20Probability.md)of R given L*, and it would be written as  
$$P(R|L) \ =\ ?$$  
**The Multiplication Rule**  
For any Events A and C  
$$P(A\cap C) \ = \ P(A|C) \cdot P(C)$$  
**[Independence](Independence.md)**  
Given two events A and B, you show they are independent by proving just one of the following:  
$$P(A|B) \ = \ P(A)$$$$P(B|A) \ = \ P(A)$$
## Week 4: Discrete Random Variables
[Discrete Random Variable](Discrete%20Random%20Variable.md)s describe experiments by their outcomes. A discrete random variable $X$ "transforms" a sample space $\Omega$ of all the results of an experiment to what we are interested in.

[Probability Mass Function](Probability%20Mass%20Function.md)s  can be used to convert [Discrete Random Variable](Discrete%20Random%20Variable.md)s to more useful probabilities, and [Cumulative Distribution Function](Cumulative%20Distribution%20Function.md) also help us analyze discrete and continuous random variables

[Expected Value](Expected%20Value.md), or the mean of a random variable is notated and can be calculated by: $$E[X]=\Sigma_{i}a_{i}P(X=a_{i})=\Sigma_{i}a_{i}p(a_{i})$$ $E(X^{i})$ is called the $i^{th}$ moment of X

The [Variance](Variance.md) of a random variable is the number $$Var(X)=E[(X-E[X])^{2}]$$ or $$Var(X)=E[X^2]-(E[X])^2$$  
The [Standard Deviation](Standard%20Deviation.md) of a random variable is $SD(X)=\sqrt{Var(X)}$
### Distributions
The [Bernoulli distribution](Bernoulli%20distribution.md) and [Binomial Distribution](Binomial%20Distribution.md) are used to model an experiment with two possible outcomes

For an experiment with these properties:  
1. fixed number of trials (𝑛)
2. independent trials  
3. dichotomous trials (“success”, “failure”)  
4. constant probability of success, 𝑝, across trials  
The [Binomial Distribution](Binomial%20Distribution.md) can help us determine the probability of any event.

Say we want the probability of flipping a head on the first try, or the probability of not flipping a head until the second, or third try? These can be modeled with the [Geometric Distribution](Geometric%20Distribution.md)


### Probability Distributions
[Probability Distributions](../STA238%20Notes/Probability%20Distribution.md) help describe different types of experiments, and help us graph and model the probability of experiments

The [Bernoulli distribution](Bernoulli%20distribution.md) and [Binomial Distribution](Binomial%20Distribution.md) are used to model an experiment with two possible outcomes. A [Negative Binomial Distribution](Negative%20Binomial%20Distribution.md)

The [Geometric Distribution](Geometric%20Distribution.md) is a *sequence* of [Bernoulli distribution](Bernoulli%20distribution.md) experiments (n *not* fixed) that continue until the first success is observed. A 

A [Hypergeometric Distribution](Hypergeometric%20Distribution.md) describes the number of success pulled out of a random sample.

A [Discrete Uniform Distribution](Discrete%20Uniform%20Distribution.md) describes a random experiment with equally likely outcomes 

The [Poisson Distribution](Poisson%20Distribution.md) helps describe an event which has a very low probability of occurring, but the number of trials, or timespan or space is so large, that the event is bound to happen sometimes. 

---
## Week 5
**Dekking et al. (2005) problems for this week: _4.4, 4.5, 4.10_.**

Various distributions, see **Week 4**

****
## Week 6 - 7
*Week 6:* **Dekking et al. (2005): _Chapter 5 (5.1 - 5.3, 5.5, 5.6), Chapter 6 (6.1 - 6.2) and Chapter 7 (7.1-7.4)**  
Week 7: **Dekking et al. (2005): Chapter 5 (5.1 - 5.6), Chapter 6 (6.1 - 6.2) and Chapter 7 (7.1-7.4)**

Some experiments take values on a **continuous scale**, for example, the [Probability](Probability.md) that a bride collapses with different load weights

### Continuous Random Variable
A [Discrete Random Variable](Discrete%20Random%20Variable.md) describes the probability that events that can be described with discrete numbers, such as rolling a number on a dice. But [Continuous Random Variable](Continuous%20Random%20Variable.md)s describe experiments that can be described on a **continuous scale**.  
	The [Probability Density Function](Probability%20Density%20Function.md) for a [Continuous Random Variable](Continuous%20Random%20Variable.md) is 0 at a single point, but has a value over an interval  
	The [Cumulative Distribution Function](Cumulative%20Distribution%20Function.md) is the [Integral](../../Mathematics/MAT235%20Notes/Integral.md) of the [Probability Mass Function](Probability%20Mass%20Function.md)  
The probability of a value occurring over an interval $(a,b)$ can be determined as the integral from $a$ to $b$

### Distributions
A [Continuous Random Variable](Continuous%20Random%20Variable.md) has a [Continuous Uniform Distribution](Continuous%20Uniform%20Distribution.md) if every value has the same probability of occurring

An [Exponential Distribution](Exponential%20Distribution.md) models an experiment where the [Probability Density Function](Probability%20Density%20Function.md) follows an exponential curve


A [Normal Distribution](Normal%20Distribution.md) is the most common distribution, it has a bell curved shape

### Quantiles and Percentiles
<<<<<<< Updated upstream:Statistics/STA237 Notes/STA237 Notes.md
A [[Percentile)](Percentile|Quantile(Percentile|[Percentile)](Percentile)](Percentile)).md) describes the value at which the [Cumulative Distribution Function](Cumulative%20Distribution%20Function.md) up to that point, equals a certain percentage value  
=======
A [Quantile(Percentile)](Quantile(Percentile).md) describes the value at which the [Cumulative Distribution Function](Cumulative%20Distribution%20Function.md) up to that point, equals a certain percentage value  
>>>>>>> Stashed changes:Stats/STA237 Notes/STA237 Notes.md
For example  
	The value $q$ at which a [Continuous Random Variable](Continuous%20Random%20Variable.md) $T$ has $$P(T\leq q)=0.1$$Is called the 0.1th *quantile*, or 10th *percentile* of the distribution

### Expected Values & Variance
The [Expected Value](Expected%20Value.md) is the mean of all the probability of a [Random Variable](../STA238%20Notes/Random%20Variable.md)

The [Variance](Variance.md) of a [Random Variable](../STA238%20Notes/Random%20Variable.md) describes the spread around the mean of a random variable

---
## Week 8
*Week 8:* **Dekking et al. (2005): Chapter 9 (9.1-9.4)**

### Joint Distribution
The [Joint Distribution](Joint%20Distribution.md) of two or more [Random Variable](../STA238%20Notes/Random%20Variable.md)s describes the probability distributions of those *random variables* having the same value  
	Joint probability functions can be constructed with as many random variables as required

The [Marginal Distribution](Marginal%20Distribution.md) of a [Joint Distribution](Joint%20Distribution.md) describes the probability distributions of only one of the variables occurring
> [!quote] From Wikipedia  
> Given a known [joint distribution](https://en.wikipedia.org/wiki/Joint_distribution "Joint distribution") of two **discrete** [random variables](https://en.wikipedia.org/wiki/Random_variable "Random variable"), say, X and Y, the marginal distribution of either variable – X for example – is the [probability distribution](https://en.wikipedia.org/wiki/Probability_distribution "Probability distribution") of X when the values of Y are not taken into consideration

### For Discrete Random Variables
The [Joint Probability Mass Function](Joint%20Probability%20Mass%20Function.md) is like the [Probability Mass Function](Probability%20Mass%20Function.md), it describes the probability of a [Joint Distribution](Joint%20Distribution.md) with [Discrete Random Variable](Discrete%20Random%20Variable.md)s
> The **Joint PMF** of [Discrete Random Variable](Discrete%20Random%20Variable.md)s $X$ and $Y$ is: $$P_{X,Y}(x,y)=P(X=x,Y=y)$$

The [Marginal Probability Mass Function](Marginal%20Probability%20Mass%20Function.md) describes the probability of one of the [Random Variable](../STA238%20Notes/Random%20Variable.md)s in a [Joint Distribution](Joint%20Distribution.md) occurring
> The **Marginal PMF** of [Discrete Random Variable](Discrete%20Random%20Variable.md)s $X$ and $Y$ given their [Joint Probability Mass Function](Joint%20Probability%20Mass%20Function.md) is: $$P_{X}(x)=\sum\limits_{\text{all y}}P_{(X,Y)}(x,y) \ \text{ and } \ P_{Y}(y)=\sum\limits_{\text{all x}}P_{(X,Y)}(x,y)$$

### For Continuous Random Variables
A [Joint Continuous Distribution](Joint%20Continuous%20Distribution.md) specifically describes a [Joint Distribution](Joint%20Distribution.md) with [Continuous Random Variable](Continuous%20Random%20Variable.md)s

The [Joint Probability Density Function](Joint%20Probability%20Density%20Function.md) is like the [Probability Density Function](Probability%20Density%20Function.md), it describes the probability of a [Joint Distribution](Joint%20Distribution.md) with [Continuous Random Variable](Continuous%20Random%20Variable.md)s

The [Marginal Probability Density Function](Marginal%20Probability%20Density%20Function.md) describes the probability of one of the [Continuous Random Variable](Continuous%20Random%20Variable.md)s in a  [Joint Continuous Distribution](Joint%20Continuous%20Distribution.md) occurring
>Let $f$ be the [Joint Probability Mass Function](Joint%20Probability%20Mass%20Function.md) for [Continuous Random Variable](Continuous%20Random%20Variable.md)s of $X$ and $Y$. The **Marginal Probability Densities** of $X$ and $Y$ are: $$f_{X}(x)=\int_{-\infty}^{\infty}f(x,y)dy \ \text{ and } \ f_{Y}(y)=\int_{-\infty}^{\infty}f(x,y)dx$$

The equations of [Joint Distribution](Joint%20Distribution.md)s for Discrete Random Variables and Continuous Random Variables are very similar in idea, but continuous random variables use [Integral](../../Mathematics/MAT235%20Notes/Integral.md)s to sum the [Probability Density Function](Probability%20Density%20Function.md)
### Joint Cumulative Distribution
The [Joint Cumulative Distribution Function](Joint%20Cumulative%20Distribution%20Function.md) is like the [Cumulative Distribution Function](Cumulative%20Distribution%20Function.md), it describes the probability that an event <= the input occurs
>The **Joint CDF** of [Discrete Random Variable](Discrete%20Random%20Variable.md)s $X$ and $Y$ is: $$P_{X,Y}(x,y)=P(X\leq x,Y\leq y)$$

---
## Week 9
*Week 9:* **Dekking et al. (2005): Chapter 9 (9.1-9.4) & Chapter 10 (10.1-10.3)**

### Conditional Probability 
The [Conditional Probability](Conditional%20Probability.md) of [Discrete Random Variable](Discrete%20Random%20Variable.md)s $X$ and $Y$ describe the probability of the probability of one random variable, given the other happening
> The Conditional Probability of $Y$ given $X$, or $X$ given $Y$ is: $$P_{Y|X}(y|x)=\frac{P_{X,Y}(x,y)}{P_{x}(x)} \ \text{ and } \ P_{X|Y}(x|y)=\frac{P_{X,Y}(x,y)}{P_{Y}(y)}$$

### Expected Value
Remember, expected value gives us the **mean** of the probability distribution

>The **Conditional** [Expected Value](Expected%20Value.md) of two [Discrete Random Variable](Discrete%20Random%20Variable.md)s is: $$E(X|Y=y) =\sum\limits_{all x}xp_{X|Y}(x|y)$$  
>The **Conditional** [Expected Value](Expected%20Value.md) of two [Continuous Random Variable](Continuous%20Random%20Variable.md)s is:$$E(X|Y=y)=\int_{-\infty}^{+\infty}xf_{X|Y}(x|y)dx$$

>The [Expected Value](Expected%20Value.md) of a [Joint Distribution](Joint%20Distribution.md) is: $$E(X)=\sum\limits_{\text{all y}} \sum\limits_{\text{all x}}xp_{X,Y}(x,y)$$  
>The [Expected Value](Expected%20Value.md) of a [Joint Continuous Distribution](Joint%20Continuous%20Distribution.md) is: $$E(X)=\int_{-\infty}^{+\infty}\int_{-\infty}^{+\infty}xf_{X,Y}(x,y)dxdy$$
### Independence
Two [Random Variable](../STA238%20Notes/Random%20Variable.md)s $X$ and $Y$ are [Independent](Independence.md) if the probability of one does not influence the other
> $X$ and $Y$ are *Independent* if $$P(X\leq a,Y\leq b)=P(X\leq a)P(Y\leq b)$$or, $$F(a,b)=F_{X}(a)F_{Y}(b)$$For all possible values $a$ and $b$  
> If these are not satisfied, then the Random Variables $X$ and $Y$ are **Dependent**

### Covariance & Correlation
> Recall: The [Variance](Variance.md) of a random variable is a measure of its *variability*

The [Covariance](Covariance.md) of two [Random Variable](../STA238%20Notes/Random%20Variable.md)s is a measure of their *joint variability*, or their *degree of association*
> Let $X$ and $Y$ be two random variables. The [Covariance](Covariance.md) between $X$ and $Y$ is defined by $$Cov(X,Y)=E[(X-E[X])(Y-E[Y])]$$Alternatively, $$Cov(X,Y)=E[XY]-E[X]E[Y]$$

The [Correlation Coefficient](Correlation%20Coefficient.md) describes the correlation between two [Random Variable](../STA238%20Notes/Random%20Variable.md)s
> Let $X$ and $Y$ be two *random variables*. The [Correlation Coefficient](Correlation%20Coefficient.md) $\rho(X,Y)$ is defined to be $0$ if $Var(X)=0$ or $Var(Y)=0$, and otherwise: $$\rho(X,Y)=\frac{Cov(X,Y)}{\sqrt{Var(X)Var(Y)}}$$ 

==Note this down sometime==  
![Pasted image 20231125204119](Attachments/Pasted%20image%2020231125204119.png) 


---
## Week 10
*No* readings from Dekking et al (2005) as it does not align well with what we are doing this week!

Instead see **Wagaman & Dobrow (2021)** (Optional textbook listed in syllabus which is available electronically through U of T Libraries): **Sections 8.1 & 8.5**



---
## Week 11
Dekking et al. (2005):  **Chapter 13 (13.1 - 13.3)** & **Chapter 14 (14.1-14.2)**




---
## Week 12