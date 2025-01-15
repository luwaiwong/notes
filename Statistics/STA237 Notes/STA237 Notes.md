#statistics #uoft/sta237

[[STA237+238 Dekking Textbook.pdf]]

# Course Overview
[[R Programming Language]]
[[Manipulating Probabilities]]

## Definitions
### Terms to describe experiments
[[Statistics]]
[[Outcomes]]
[[Sample Space]]
[[Event]]
[[Probability]]
[[Conditional Probability]]
[[Independence]]
[[Quantile(Percentile)]]

### Random Variables and their Functions
[[Discrete Random Variable]]
	[[Probability Mass Function]]
[[Continuous Random Variable]]
	[[Probability Density Function]]
[[Cumulative Distribution Function]]

### Joint Distributions
[[Joint Distribution]]
	[[Joint Probability Mass Function]]
[[Joint Continuous Distribution]]
	[[Joint Probability Density Function]]
[[Joint Cumulative Distribution Function]]
### Properties of Random Variables
[[Variance]]
	[[Covariance]]
[[Correlation Coefficient]]
[[Standard Deviation]]
[[Expected Value]]

### Probability Distributions
[[Probability Distribution]]
For **Discrete Random Variables**
	[[Binomial Distribution]]
		[[Bernoulli distribution]]
		[[Negative Binomial Distribution]]
	[[Geometric Distribution]]
	[[Hypergeometric Distribution]]
	[[Discrete Uniform Distribution]]
	[[Poisson Distribution]]

For **Continuous Random Variables**
	[[Continuous Uniform Distribution]]
	[[Gamma Distribution]]
	[[Pareto Distribution]]
	[[Normal Distribution]]
	[[Exponential Distribution]]
## Laws
[[Law of total probability]]
[[Multiplication Rule]]
[[Bayes Rule]]

## Lecture Notes
[[STA237 WEEK 2 Lecture Slides.pdf]]
[[STA237 Week 2 Lecture Notes]]
[[STA237 Week 3 Lecture Slides.pdf]]

---
# Textbook Notes
## Week 1
Probability and statistics are cool I guess
## Week 2
The goal of [[Statistics]] is to model phenomena as [[Outcomes]] of an experiment. Outcomes are elements of a [[Sample Space]] ($\Omega$), subsets of $\Omega$ are called [[Event]]s, and events are all assigned a [[Probability]].
## Week 3: Conditional Probability

Lets say we have two events, R and L, and we know that one event is true, and we wonder if the other is true. This would be the *[[Conditional Probability ]]of R given L*, and it would be written as 
$$P(R|L) \ =\ ?$$
**The Multiplication Rule**
For any Events A and C
$$P(A\cap C) \ = \ P(A|C) \cdot P(C)$$
**[[Independence]]**
Given two events A and B, you show they are independent by proving just one of the following:
$$P(A|B) \ = \ P(A)$$$$P(B|A) \ = \ P(A)$$
## Week 4: Discrete Random Variables
[[Discrete Random Variable]]s describe experiments by their outcomes. A discrete random variable $X$ "transforms" a sample space $\Omega$ of all the results of an experiment to what we are interested in.

[[Probability Mass Function]]s  can be used to convert [[Discrete Random Variable]]s to more useful probabilities, and [[Cumulative Distribution Function]] also help us analyze discrete and continuous random variables

[[Expected Value]], or the mean of a random variable is notated and can be calculated by: $$E[X]=\Sigma_{i}a_{i}P(X=a_{i})=\Sigma_{i}a_{i}p(a_{i})$$ $E(X^{i})$ is called the $i^{th}$ moment of X

The [[Variance]] of a random variable is the number $$Var(X)=E[(X-E[X])^{2}]$$ or $$Var(X)=E[X^2]-(E[X])^2$$
The [[Standard Deviation]] of a random variable is $SD(X)=\sqrt{Var(X)}$
### Distributions
The [[Bernoulli distribution]] and [[Binomial Distribution]] are used to model an experiment with two possible outcomes

For an experiment with these properties:  
1. fixed number of trials (𝑛)
2. independent trials  
3. dichotomous trials (“success”, “failure”)  
4. constant probability of success, 𝑝, across trials
The [[Binomial Distribution]] can help us determine the probability of any event.

Say we want the probability of flipping a head on the first try, or the probability of not flipping a head until the second, or third try? These can be modeled with the [[Geometric Distribution]]


### Probability Distributions
[[Probability Distribution|Probability Distributions]] help describe different types of experiments, and help us graph and model the probability of experiments

The [[Bernoulli distribution]] and [[Binomial Distribution]] are used to model an experiment with two possible outcomes. A [[Negative Binomial Distribution]]

The [[Geometric Distribution]] is a *sequence* of [[Bernoulli distribution]] experiments (n *not* fixed) that continue until the first success is observed. A 

A [[Hypergeometric Distribution]] describes the number of success pulled out of a random sample.

A [[Discrete Uniform Distribution]] describes a random experiment with equally likely outcomes 

The [[Poisson Distribution]] helps describe an event which has a very low probability of occurring, but the number of trials, or timespan or space is so large, that the event is bound to happen sometimes. 

---
## Week 5
**Dekking et al. (2005) problems for this week: _4.4, 4.5, 4.10_.**

Various distributions, see **Week 4**

****
## Week 6 - 7
*Week 6:* **Dekking et al. (2005): _Chapter 5 (5.1 - 5.3, 5.5, 5.6), Chapter 6 (6.1 - 6.2) and Chapter 7 (7.1-7.4)**
Week 7: **Dekking et al. (2005): Chapter 5 (5.1 - 5.6), Chapter 6 (6.1 - 6.2) and Chapter 7 (7.1-7.4)**

Some experiments take values on a **continuous scale**, for example, the [[Probability]] that a bride collapses with different load weights

### Continuous Random Variable
A [[Discrete Random Variable]] describes the probability that events that can be described with discrete numbers, such as rolling a number on a dice. But [[Continuous Random Variable]]s describe experiments that can be described on a **continuous scale**. 
	The [[Probability Density Function]] for a [[Continuous Random Variable]] is 0 at a single point, but has a value over an interval
	The [[Cumulative Distribution Function]] is the [[Integral]] of the [[Probability Mass Function]]
The probability of a value occurring over an interval $(a,b)$ can be determined as the integral from $a$ to $b$

### Distributions
A [[Continuous Random Variable]] has a [[Continuous Uniform Distribution]] if every value has the same probability of occurring

An [[Exponential Distribution]] models an experiment where the [[Probability Density Function]] follows an exponential curve


A [[Normal Distribution]] is the most common distribution, it has a bell curved shape

### Quantiles and Percentiles
A [[Quantile(Percentile)]] describes the value at which the [[Cumulative Distribution Function]] up to that point, equals a certain percentage value
For example
	The value $q$ at which a [[Continuous Random Variable]] $T$ has $$P(T\leq q)=0.1$$Is called the 0.1th *quantile*, or 10th *percentile* of the distribution

### Expected Values & Variance
The [[Expected Value]] is the mean of all the probability of a [[Random Variable]]

The [[Variance]] of a [[Random Variable]] describes the spread around the mean of a random variable

---
## Week 8
*Week 8:* **Dekking et al. (2005): Chapter 9 (9.1-9.4)**

### Joint Distribution
The [[Joint Distribution]] of two or more [[Random Variable]]s describes the probability distributions of those *random variables* having the same value
	Joint probability functions can be constructed with as many random variables as required

The [[Marginal Distribution]] of a [[Joint Distribution]] describes the probability distributions of only one of the variables occurring
> [!quote] From Wikipedia
> Given a known [joint distribution](https://en.wikipedia.org/wiki/Joint_distribution "Joint distribution") of two **discrete** [random variables](https://en.wikipedia.org/wiki/Random_variable "Random variable"), say, X and Y, the marginal distribution of either variable – X for example – is the [probability distribution](https://en.wikipedia.org/wiki/Probability_distribution "Probability distribution") of X when the values of Y are not taken into consideration

### For Discrete Random Variables
The [[Joint Probability Mass Function]] is like the [[Probability Mass Function]], it describes the probability of a [[Joint Distribution]] with [[Discrete Random Variable]]s
> The **Joint PMF** of [[Discrete Random Variable]]s $X$ and $Y$ is: $$P_{X,Y}(x,y)=P(X=x,Y=y)$$

The [[Marginal Probability Mass Function]] describes the probability of one of the [[Random Variable]]s in a [[Joint Distribution]] occurring
> The **Marginal PMF** of [[Discrete Random Variable]]s $X$ and $Y$ given their [[Joint Probability Mass Function]] is: $$P_{X}(x)=\sum\limits_{\text{all y}}P_{(X,Y)}(x,y) \ \text{ and } \ P_{Y}(y)=\sum\limits_{\text{all x}}P_{(X,Y)}(x,y)$$

### For Continuous Random Variables
A [[Joint Continuous Distribution]] specifically describes a [[Joint Distribution]] with [[Continuous Random Variable]]s

The [[Joint Probability Density Function]] is like the [[Probability Density Function]], it describes the probability of a [[Joint Distribution]] with [[Continuous Random Variable]]s

The [[Marginal Probability Density Function]] describes the probability of one of the [[Continuous Random Variable]]s in a  [[Joint Continuous Distribution]] occurring
>Let $f$ be the [[Joint Probability Mass Function]] for [[Continuous Random Variable]]s of $X$ and $Y$. The **Marginal Probability Densities** of $X$ and $Y$ are: $$f_{X}(x)=\int_{-\infty}^{\infty}f(x,y)dy \ \text{ and } \ f_{Y}(y)=\int_{-\infty}^{\infty}f(x,y)dx$$

The equations of [[Joint Distribution]]s for Discrete Random Variables and Continuous Random Variables are very similar in idea, but continuous random variables use [[Integral]]s to sum the [[Probability Density Function]]
### Joint Cumulative Distribution
The [[Joint Cumulative Distribution Function]] is like the [[Cumulative Distribution Function]], it describes the probability that an event <= the input occurs
>The **Joint CDF** of [[Discrete Random Variable]]s $X$ and $Y$ is: $$P_{X,Y}(x,y)=P(X\leq x,Y\leq y)$$

---
## Week 9
*Week 9:* **Dekking et al. (2005): Chapter 9 (9.1-9.4) & Chapter 10 (10.1-10.3)**

### Conditional Probability 
The [[Conditional Probability]] of [[Discrete Random Variable]]s $X$ and $Y$ describe the probability of the probability of one random variable, given the other happening
> The Conditional Probability of $Y$ given $X$, or $X$ given $Y$ is: $$P_{Y|X}(y|x)=\frac{P_{X,Y}(x,y)}{P_{x}(x)} \ \text{ and } \ P_{X|Y}(x|y)=\frac{P_{X,Y}(x,y)}{P_{Y}(y)}$$

### Expected Value
Remember, expected value gives us the **mean** of the probability distribution

>The **Conditional** [[Expected Value]] of two [[Discrete Random Variable]]s is: $$E(X|Y=y) =\sum\limits_{all x}xp_{X|Y}(x|y)$$
>The **Conditional** [[Expected Value]] of two [[Continuous Random Variable]]s is:$$E(X|Y=y)=\int_{-\infty}^{+\infty}xf_{X|Y}(x|y)dx$$

>The [[Expected Value]] of a [[Joint Distribution]] is: $$E(X)=\sum\limits_{\text{all y}} \sum\limits_{\text{all x}}xp_{X,Y}(x,y)$$
>The [[Expected Value]] of a [[Joint Continuous Distribution]] is: $$E(X)=\int_{-\infty}^{+\infty}\int_{-\infty}^{+\infty}xf_{X,Y}(x,y)dxdy$$
### Independence
Two [[Random Variable]]s $X$ and $Y$ are [[Independence|Independent]] if the probability of one does not influence the other
> $X$ and $Y$ are *Independent* if $$P(X\leq a,Y\leq b)=P(X\leq a)P(Y\leq b)$$or, $$F(a,b)=F_{X}(a)F_{Y}(b)$$For all possible values $a$ and $b$
> If these are not satisfied, then the Random Variables $X$ and $Y$ are **Dependent**

### Covariance & Correlation
> Recall: The [[Variance]] of a random variable is a measure of its *variability*

The [[Covariance]] of two [[Random Variable]]s is a measure of their *joint variability*, or their *degree of association*
> Let $X$ and $Y$ be two random variables. The [[Covariance]] between $X$ and $Y$ is defined by $$Cov(X,Y)=E[(X-E[X])(Y-E[Y])]$$Alternatively, $$Cov(X,Y)=E[XY]-E[X]E[Y]$$

The [[Correlation Coefficient]] describes the correlation between two [[Random Variable]]s
> Let $X$ and $Y$ be two *random variables*. The [[Correlation Coefficient]] $\rho(X,Y)$ is defined to be $0$ if $Var(X)=0$ or $Var(Y)=0$, and otherwise: $$\rho(X,Y)=\frac{Cov(X,Y)}{\sqrt{Var(X)Var(Y)}}$$ 

==Note this down sometime==
![[Pasted image 20231125204119.png]] 


---
## Week 10
*No* readings from Dekking et al (2005) as it does not align well with what we are doing this week!

Instead see **Wagaman & Dobrow (2021)** (Optional textbook listed in syllabus which is available electronically through U of T Libraries): **Sections 8.1 & 8.5**



---
## Week 11
Dekking et al. (2005):  **Chapter 13 (13.1 - 13.3)** & **Chapter 14 (14.1-14.2)**




---
## Week 12