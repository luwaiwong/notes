#uoft/sta238 #notes

Notes for [STA238](STA238)

[STA238 Definitions](STA238%20Definitions.md)  
Textbooks:  
    [STA237+238 Dekking Textbook](STA237+238%20Dekking%20Textbook.pdf)  
	[STA238 Textbook Rosenthal](attachments/STA238%20Textbook%20Rosenthal.pdf)


---

# Table of Contents
[#Lecture 1](#Lecture%201)  
	Slides  
		[STA238 Lecture 1 Slides](attachments/STA238%20Lecture%201%20Slides.pdf)  
	[#Observations](#Observations)  
	[#Bivariate Data](#Bivariate%20Data)  
	[#Sample Probability](#Sample%20Probability)  
[#Lecture 2+3](#Lecture%202+3)  
	Slides  
		[STA238 Lecture 2 Slides](attachments/STA238%20Lecture%202%20Slides.pdf)  
		[STA238 Lecture 3 Slides](attachments/STA238%20Lecture%203%20Slides.pdf)  
	[#Random Variables (Review)](#Random%20Variables%20(Review))  
	[#Statistical Models & Samples](#Statistical%20Models%20&%20Samples)  
	[#Parametric Models and Estimating Parameters](#Parametric%20Models%20and%20Estimating%20Parameters)  
	[#Law of Large Numbers](#Law%20of%20Large%20Numbers)  
	[#Central Limit Theorem](#Central%20Limit%20Theorem)  
	[#Estimates](#Estimates)  
	[#Other](#Other)  
[#Lecture 4](#Lecture%204)  
	Slides  
		[STA238 Lecture 4 Slides](attachments/STA238%20Lecture%204%20Slides.pdf)  
	[#Estimator Efficiency](#Estimator%20Efficiency)  
	[#Moments & Constructing Estimators](#Moments%20&%20Constructing%20Estimators)  
[#Lecture 5](#Lecture%205)  
	Slides  
		[STA238 Lecture 5 Slides Annotated](attachments/STA238%20Lecture%205%20Slides%20Annotated.pdf)  
	[#Maximum Likelihood Principle](#Maximum%20Likelihood%20Principle)  
[#Lecture 6+7](#Lecture%206+7)  
	Slides  
		[STA238 Lecture 6 Slides Annotated](attachments/STA238%20Lecture%206%20Slides%20Annotated.pdf)  
		[STA238 Lecture 7 Slides Annotated](attachments/STA238%20Lecture%207%20Slides%20Annotated.pdf)  
	[#Bootstrapping](#Bootstrapping)  
	[#Confidence Intervals](#Confidence%20Intervals)  
		[#Normal Distribution, Variance Known](#Normal%20Distribution,%20Variance%20Known)  
		[#T-Distribution](#T-Distribution)  
	[#More on Confidence Intervals](#More%20on%20Confidence%20Intervals)  
[#Lecture 8+9](#Lecture%208+9)  
	Slides  
		[STA238 Lecture 8 Slides Annotated](attachments/STA238%20Lecture%208%20Slides%20Annotated.pdf)  
		[STA238 Lecture 9 Slides Annotated](attachments/STA238%20Lecture%209%20Slides%20Annotated.pdf)  
	[#Hypothesis Terms](#Hypothesis%20Terms)  
	[#P-Value](#P-Value)  
	[#Controlling Error](#Controlling%20Error)  
[#Lecture 10](#Lecture%2010)  
[#Lecture 11](#Lecture%2011)

Study Strategy  
	Read through slides and textbooks, figure out core concepts and try to take notes on them  
	Do separate research on core concepts, and expand on notes  
	Do questions in slides

# Notes
## Lecture 1
>Textbook:  
  >	Dekking et al., Chapters 15 and 16  
  >	Evans & Rosenthal, Sections 5.4.3, 5.5  
>[Online Material](https://awstringer1.github.io/sta238-book/section-introduction-to-data-analysis-data-input-and-basic-summaries.html)  
>[STA238 Lecture 1 Slides Annotated](attachments/STA238%20Lecture%201%20Slides%20Annotated.pdf)


> STA238 is about deriving and estimating information from collected datasets

### Review/Overview
[Random Variables](Random%20Variable.md) represent a function that maps all the possible events of an experiment to a numerical value

> When we collect data of real observations of an experiment, we conceptualize the observed data as realizations (picking a random value, based on the probability distribution) of different [Random Variables](Random%20Variable.md)  
> 	We don't know the distribution that the data comes from.  
> 	We only observe data  
> 	We collect this data, and we want to *study the distribution* it comes from, and *learn beyond the observed data*  
> **STA238 will introduce methods to learn about the distributions (underlying information) of observed data**

### Observations
You can construct [Histograms](Histogram.md) to better analyze sets of datasets
- Choosing different *bin widths* of a histogram changes how it represents the data  
We use histograms to analyze the probability distributions of a given dataset  
Histograms are an approximation of the data's [Probability Density Function](../STA237%20Notes/Probability%20Density%20Function.md)

To construct a Histogram:
- Choose bin width $b$
- Divide the range of data into intervals/bins
- For each bin $B_{i}$ compute the proportion of data values in $B_{i}$
- Each bin's height is the proportion of data values, divided by the width $b$

> Some common shapes of distributions, which histograms can help in identifying are:  
> ![500](attachments/Pasted%20image%2020240708171156.png)

#### Kernel Density Estimates
> Histograms produce blocky broken graphs, which may make it harder to discern information.  
> Instead, we can use **Kernel Density Estimates (KDE)** in order to produce smoother graphs which convey the same information as a histogram  
> An example of a Histogram VS a KDE for the same given set of data  
> ![475](attachments/Pasted%20image%2020240708171358.png)

A [Kernel Density Estimate](Kernel%20Density%20Estimate.md) is another way of representing sets of data, like a [Histogram](Histogram.md)  
The **KDE** is different from a [Histogram](Histogram.md) in that it:
- Smooths the data
- Weights each data point by a density function called the [Kernel](../../Math/MAT224%20Notes/Kernel.md)  
Kernel Density Estimate Graphs are an estimate of a set of data's [Probability Density Function](../STA237%20Notes/Probability%20Density%20Function.md)

>Think of placing a function on each point of data, and then getting sum of those functions at a point.  
>Or "putting a pile of sand", around each element of the dataset. At places where the elements accumulate, the sand will pile up

When we create a Kernel Density Estimate plot, we choose
- A [Kernel](../../Math/MAT224%20Notes/Kernel.md) $K$
	- Represents the shape, that each element represents in the KDE takes, to create the graph
- A [Bandwidth](Bandwidth.md) $h$
	- A parameter that determines how wide the kernel in the KDE is

A [Kernel](../../Math/MAT224%20Notes/Kernel.md) is a function $K:\mathbb{R} \rightarrow \mathbb{R}$ that typically satisfies the following conditions:
- $K$ is a probability density, *i.e.* $K(u) \geq 0$ and $\int_{-\infty}^{\infty}K(u)du=1$
- $K$ is symmetric around zero *i.e.* $K(u)=K(-u)$
- $K(u)=0$ for $|u|>1$

> Examples of different Kernels  
> ![500](attachments/Pasted%20image%2020240708102514.png)

Constructing the KDE graph:

>How a KDE Graph is constructed:  
>![Pasted image 20240708103036](attachments/Pasted%20image%2020240708103036.png)

To construct a [Kernel Density Estimate](Kernel%20Density%20Estimate.md) graph, given a [Data Set](Data%20Set.md), and after selecting a [Kernel](../../Math/MAT224%20Notes/Kernel.md) $K$ and [Bandwidth](Bandwidth.md) $h$ we need to:
1. Scale the Kernel, according to the bandwidth. To do this, we want to scale the width and the height with  
	$\frac{1}{h}K(\frac{x}{h})$  
	We scale it like this so the width is set to the bandwidth, while retaining all information
2. For each data value $x_{i}$, apply the kernel by shifting its center to the data value  
	$\frac{1}{h}K(\frac{t-x_{i}}{h})$  
		This sets it so that the heaviest weight is at the data point itself
3. Then to calculate the value of the **KDE** graph at any point, we calculate:  
	$f_{n,h}(t)=\frac{1}{n}\{\frac{1}{h}K(\frac{t-x_{1}}{h})+ \frac{1}{h}K\left(\frac{t-x_{2}}{h}\right)+...+ \frac{1}{h}K(\frac{t-x_{n}}{h})\}$    

> So for any point, its value is the sum of its distance from the points on the dataset, plugged into the kernel.  
> Since kernels typically decay as the distance grows, for an area with more points, there will be more larger sums, and so the value of an area with more points will be higher  
> The choice of the bandwidth also plays a similar role for the **KDE**, as **bin width** does for [Histograms](Histogram.md)

### Bivariate Data
[Univariate](Univariate) Data: Data with one variable  
[Bivariate](Bivariate) Data: Data with two variables, data which contain pairs of values for each data point  
	*i.e.* $\{(x_{1},y_{1}),(x_{2},y_{2}),...,(x_{n},y_{n})\}$  
	We often want to explore the *relationship between variables*

[Scatter Plots](Scatter%20Plot) are good for analyzing [Bivariate](Bivariate) data  
	Scatter plots plot points along $x$ and $y$ axes, based on the pair of values  
	The shape of the points on the scatter plot help us view the correlation/relationship between the values

> Scatter plot correlations  
> 	![475](attachments/Pasted%20image%2020240708122756.png)

### Sample Probability
>Different values we can calculate given a random set of data

[Empirical](Empirical.md) means that quantities are calculated based on observed data. 

The [Empirical Cumulative Distribution Function](Empirical%20Cumulative%20Distribution%20Function.md) is an approximation of the underlying [Cumulative Distribution Function](../STA237%20Notes/Cumulative%20Distribution%20Function.md) of a set of data.  
	The **Empirical Cumulative Distribution Function** is the *proportion* of observed data values that are less than or equal to a value  
	It is denoted $F_{n}$, and is defined as $F_{n}(x)=\frac{\text{number of elements in dataset}\leq x}{n}$

> So like... It's the sample cumulative distribution function basically

#### Mean, Median  & Mode
The [Mean](Mean.md) is the average of a dataset  
The [Median](Median.md) is the *middle value* of a dataset  
	For a given data set, is the middle element of the data set when it is sorted in *ascending order*.  
		When is odd, the median is an element of the data set.  
		When is even, the median is the average of the middle two values.  
The [Mode](Mode.md) is the most common value of a dataset
  
**Sample Median** is calculated the same way that median is calculated  
**Sample Mean**, the mean from a sample set can be calculated with $\overline{x}_{n}= \frac{1}{n}\sum\limits_{i=1}^{n}x_{i}$

> Note that $\overline{x}_{n}$ represents the average of the different random samples $\{x_{1},x_{2},...,x_{i}\}$  
> But $\overline{X}_{n}$ represents the average of the expected values of different [Random Variables](Random%20Variable.md), representing **different probability distributions**

>Sample **Median** and **Mean** are two ways to describe the *center* of a dataset, or its *typical value*  
>Mean is approximately the [Expected Value](../STA237%20Notes/Expected%20Value.md) of the probability distribution, and is the actual average of all values, while Median is the center value of the dataset.  
>Median is generally a better measure of the average, because it is less sensitive to outliers

#### Variance, Standard Deviation, & Others
The [Variance](../STA237%20Notes/Variance.md) and [Standard Deviation](../STA237%20Notes/Standard%20Deviation.md) quantify the amount of variability in a dataset  
Variance is measured in different units from the elements of the dataset, but standard deviation is in the same units as the dataset

  > **Sample Variance** can be calculated by $s^{2}_{n}=\frac{1}{n-1}\sum\limits_{i=1}^{n}(x_{i}-\overline{x}_{n})^{2}$  
  > **Sample Standard Deviation** is the square root of sample variance, or $s_{n}=\sqrt{s^{2}_{n}}$

The Median Absolute Deviation (MAD) is the median, of all the deviations from the median, of every value in the dataset.  
	The MAD is mostly unaffected by outliers

  >The [Median Absolute Deviation](Median%20Absolute%20Deviation.md)(**MAD**) is calculated as $\text{Median}(|x_{1}-\overline{x}|,|x_{2}-\overline{x}|, ..., |x_{n}-\overline{x}|)$  
  >So, the Median of all the absolute deviations

A [Quantile(Percentile)](../STA237%20Notes/Quantile(Percentile).md) $x$ for a [Probability Distribution](Probability%20Distribution.md) is the value where where the proportion of values less than or greater than it is equal to $x$  
The [Quartile](Quartile.md) is the 25th or 75th [Quantile(Percentile)](../STA237%20Notes/Quantile(Percentile).md)  
The [Interquartile Range (IQR)](Interquartile%20Range%20(IQR)) is the distance between the the upper and lower [Quartile](Quartile.md)

To compute the [Empirical Quantile](Empirical%20Quantile.md), we use:  
	$q_{n}(p)=x_{(k)}+\alpha(x_{(k+1)}-x_{(k)})$  
	Where $k=\lfloor{p(n+1)} \rfloor$ and $\alpha=p(n+1)-k$

 > So, if calculating 25th quantile of a dataset with 11 values, since $11 \cdot 0.25$ = 2.75, the empirical quantile is the 2nd value of the dataset, + 0.75 the difference between the 2nd and third value.

The [Five Number Summary](Five%20Number%20Summary.md) is:
1. The Minimum
2. Lower Quartile
3. Median
4. Upper Quartile
5. Maximum

 To create a [Box and Whisker Plot](Box%20and%20Whisker%20Plot.md), the main box is the [Interquartile Range (IQR)](Interquartile%20Range%20(IQR)), and the whiskers are the closest observation within a distance of 1.5 times the **IQR**, with dots indicating outliers

> Example of Box and Whisker Plots  
> 	![500](attachments/Pasted%20image%2020240708155231.png)

The box and whisker plot represents the [Five Number Summary](Five%20Number%20Summary.md) the best

## Lecture 2+3
>Textbook:  
>	Dekking et al., Chapter 13, 14, 17, 19  
>	Evans & Rosenthal, Sections 4.4, 4.6, 5.1, 5.2, 5.3, 6.4.1 except the discussions on confidence intervals  
>Slides:  
>	[STA238 Lecture 2 Slides Annotated](attachments/STA238%20Lecture%202%20Slides%20Annotated.pdf)  
>	[STA238 Lecture 3 Slides Annotated](attachments/STA238%20Lecture%203%20Slides%20Annotated.pdf)  
>[Download Annotated](https://q.utoronto.ca/courses/345688/files/32362563/download?download_frd=1)  
>Suggested Questions from Textbook:  
>	Dekking et al., Chapter 13 Exercises (13.11, 13.12 is optional)  
>	Dekking et al., Chapter 17 Exercises (17.10, 17.11 is optional)  
>[Online supplementary material Section 4.1.](https://awstringer1.github.io/sta238-book/section-statistical-models.html#section-statistical-models-chapter-17)  
>[Online supplementary material Section 4.2](https://awstringer1.github.io/sta238-book/section-statistical-models.html#section-unbiased-estimators-chapter-19)


### Random Variables (Review)
 [Random Variables](Random%20Variable.md) represent the outcome of an experiment conducted  
  [Discrete Random Variables](../STA237%20Notes/Discrete%20Random%20Variable.md) represent the outcome of an experiment conducted.  
  Discrete RV's are for [Quantitative](Quantitative.md) experiments  
  For discrete random variables,  
	  The [Cumulative Distribution Function](../STA237%20Notes/Cumulative%20Distribution%20Function.md) describes the probability that a value < a specified value occurs  
	  The [Probability Mass Function](../STA237%20Notes/Probability%20Mass%20Function.md) describes the probability of an value occurring  
	  The [Expected Value](../STA237%20Notes/Expected%20Value.md) is the [Mean](Mean.md) of the RV  
	  The [Variance](../STA237%20Notes/Variance.md) quantifies the amount of variability for the RV
  
  There are many distributions for [Discrete Random Variables](../STA237%20Notes/Discrete%20Random%20Variable.md) to take, such as:  
  [Binomial Distribution](../STA237%20Notes/Binomial%20Distribution.md)  
  [Poisson Distribution](../STA237%20Notes/Poisson%20Distribution.md)
  
  [Continuous Random Variables](../STA237%20Notes/Continuous%20Random%20Variable.md) also represent the outcome of an experiment conducted.  
  Continuous RV's can take on continuous values/any value on an interval  
  For continuous random variables,  
	  The [Cumulative Distribution Function](../STA237%20Notes/Cumulative%20Distribution%20Function.md) describes the probability that a value < a specified value occurs  
	  The [Probability Density Function](../STA237%20Notes/Probability%20Density%20Function.md) describes the probability of a value occurring  
	  The [Expected Value](../STA237%20Notes/Expected%20Value.md) and [Variance](../STA237%20Notes/Variance.md) are the same as for a [Discrete Random Variable](../STA237%20Notes/Discrete%20Random%20Variable.md)
  
  There are many distributions for [Continuous Random Variables](../STA237%20Notes/Continuous%20Random%20Variable.md) to take, such as;  
  [Continuous Uniform Distribution](../STA237%20Notes/Continuous%20Uniform%20Distribution.md)  
  [Normal Distribution](../STA237%20Notes/Normal%20Distribution.md)  
  [Exponential Distribution](../STA237%20Notes/Exponential%20Distribution.md)

### Statistical Models & Samples
A [Statistical Model](Statistical%20Model) is our predictive model of an observed phenomenon

>We use Statistical Models to predict results of experiments/observations  
>We model these observed phenomenon using probability distributions  
>The model we use includes all the uncertainty involved when gathering data  
>	e.g., measurement errors, unknown variables effecting the observations, subjective judgement, inherent randomness  
>	\Our models are not infallible, and are affected by all the errors we make when collecting data, because we construct our models based off of collected data

> Reality vs Model  
> 	![325](attachments/Pasted%20image%2020240708124747.png)

> Our use case is that we have a real world event that we want to be able to predict.  
> We take random samples of this real world event, and we use those random samples to either try to figure out what probability distribution they belong to, or to figure out its value  
> These random samples are all *realizations* of a "true distribution"


A [Random Sample](Random%20Sample) is a collection of [Random Variable](Random%20Variable.md) $X_{1},X_{2},...,X_{n}$ that have the **same probability distribution**, and are **mutually independent**  
	Another way to say *same probability distribution* and *mutually independent*, is **Independent and Identically Distributed**, or **i.i.d**

We notate a **Random Sample** $X_{1},...,X_{2},...,X_{n} \stackrel{i.i.d}{\approx} F$  
	Where $X=F:X$ follows a distribution defined by the cumulative distribution function $F$  
	The probability distribution $F$ is the [Statistical Model](Statistical%20Model)  
	$i.i.d$ stands for [Independent Identically Distributed Random Variables](Independent%20Identically%20Distributed%20Random%20Variables).  
		A random sample must be $i.i.d$  for our calculations below of sample mean, variance, and other formulas to be accurate  
		Always check and make sure that a set of data that we're using is $i.i.d$

A [Data Set](Data%20Set.md) that we observe, consisting of repeated measurements $x_{1},x_{2},...,x_{n}$ of the same value, is modeled as *realizations* of a [Random Sample](Random%20Sample) $X_{1},X_{2},...,X_{n}$

> This is all saying that when we take a **Random Sample**,  ideally these are all **independent** observations of **the same value**, which our observation method provides as a probability distribution.  
> 	In these scenarios, we are trying to measure a real life value, but our measuring methods may be incorrect  
> Since each observation, are independent of the other observations, they are considered different [Random Variables](Random%20Variable.md), which once we *realize* them, provide us a value according to its probability distribution  
> For example, when early physicians were measuring the speed of light, they were not sure of the value, or how accurate their observation methods were. So to find the speed of light, they measured its value many times, and came with a probability distribution of what that value was.  
> Those observations of the speed of light were independent, where one measurement does not affect another, and all measurements were collected under the same experimental conditions, and so would follow the same "probability distribution".  
> 	The probability distribution describe the variances and experimental conditions which affect our observations  
> All the samples were estimates for a one "true" value

### Parametric Models and Estimating Parameters

Given a random data set, we may want to identify the [Probability Distribution](Probability%20Distribution.md) which we believe the [Random Sample](Random%20Sample) adheres to, and we may *partially specify* the model  
	Partially specify, means to identify what distribution we think the **Random Sample** adheres to, but we do not know the [Model Parameters](Model%20Parameters) $\theta$  
	Our partially specified model is called the [Parametric Model](Parametric%20Model)

> For any [Probability Distribution](Probability%20Distribution.md), specifying the [Model Parameters](Model%20Parameters) fully specify the model  
> We may want to estimate the model parameters of the probability distribution of real world event, based on the data we have  
> 	We use various [Estimators](Estimator.md) to guess what the parameter value may be  
> 	However, there is a *true* parameter which specifies the *true* distribution  
> When determining a model for a set of data, basically just guess based on the shape of the [Histogram](Histogram.md) or [Kernel Density Estimate](Kernel%20Density%20Estimate.md)

A [Sample Statistic](Sample%20Statistic) is any function of a [Random Sample](Random%20Sample), which is $i.i.d$  
Some examples of a **Sample Statistic** may be
- Sample Mean
- Sample Variance

[Sample Statistics](Sample%20Statistic) are similar to [Estimates](Estimate.md)

> The key difference between **Sample Statistics** and **Estimators** are that sample statistics are an objective value of a dataset, while estimators are being used directly to estimate a value.  
> They may be the same function, but their goals are different, sample statistics are more like an observation of a dataset, while estimators are trying to estimate a value

We may use Sample Statistics in order to estimate the parameters of a [Parametric Model](Parametric%20Model) for a data set  
For example, estimating the [Mean](Mean.md) using the Sample Mean formula as a parameter for a data set we think may follow a normal distribution

> Sample Statistics are also [Random Variables](Random%20Variable.md).  
> This is because the value of the sample statistic is unknown, and will vary based on the values of the [Random Sample](Random%20Sample)  
> 	There is a [Probability Distribution](Probability%20Distribution.md) for the value of the sample statistic, depending on how the [Random Sample](Random%20Sample) varies
  
### Law of Large Numbers

>Say we have a random variable $X$, where its [Expected Value](../STA237%20Notes/Expected%20Value.md) is $\mu$, and its [Standard Deviation](../STA237%20Notes/Standard%20Deviation.md) is $\sigma$  
>We can take a [Random Sample](Random%20Sample) of $X, X_{1},X_{2},X_{3},...,X_{n}$ and attempt to calculate the expected value of $X$ using these random samples  
>Our calculated value for the expected value will be denoted $\overline{X}_{n}$ , and can be calculated using the formula for [Sample Mean](Sample%20Mean.md)

$\overline{X}_{n}$ represents the mean from a set of $n$ samples of $X$  
$X$ has $E[X]=\mu$, and $Var(X)=\sigma^{2}$  
$\overline X_{n}$is now a new [Random Variable](Random%20Variable.md), with different possible values based on the samples of $X$  
 For the random variable $\overline{X}_{n},E[\overline{X}_{n}]=\mu \text{ and } Var(\overline{X}_{n})=\frac{\sigma^{2}}{n}$

>The expected value of $\overline{X}_{n}$ will be the expected value of $X$,  
>And the variance of $\overline X_{n}$ will be based on the variance of $X$, and be lower based on the number of samples  
> All we are saying, is that the average of averages, is more more accurate, and a better way of estimating a value  
> "Averages Vary Less"  
**  
[The Weak Law of Large Numbers](Law%20of%20Large%20Numbers.md) says that $\lim_{n\rightarrow\infty} P(|\overline X_{n}-\mu|\geq \epsilon)=0$  
Or, if you take an infinite number of samples of $X$, that the value of $\overline X_{n}=\mu$ (the expected value of $X$) 

[The Strong Law of Large Numbers](Law%20of%20Large%20Numbers.md) says that  
$P(lim_{n\rightarrow\infty}\overline{X}_{n}=\mu)=1$

[Chebyshev's Inequality](Chebyshev's%20Inequality.md) says that for a [Random Variable](Random%20Variable.md) $Y$ and  $a>0, \ P(|Y-E[Y]|\geq a)\leq \frac{1}{a^{2}}Var(Y)$  
	And can be rearranged to achieve  
	$P(|Y-E(Y)|\leq a\sqrt{Var(Y)})\geq 1- \frac{1}{a^{2}}$

> The [Law of Large Numbers](Law%20of%20Large%20Numbers.md) **ONLY APPLIES** if **VARIANCE IS FINITE.**  
> 	Keep this in mind, when questions ask if "law of numbers is applicable here"

>**Chebyshev's Inequality** tells us that the probability that the realization of a random variable being outside of a certain range $a$ of its [Expected Value](../STA237%20Notes/Expected%20Value.md) is related to its [Variance](../STA237%20Notes/Variance.md)  
>	The second equation given, is rearranged from the first, and gives us the probability that a [Random Variable](Random%20Variable.md) will be within a few ($a$) **standard deviations**$\sqrt{Var(Y)}$ from its **expectation** $\mu$  
>		Most of the probability mass of a random variable is within a few standard deviations from its expectation  
>		This is pretty intuitive  
>Chebyshev's Inequality can be used to prove [Law of Large Numbers](Law%20of%20Large%20Numbers.md)  
>Use it mainly to calculate the probability of an arbitrary random variable being greater than any value.  
>Lets say we have a random variable where we know the variance, and its expectation, we can calculate the probability of it being greater than $\alpha$

### Central Limit Theorem
The [Law of Large Numbers](Law%20of%20Large%20Numbers.md) says that as you take more samples of a distribution, the [Mean](Mean.md) of those samples will become the mean of the distribution

The [Central Limit Theorem](Central%20Limit%20Theorem.md) Says that different values of $\overline{X}_{n}$ from different samples will follow a [Normal Distribution](../STA237%20Notes/Normal%20Distribution.md), centered at $\mu$ , regardless the original distribution.

>$Z$ or $\Phi$ is commonly used to refer to the [Standard Normal Distribution](Standard%20Normal%20Distribution), that is, the [Normal Distribution](../STA237%20Notes/Normal%20Distribution.md) with a [Mean](Mean.md) of 0 and a [Standard Deviation](../STA237%20Notes/Standard%20Deviation.md) of 1.  
>It is common in statistics to convert any normal distribution, to a standard normal distribution, and then calculating its probability, this is what we're doing below with the distribution of the means of a random variable  
>We are creating a standard formula in order to convert the normal distribution of the means of a random variable, to the [Standard Normal Distribution](Standard%20Normal%20Distribution)

We can define $Z_{n}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{Var(\overline X_{n})}}$ (also written as $Z_{n}=\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$ with $Var(\overline X_{n})$), this is a stabilization of $\overline X_{n}$, so that it is centered at 0 and follows a standard bell curve

>As $n\rightarrow \infty$, $Z_{n}$ will follow a standard normal distribution $N(0,1)$  
>We use $Z_{n}$ to more easily calculate the probability of different values of $\overline X_{n}$

Practically, we use this to calculate probabilities easier, because we can say that:  
$$P(\overline{X}_{n} = p) = P(Z = \frac{p-E[\overline{X}_{n}]}{\sqrt{Var(\overline{X}_{n})}})$$  
	Where $Z$ is the standard normal distribution $N(0,1)$

#### Variants
The [T-Distribution](T-Distribution) is the distribution of the mean of a normal distribution, when we do not know its Variance, and we use its sample variance  
The **T-Distribution** is: $Z_{n}=\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$

### Estimates

An [Estimate](Estimate.md) is a value $t$ that only depends on a dataset $x_{1},x_{2},...,x_{n}$ i.e., $t$ is some [Function](../../Math/MAT235%20Notes/Function.md) of the [Data Set](Data%20Set.md)

> An estimate is just a value that's derived from a dataset. For example, mean and variance of a dataset are estimates we derive from a dataset for the underlying variance and mean of the dataset's [Random Variable](Random%20Variable.md)  
> We may create **Estimates** for the parameters of a [Parametric Model](Parametric%20Model)

[Estimators](Estimator.md) are a [Function](../../Math/MAT235%20Notes/Function.md) which produce an [Estimate](Estimate.md)

An estimator is defined as $T=h(X_{1},X_{2},...,X_{n})$  
An estimate is defined as $t=h(x_{1},x_{2},...,x_{n})$

>An estimator is a function which takes the result of a random sample  
>While an estimate is the result of that function with a realized dataset from the random variables of the random sample  
>Estimator Notation:  
>	Sometimes $\hat{\theta}$ is used as the notation for estimators  
>	Say we are looking for a parameter $\theta$, $\hat{\theta}$ is the value of an estimator for  $\theta$ 

An Estimator $T$ for the parameter $\theta$ is called **Unbiased** if $E[T]=\theta$  
The [Bias](Bias.md) of an [Estimator](Estimator.md) is the difference from its [Estimate](Estimate.md) to its intended value  
	The [Bias](Bias.md) of an estimator $\hat \theta, B(\hat \theta)$ is the difference $E[\hat \theta]-\theta$  
	And we say the estimator $\hat \theta$ is **unbiased** if $E[\hat \theta] =\theta$, otherwise, it is **biased**

Some examples of **unbiased estimators** are the estimators for sample mean and variance  
	Sample Mean: $\overline{X}_{n}=\frac{X_{1}+X_{2}+...+X_{n}}{n}$  
	Sample Variance: $s^{2}_{n}=\frac{1}{n-1}\sum\limits_{i=1}^{n}(x_{i}-\overline{x}_{n})^{2}$

A [Sampling Distribution](Sampling%20Distribution.md) is the [Probability Distribution](Probability%20Distribution.md) of an estimator

>An **Estimator** is typically a *formula*, that tells use how to calculate the value of an estimate based on the measurements contained in a sample  
>Estimates in this class are typically the parameters of the distribution of a set of data, and estimators functions are for calculating those parameters  
>Estimators follow a probability distribution, as they vary based on the inputs given from a random sample

### Other
A **Statistical Inference** is an estimate, prediction, or some other generalization about a population based on information contained in a sample

A **Population Parameter** is an unknown numerical value based on a population. We can conduct statistical inferences about population parameters  
	Examples of population parameters are:  
		Mean  
		Variance

A **Statistic** is a function of the observable random variables in a sample.  
	Examples are:  
		Sample Mean  
		Sample Variance

A **Deterministic Model** is a hypothesized model about the relationship between two variables.  
	Deterministic models we crate are probabilistic.  
	Example of a deterministic model would be the relationship between two variables $y$ and $x$, where:  
		$y=1.5x+ \text{Random Error}$

A **First-Order Probabilistic Model (Linear Regression)** is an equation:  
	$y=b_{0}+b_{1}x+\epsilon,$ where:  
		$y=$ dependent or response variable (variable to be modeled or predicted)  
		$x=$ independent or predictor variable (used to predict $y$)  
		$b_{0}+b_{1}x=$ deterministic component  
		$\epsilon=$ Random error component, assumed to follow $N(0,\sigma)$ distribution  
		$b_{0}=$ y-intercept of line  
		$b_{1}=$ Slope of line 

The **Principle of Least Squares** is:  
	The vertical deviation of the point $(x_{i},y_{i})$ from a line $y=b_{0}+b_{1}x$ is:  
		Error $=y_{i}-b_{0}+b_{1}x_{i}$  
	The sum of the squared vertical deviations from a set of points is: $g(b_{0},b_{1})=\sum\limits_{i=1}^{n}[y_{i}-b_{0}+b_{1}x_{i}]^{2}$  
		We want to minimize this value  
		The values which minimize $g(b_{0},b_{1})$,  are $\hat b_{0}, \hat b_{1}$ and are called the **least squares estimates**  
	The **Estimated [Regression Line](Regression%20Line.md)**, or **Least Squares Regression Line** is the line whose equation is:  
		$y=\hat b_{0} + \hat b_{1} x$

> Some parameters to remember  
> 	![Pasted image 20240719174619](attachments/Pasted%20image%2020240719174619.png)

> Also remember, when doing calculations with estimators, **Linearity of Expectations**  
> Where $E[x_{1}+x_{2}]=E[x_{1}]+E[x_{2}]$

## Lecture 4
> Chapter 20, Dekking et al  
> Slides:  
> 	[STA238 Lecture 4 Annotated](attachments/STA238%20Lecture%204%20Annotated.pdf)  
> Lecture 4 Topics  
> 	Evaluating Estimators, determining which ones are better if they are both *unbiased*


### Estimator Efficiency
> We defined [Estimators](Estimator.md) in the previous lecture as a function which calculates an [Estimate](Estimate.md), and defined its [Bias](Bias.md) as how close it is as an estimate for its intended parameter.  
> An [Estimator](Estimator.md) is better than another if it has less [Bias](Bias.md), but we have no way of comparing estimators if they are both **Unbiased**

Let $T_{1}$ and $T_{2}$ be two **Unbiased** [Estimators](Estimator.md) for the same parameter $\theta$

An estimator $T_{1}$ is more [Efficient](Efficient.md) than an estimator $T_{2}$ if $Var(T_{2})<Var(T_{1})$, irrespective of the value of $\theta$

The [Relative Efficiency](Relative%20Efficiency) of $T_{2}$ with respect to $T_{1}$ is $\frac{Var(T_{1})}{Var(T_{2})}$

> So an estimator is more efficient, and a better estimator for any value, if it has less [Variance](../STA237%20Notes/Variance.md)

#### Mean Squared Error
The [Mean Squared Error](Mean%20Squared%20Error.md) of an estimator $\hat \theta$ is $MSE(\hat \theta)=E[(\theta- \hat \theta)^{2}]=V(\hat \theta)+[B(\hat \theta)]^{2}$

> This is another way to calculate if one estimator performs better than another

 If $MSE(T_{1})<MSE(T_{2})$ for any parameter $\theta$, then $T_{1}$ is a more efficient estimator  
 This value is preferred over just the variance (I think)


>Sometimes, a biased estimator with small variance, may be more useful than an unbiased estimator with a large variance

#### Cramer-Rao
> The Cramer-Rao inequality gives the **Cramer-Rao Lower Bound**, stating that the variance of an unbiased estimator for a parameter $\theta$ must be larger than or equal to a certain positive number

The [Cramer-Rao Inequality](Cramer-Rao%20Inequality) states that  
$Var(T)\geq \frac{1}{nE[(\frac{\partial}{\partial(\theta)}\ln f_\theta(X))^{2}]}$  
Where $n$ is the size of the sample, and $X$ a random variable whose density function is $f_\theta$

An **unbiased** estimator attaining this bound is called a [Minimum Variance Unbiased Estimator](Minimum%20Variance%20Unbiased%20Estimator)

### Moments & Constructing Estimators
> [Method of Moments](Method%20of%20Moments) is a technique of constructing estimators for a given distribution.  
> Independent samples generally produce consistent method of moment estimators  
> 	The method does not depend on the model distribution  
> 	Is simple and intuitive???  
> 	But does not always yield unbiased and sensible estimates

The $k$th [Moment](Moment) of a [Random Variable](Random%20Variable.md) $X$ is defined as $\mu_{k}'=E[X^{k}]$

> The 1st moment: $E[X]$  
> The 2nd moment: $E[X^{2}]$  
> So, the moments are different expected values of the random variable

For a sample $X_{1},X_{2},...,X_{n}$ that are identically distributed as $X$  
The $k$th **Sample Moment** is defined as $m_{k}=\sum\limits_{i=1}^{n} \frac{X^{k}_{i}}{n}$ 

> The sample mean is the first sample moment

The [Method of Moments](Method%20of%20Moments) constructs an estimator for a parameter $\theta=g(\mu'_{1},\mu'_{2},...,\mu'_{k})$ as a function of the sample moments $\theta=g(m_{1},m_{2},...,m_{k})$

> I'm pretty sure, that the method of moments is just figuring out a function which takes the [Expected Value](../STA237%20Notes/Expected%20Value.md) $E[X]$ of a random sample, and usually only up to $E[X^{2}]$ which is used to calculate [Variance](../STA237%20Notes/Variance.md), to solve for a parameter $\theta$  
> Its pretty much the obvious thing you do when you want to solve a parameter, get the mean, and maybe use the standard deviations/variances? And just try to find an estimator the best you can

## Lecture 5
>Textbook  
>	Chapter 21 Dekking et al  
>Slides  
>	[STA238 Lecture 5 Slides Annotated](attachments/STA238%20Lecture%205%20Slides%20Annotated.pdf)

### Maximum Likelihood Principle
The [Maximum Likelihood Principle](Maximum%20Likelihood%20Principle.md) says that:  
	Given a dataset, choose the parameter(s) of interest in such a way that the data is most likely

We have a dataset $x_{1},x_{2},...,x_{n}$ modeled as a realization of a random sample from a distribution characterized by a parameter $\theta$.  
	To stress the dependence on $\theta$, we write the probability mass function as  
		$p_{\theta}(x)$  
	And for the probability density function  
		$f_{\theta}(x)$

For a dataset $x_{1},x_{2},...,x_{n}$,  we create a function which describes the probability of us attaining this dataset, as a function of the parameter $\theta$, which we notate $L(\theta)$ :  
$$L(\theta)=P(X_{1}=x_{1},...,X_{n}=x_{n})=p_{\theta}(x_{1})...p_{\theta}(x_{n})$$  
	Remember here that $X_{n}$ is the underlying distribution of that value of the dataset, and $x_{1}$ is the actual value of the dataset

The function/value above is called the [Likelihood Function](Likelihood%20Function.md).  
The [Maximum Likelihood Estimate](Maximum%20Likelihood%20Estimate.md) is the value $t=h(x_{1},x_{2},...,x_{n})$ that maximizes the likelihood function $L(\theta)$

The corresponding [Random Variable](Random%20Variable.md): $T=h(X_{1},X_{2},...,X_{n})$ is the [Maximum Likelihood Estimator](Maximum%20Likelihood%20Estimator.md) for  $\theta$

> In the example for the textbook, we have a set of data regarding an event, in which we want to calculate the probability $p$ of said event.  
> We create a formula, which describes the probability of us observing the data we did observe, as a function of the real probability $p$ that we are looking for.  
> 	What is the probability of x events happening, if the real probability is $p$?  
> We then solve as a maximization problem, for the probability value $p$ which gives us the highest probability of us observing the data that we did  
> This is the Maximum Likelihood Principle, calculate for our parameters, based on how likely they are to result in the data we observed  
> 	Read page 315 in [STA237+238 Dekking Textbook](STA237+238%20Dekking%20Textbook.pdf)

Asymptotically, maximum likelihood estimators are unbiased, or that :  
$$\lim_{n\rightarrow\infty}E[T_{n}]=\theta$$  
Maximum likelihood estimators also have asymptotic minimum variance.  
That is, asymptotically the variance of a maximum likelihood estimator for a parameter $\theta$ attains the [Cramer-Rao lower bound](Cramer-Rao%20Inequality)

#### Loglikelihood
>The log-likelihood function is a tool which helps to solve for the maximum value of a likelihood function, using log.  
>Basically just wrap the Maximum Likelihood Estimator in a log, to make calculating the derivative easier

The [Loglikelihood Function](Loglikelihood%20Function) is defined as:  
$$l(\theta)=\log(L(\theta))$$  
	Where $L(\theta)$ is the [Likelihood Function](Likelihood%20Function.md)

>With log-transformation, you can maximize sums instead of products since the maximum of $L(\theta)$ and the maximum of $l(\theta)$ occur at the same value.  
>	idk just believe this

## Lecture 6+7
> Textbook  
> 	**Bootstrapping**:  
> 		Dekking et al., Chapter 18  
> 		Evans & Rosenthal, Section 6.4.2  
> 		Online supplementary material Section [7.1.](https://awstringer1.github.io/sta238-book/section-the-bootstrap.html#section-the-bootstrap-chapter-18) and [8.2.](https://awstringer1.github.io/sta238-book/section-maximum-likelihood.html#section-extended-example-rental-housing-in-toronto)  
> 	**Confidence Interval:**  
> 		Dekking et al., Chapters 23 and 24  
> 		Evans & Rosenthal, Section 6.3.2  
> 		Online supplementary material [Chapter 9](https://awstringer1.github.io/sta238-book/section-confidence-intervals-and-quantifying-uncertainty.html)  
>Questions  
>	Dekking et al., Chapter 18 Exercises (18.11 to 18.13 are optional)  
>	Dekking et al., Chapter 23  (23.9 is optional)  
>Slides  
>	[STA238 Lecture 6 Slides Annotated](attachments/STA238%20Lecture%206%20Slides%20Annotated.pdf)

### Bootstrapping
>Bootstrapping is a way to generate more data given a finite [Random Sample](Random%20Sample)  
>	Like "pulling yourself up from your bootstraps", creating more samples without actually observing more samples

The idea of bootstrapping is to estimate the [Cumulative Distribution Function](../STA237%20Notes/Cumulative%20Distribution%20Function.md) based on an observed sample, try to recreate the probability distribution based on what we observe, and then take random samples of our *estimated distribution function*

Lets say we have a [Random Sample](Random%20Sample) $X_{1},X_{2},...,X_{n}$ from the [Cumulative Distribution Function](../STA237%20Notes/Cumulative%20Distribution%20Function.md) $F$ (where $F$ is unknown)  
We then compute an *estimate* $\hat F$ for the distribution function $F$  
The [Bootstrap Sample](Bootstrap%20Sample) is denoted by:  
	$X^{*}_{1}, X^{*}_{2},...,X^{*}_{n}$  
	And is a random sample from $\hat F$, the estimated distribution function of the original observation

Corresponding estimates based on the [Bootstrap Sample](Bootstrap%20Sample) are [Bootstrapped Estimates](Bootstrapped%20Estimates)

> The following above is the general idea of bootstrapping, and can be accomplished in many ways. The following are multiple ways of doing bootstrapping  
If we have no idea of the distribution and type of $F$ we can always estimate $F$ with the [Empirical Cumulative Distribution Function](Empirical%20Cumulative%20Distribution%20Function.md)

When we have no idea of the type of $F$, we can estimate $\hat F$ with the [Empirical Cumulative Distribution Function](Empirical%20Cumulative%20Distribution%20Function.md) where:  
$$\hat F(x)=F_{n}(x)=\frac{\text{number of elements in dataset}\leq x}{n}$$  
	When estimating $F$ with the **empirical Distribution function**, the corresponding [Bootstrap](Bootstrapping) is called the [Empirical Bootstrap](Empirical%20Bootstrap)

>Bootstraps are generally a good approximation for the distribution of a **Random Sample** and are generally generate good [Sample Statistics](Sample%20Statistic)

If we do have an idea of the type of $F$, and we can construct a [Parametric Model](Parametric%20Model)  of which we don't know the true parameters parameters, Than our [Bootstrap](Bootstrapping) can be done with a model where we estimate the parameters of $F$

In this case, the distribution function would be determined by a parameter, or a vector of parameters $\theta$  
We can [Estimate](Estimate.md) the parameter $\theta$ with an [Estimator](Estimator.md) $\hat \theta$ and estimate $F$ with $\hat F = F_{\hat \theta}$  
	The bootstrap done with this distribution is called the **Parametric Bootstrap**

>Often the parametric bootstrap approximation is better than the empirical bootstrap approximation
### Confidence Intervals
> Sometimes we want a *range* of possible values for an unknown parameter.  
> Here we talk about how to create these confidence intervals for a given estimate

A **Conservative Confidence Interval** is one where you find that  
	$P(L_{n}<\theta<U_{n})\geq \gamma$  
	The actual confidence interval might be higher than $\gamma$

>[Chebyshev's Inequality](Chebyshev's%20Inequality.md) $P(|Y-E[Y]\geq a)\leq \frac{1}{a^{2}}Var(Y)$ can also be used to construct conservative confidence intervals 

A [Confidence Interval](Confidence%20Interval) or **Interval Estimator** is a rule which gives a certain degree of confidence, that an [Estimate](Estimate.md) of an [Estimator](Estimator.md) will be within certain bounds, or that:  
	$P(L_{n}<\theta<U_{n})=1-\alpha$  
	Where $L_{n}$ and $U_{n}$ are the **lower and upper confidence limits**, and $(1-\alpha)$ is the **confidence coefficient

> The calculations of the confidence interval are generally based on a realization of a [Random Sample](Random%20Sample)  
> You find a random sample, and then typically you construct a confidence interval of how confident you are in an estimate  
We want to find the interval for an [Estimator](Estimator.md), where we are $1-\alpha$  confident that the real parameter value that the estimator is targeting is a value between $L_{n}$ and $U_{n}$

There are many ways to calculate confidence intervals, depending on the situation:
#### Normal Distribution, Variance Known
For a normal distribution, we can calculate the [Confidence Interval](Confidence%20Interval) with the techniques below:

The $z_\alpha$ score or [Critical Value](Critical%20Value) is a value of the [Standard Normal Distribution](Standard%20Normal%20Distribution) $P(Z\geq z)=\alpha$ or$P(Z\leq z)=1-\alpha$  
	The value in the standard distribution, where $\alpha$ proportion of values are lower than $z$

If the parameter of interest follows a [Normal Distribution](../STA237%20Notes/Normal%20Distribution.md) where we know the variance, then our confidence interval can be derived with:  
	The result will be $L_{n}=\overline X_{n} - z_{\frac{\alpha}{2}}\frac{\sigma}{\sqrt{n}}$ and $U_{n}=\overline X_{n} + z_{\frac{\alpha}{2}}\frac{\sigma}{\sqrt{n}}$  
	$\overline X_{n}$ is the mean of the data that we are basing the confidence interval off of.

>So, basically the confidence interval is the *value where there is an $\alpha$ proportion of numbers greater in the **Standard Normal Distribution***, times the variance of the random sample, centered on the mean of that same random sample  
> We calculate $z_{\frac{\alpha}{2}}$ instead of $z_{\alpha}$ because we are centering the $\alpha$ in the center, and so calculate half the probability above, and below, this is just general best practice  
> Derived from rearranging $\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$  
> From [Central Limit Theorem](Central%20Limit%20Theorem.md):  
> 	$\begin{aligned} P(L_{n}<\overline X_{n} <U_{n})&= P(c_{l}<\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}<c_{u}) \\ &= P(\overline X_{n}-c_{u} \frac{\sigma}{\sqrt{n}}< \mu< \overline X_{n}-c_{l}\frac{\sigma}{\sqrt{n}})\end{aligned}$  
> Then pick $c_{u}$ and $c_{l}$ as $z_{\frac{\alpha}{2}}$, in theory you could pick anything else  
> 	Just pick any value where the proportion of values between $c_{u}$ and $c_{l}$ is $\alpha$

#### Normal Distribution, Unknown Variance
If the parameter follows a [Normal Distribution](../STA237%20Notes/Normal%20Distribution.md) that we do **NOT** know the variance, then the confidence interval must be derived with [Sample Variance](Sample%20Variance)

>When $\sigma$ is unknown, we cannot use $\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$ from the central limit theorem  
What we can do is substitute $\sigma$ with [Sample Variance](Sample%20Variance), for $\frac{\overline X_{n}-\mu}{\frac{S_{n}}{\sqrt{n}}}$  
> Since $S_{n}$ is its own random variable, we can't use the same rules that we did earlier with standard normal for the new random variable $\frac{\overline X_{n}-\mu}{\frac{S_{n}}{\sqrt{n}}}$  
> 	This value $\frac{\overline X_{n}-\mu}{\frac{S_{n}}{\sqrt{n}}}$ is sometimes also referred to as the [Studentized Mean](Studentized%20Mean)  
> This now has a distribution that can be described with the [T-Distribution](T-Distribution), [View Below](#T-Distribution)

When we substitute $\sigma$ with [Sample Variance](Sample%20Variance) $S_{n}$, its distribution now follows a [T-Distribution](T-Distribution) $T$ with $n-1$ degrees of freedom, which we can use to calculate a new [Critical Value](Critical%20Value)

The $t_{m,p}$ score or also [Critical Value](Critical%20Value) is a value of the [T-Distribution](T-Distribution) $P(T(m)\geq t_{m,p})=p$ or $P(T(m)\leq t_{m,p})=1-p$  
	The value in the t-distribution, where $\alpha$ proportion of values are lower than $z$  
	You can use a T-Distribution Chart to get the $t$ value

Now, instead we calculate $L_{n}=\overline X_{n} - t_{n-1, \frac{\alpha}{2}}\frac{S_{n}}{\sqrt{n}}$ and $U_{n}=\overline X_{n} + t_{n-1, \frac{\alpha}{2}}\frac{S_{n}}{\sqrt{n}}$

> Same concept as before, but instead of the $z$ critical value and the standard normal distribution, use the $t$ critical value and the t-distribution

#### T-Distribution
A [Continuous Random Variable](../STA237%20Notes/Continuous%20Random%20Variable.md) has a [T-Distribution](T-Distribution) with *parameter $m\geq 1$*, if its probability density is given by  
$$f_{x}=k_{m}(1+\frac{x^{2}}{m})^{-\frac{m+1}{2}}$$  
	For $-\infty<x<\infty$  
	And where $k_{m}=\frac{ \Gamma\frac{m+1}{2}}{\Gamma(\frac{m}{2})\sqrt{m\pi}}$  
	Where $\Gamma$ is the [Gamma Function](Gamma%20Function) $\Gamma (\alpha)=\int_{0}^{\infty}x^{\alpha-1}e^{-x}dx$

This distribution is referred to as the **t-distribution** with *m degrees of freedom*  
	The **T-Distribution** approaches the [Standard Normal Distribution](Standard%20Normal%20Distribution) as $m \rightarrow  \infty$

>I don't really know where this comes from or happens, just know that if variance is unknown $\frac{\overline X_{n}-\mu}{\frac{S_{n}}{\sqrt{n}}}$ follows a $t(n-1)$ distribution regardless of $\mu$ and $\sigma$ rather than the [Standard Normal Distribution](Standard%20Normal%20Distribution)

#### Not Normal Distribution, Small Datasets
Sometimes we use the previous methods, even when the data does not follow a normal distribution. Sometimes this doesn't matter, but if we also have a small sample size, we may want to bootstrap to construct a larger sample size

So, you would:
1. Generate a [Bootstrap](Bootstrapping) dataset $x^{*}$from the [Random Sample](Random%20Sample) you already have
2. Calculate the [T-Distribution](T-Distribution) critical value above on various bootstrapped datasets  
	Calculate $t^{*}=\frac{\overline x_{n}^{*}- \overline x_{n}}{\frac{s^{*}_{n}}{\sqrt{n}}}$  
		Where $x^{*}_{n}$ and $s^{*}_{n}$ are the sample mean and sample standard deviation of $x^{*}$  
	Repeat steps 1 and 2 many times
3. Create an approximation of $t_{n-1,\frac{\alpha}{2}}$ with the above calculations
4. Use the approximated $t_{n-1, \frac{\alpha}{2}}$ and [method above](#Normal%20Distribution,%20Unknown%20Variance) to calculate a confidence interval with $(\overline x_{n}- t_{n-1, \frac{\alpha}{2}}^{*}\frac{S_{n}}{\sqrt{n}}, \overline x_{n}+ t_{n-1, \frac{\alpha}{2}}^{*}\frac{S_{n}}{\sqrt{n}})$

This is called a $100(1-\alpha)$% **Bootstrap Confidence Interval**  

#### Unknown Variance, Large Samples
Since as $n\rightarrow \infty$, the [T-Distribution](T-Distribution) approaches the [Standard Normal Distribution](Standard%20Normal%20Distribution)

Then if $n$ is large enough, than $P(-z_{\frac{\alpha}{2}}<\frac{\overline X_{n}-\mu}{\frac{S_{n}}{\sqrt{n}}}<z_{\frac{\alpha}{2}} \approx 1-\alpha$  
	Using $z$ [Critical Value](Critical%20Value) instead of $t$, while using [Sample Variance](Sample%20Variance)

>No specific guidelines on how large a sample has to be before generalizing like this


Has a [Chi^2 Distribution](Chi^2%20Distribution) with $(n-1)$ degrees of freedom

Given a chart, with the probabilities of different values of a **T-Distribution** or a **Chi^2 Distribution** with $(n-1)$ degrees of freedom, we can roughly calculate values for small sample sizes

### More on Confidence Intervals
its possible to graph and visually figure out confidence intervals

you can also do one sided confidence intervals  
	In this case, don't calculate $z_{\alpha/2}$, calculate $z_{\alpha}$

## Lecture 8+9
>Textbook  
>	**For Confidence Interval:**  
>		Dekking et al., Chapters 23 & 24  
>		Evans & Rosenthal, Section 6.3.2  
>		Online supplementary material [Chapter 9](https://q.utoronto.ca/courses/337468/pages/https)  
>	**For Hypothesis Testing:**  
>		Dekking et al., Chapters 25 and 26  
>		Evans & Rosenthal, Section 6.3.3  
>Questions  
>	Dekking et al., Chapter 24 Exercises (24.10 is optional)  
>	Dekking et al., Chapter 25 & 26 Exercises (These questions seem quite straight forward, let me know if any of them is too hard)  
>Slides  
>	[STA238 Lecture 8 Slides Annotated](attachments/STA238%20Lecture%208%20Slides%20Annotated.pdf)  
>	[STA238 Lecture 9 Slides Annotated](attachments/STA238%20Lecture%209%20Slides%20Annotated.pdf)  
>Topics  
>	Covers more confidence interval stuff, but mostly Statistical Testing and Hypothesis Testing topics

### Hypothesis Terms
**Hypotheses** are different inferences made about a population parameter 

[Hypothesis Testing](Hypothesis%20Testing) is the process of formulating possible hypotheses which we can draw from an experiment, and choosing between two alternatives

Typically our main hypotheses are:  
**Null Hypothesis**, denoted by $H_{0}$  
	The null hypothesis is our primary assumption  
	It is "innocent until proven guilty"  
		Presumed to be true until the data provides convincing evidence against it  
The **Alternative Hypothesis**, denoted by $H_{1}$  
	An alternative hypothesis away from the **Null Hypothesis** which we are looking to prove  
	We are gathering evidence to prove

If we **reject** the **Null Hypothesis** we will accept $H_{1}$, This is *rejecting $H_{0}$ in favor of $H_{1}$*

A **Test Statistic** is any [Sample Statistic](Sample%20Statistic) $T=h(X_{1},X_{2},...,X_{n})$, computed from a dataset, whose numerical value is used to decide whether we reject $H_{0}$  
	A test statistic is any method/computation which we use to determine whether $H_{0}$ or $H_{1}$ is true  
The **Rejection Region** is the set of possible values for a **Test Statistic** which a researcher will reject the **null hypothesis** for the **alternative hypothesis**

A **Type 1 Error** is when we reject the **null hypothesis** falsely  
	When we reject the null hypothesis for the **alternative hypothesis**, when, the null hypothesis is in fact correct  
A **Type 2 Error** is when we accept the **null hypothesis** falsely  
	When we accept the null hypothesis instead of the alternative hypothesis, when the alternative hypothesis is actually correct

### P-Value
The **Observed Significance Level** or [P-Value](P-Value), for a statistical test is the probability of observing a value of the **test statistic** that is contradictory to the null hypothesis, and supportive of the alternative hypothesis, when $H_{0}$ is true.  
	The probability that the **test statistic** will reject the **null hypothesis**, when in fact, the null hypothesis is true  
	The smaller the **P-Value**, the more we can trust the value of the **Test Statistic**

>The [P-Value](P-Value) is the probability of observing the value obtained from our chosen **Test Statistic**, assuming that $H_{0}$ (The **Null Hypothesis**) is true.  
>	If the P-Value is very small, than that means that if the **Null Hypothesis** $H_{0}$ was true, than it would be very unlikely for it to generate an observation which has such a small P-Value  
>	Thus, we should consider the alternative hypothesis $H_{1}$  
>Typically, when we are conducting statistical tests, we go with the assumption that our initial prediction is true, and then try to find evidence to the contrary

The [Significance Level](Significance%20Level) is the largest acceptable probability of committing a **Type 1** error, denoted by $\alpha$

>The level at which we consider the P-Value to be too unlikely and choose to accept $H_{1}$, is our [Significance Level](Significance%20Level)  
>	There is no general value for how small a P-Value should be to reach a reasonable conclusion  
>	As a rule of thumb, 0.05 is typically used as the level where events with a probability <= 0.05 is viewed as being too exceptional  

Right-Tail, and Left-Tail probability are terms used to describe how we calculate the **P-Value**  
	View image below for clarification
- If we are interested in testing $H_{1}: \mu<\mu_{0}$ (Alternative hypothesis where real value should be less than null hypothesis), we compute the left tail probability,  $P(T\leq t|H_{0})$. 
	- If we are interested in testing $H_{1}:\mu>\mu_{0}$, we compute the right tail probability, $P(T\geq t|H_{0})$. Both the left and right tests lead to one-tailed p-values.  
- If we are interested in testing $H_{1}:\mu\neq\mu_{0}$ (Alternative hypothesis where real value is not same as null hypothesis), we compute a two-tailed p-value, $P(|T| > t|H_{0})$

> Here, $t|H_{0}$ is the distribution of the **Null Hypothesis**, and $T$ is our real observation

> [Right Tail and Left Tail](Right%20Tail%20and%20Left%20Tail) Testing  
> A Visual example of what "Right Tail" and "Left Tail" mean  
> 	![500](attachments/Pasted%20image%2020240815090436.png)  
> 	The distribution above, is the distribution of possible values to observe, if $H_{0}$ is true.  
> 	If the real value we observe, falls beyond $\alpha$, then we reject $H_{0}$  
> 	*Left tail testing would be the same thing, on the other side*

> Relation to confidence intervals  
> 	In testing $H_{1}:\mu\neq\mu_{0}$, and thus $P(|T| > t|H_{0})$, we are essentially choosing to accept the Null Hypothesis based on whether the real observation falls within the [Confidence Interval](Confidence%20Interval) set by the [Significance Level](Significance%20Level) for the distribution of $H_{0}$

The [Critical Region](Critical%20Region) are all values of the Test statistic $T$ where we reject $H_{0}$ in favor of $H_{1}$  
	***Critical Values*** are values on the *boundary* of the [Critical Region](Critical%20Region)

> What we can do, is calculate the [Critical Region](Critical%20Region) of the Test Statistic, and instead of calculating the P-Value of our observations, see if they lie in the Critical Region

### Controlling Error
A [Type 1 Error](Type%201%20Error) is when we reject the null hypothesis, when in fact it is correct.

> Or, "Convicting an innocent defendant"

We can control the likelihood of [Type 1](Type%201%20Error) and [Type 2](Type%202%20Error) errors by controlling the [Significance Level](Significance%20Level).  
The [Significance Level](Significance%20Level) is by definition, "largest acceptable probability of committing a **Type 1** error"  
	So if we wanted the probability of committing a [Type 1 Error](Type%201%20Error), it would just be the [Significance Level](Significance%20Level)

A [Type 2 Error](Type%202%20Error) is when we reject the alternative hypothesis, when it is in fact correct  
This value is more difficult to solve for, see graph for what values we are solving for, and depends on the alternative hypothesis $H_{1}$

> Type 1 and Type 2 errors  
> 	![Pasted image 20240816164341](attachments/Pasted%20image%2020240816164341.png)  
> 	The darker shaded region on the right, is where we are committing [Type 1 Errors](Type%201%20Error)  
> 	The shaded region on the left, is where we are committing [Type 2 Errors](Type%202%20Error)  
> 	The Line separating them, is set by the [Significance Level](Significance%20Level)  
> Textbook does not go over any specific techniques of calculating Type 2 errors

## Lecture 10
>Textbook  
>	Evans & Rosenthal, Examples 6.1.1, 6.1.5  
>	Online supplementary material [Chapter 10](https://awstringer1.github.io/sta238-book/section-extended-example-reasoning-about-goodness-of-fit.html#section-testing-goodness-of-fit-simulation).  
>Lecture Recordings  
>	[Part I: Finishing up Hypothesis Testing](https://utoronto.zoom.us/rec/share/GL8KlyYdTiKn84Er3_N0RBkucK3nXbCLbAEx9wDTR9beAhLCinS3dOk5oB44hOnl.FlFXCwWhETDb_RX7)  
>	[Part II: Goodness of Fit](https://utoronto.zoom.us/rec/share/KUFDCq5cezzpQVYJWBTZAF0N4Q_HUHUfhuMZIqaWRbR6acswfB8W2NcA3fGm3dcE.93fIk-PsYXjC9hyU)  
>	[Part III: Goodness of Fit Continued](https://utoronto.zoom.us/rec/share/pC60Ks03APghgRyVhOXus8gau4ZDacYOZVykdrAX0j0lHXzTJJe6soR9r7rhkLTU.bSDOs8rmapulrMXu)  
>Questions  
>	Follow the problem and exercises on the online supplementary material [Chapter 10.](https://awstringer1.github.io/sta238-book/section-extended-example-reasoning-about-goodness-of-fit.html#section-testing-goodness-of-fit-simulation)  
>	Evans & Rosenthal, Problems 6.3.25, 6.3.26, 6.3.28, 6.3.29, 6.3.30

We defined the [Likelihood Function](Likelihood%20Function.md) earlier, as a function which takes in observations of a dataset, and returns the *probability* of observing the data

The [Likelihood Ratio](Likelihood%20Ratio) is defined as $\Lambda=\frac{L(\theta_{0}|X)}{L(\hat \theta_{MLE}|X)}$  
	Where $X$ is a random sample $X=(X_{1},X_{2},...,X_{n})$  
	$\theta$ is a test statistic for the data, where we we want to see if the our assumption of the data $\theta_{0}$ is correct and $\theta=\theta_{0}$ (Usually the null hypothesis)  
	$L(\theta_{0}|X)$ is the likelihood of obtaining $\theta_{0}$ for the random sample, with our Null Hypothesis assumptions of the data  
	And  $L(\hat \theta_{MLE}|X)$ is the likelihood of our data, using the [Maximum Likelihood Estimator](Maximum%20Likelihood%20Estimator.md) generated by the our data  
Properties
- The larger $\Lambda(\theta_{0})$, (Also sometimes denoted as $Lambda(\theta_{0}$), the more likely the null hypothesis is true
- $\Lambda(\theta_{0})\in [0,1]$
- $\Lambda(\theta_{0})$ is a [Sample Statistic](Sample%20Statistic)
- $-2log(\Lambda(\theta_{0}))\approx \chi^{2}(p-1)$ where $p$ is the dimension of $\theta$

After we calculate a value using the *Likelihood Ratio Test*, we can transform it to a [Chi^2 Distribution](Chi^2%20Distribution) using $-2log(\Lambda(\theta_{0}))\approx \chi^{2}(p-1)$, to approximate what the probability of observing that value is  
	We always do a "right tail test" when calculating the probability

> The Likelihood Ratio Test, is another value which indicates how likely it is to observe a set of values, if an assumption of the underlying Random Variables are true  
> 	Typically we assume a Null Hypothesis, and we want to see if our observed set of values support the null hypothesis  
> It is calculated with the ratio of:  
> 	The likelihood of observing the data, based on our assumed random variables  
> 	And the likelihood of observing the data, after we construct a [Maximum Likelihood Estimator](Maximum%20Likelihood%20Estimator.md) based on that data  
> 		So the assumed "real likelihood" of observing the data we did, based on a Maximum Likelihood Estimator created from the probabilities of our observed data

>Example of calculating values for the Likelihood Ratio Test  
>	![Pasted image 20240817114430](attachments/Pasted%20image%2020240817114430.png)  
>	In this example, we are testing if a dice is fair.  
>		 $\hat \theta_{i}$ is the constructed [Maximum Likelihood Estimator](Maximum%20Likelihood%20Estimator.md) based on the real observed frequencies of the dice  
>		 $\theta_{i}|H_{0}$ is the distribution/probability that we would expect if the dice was fair  
>	Notice how we calculate $L(\theta_{0}|x)$ and $L(\hat \theta|x)$  
>		$L(\theta_{0}|x)$ is the probability of observing the frequencies, with the probability that we would expect if the dice was fair  
>		$L(\hat \theta|x)$ is the probability of observing the frequencies, with the [Maximum Likelihood Estimator](Maximum%20Likelihood%20Estimator.md)  
>			The probability of the **MLE** is based on the frequencies that we observed, and is used to calculate the "real" probability of observing frequencies

## Lecture 11
>Textbook  
>	Online supplementary material [Chapter 6.](https://awstringer1.github.io/sta238-book/section-introduction-to-bayesian-inference.html)  
>	McElreath, Chapter 2 Introduction, Sections 2.1-2.3, & Sections 2.4.1-2.4.  
>Questions  
>	McElreath, Practice Problems 2E1-2E3, 2M1-2M7  
> There is a lot of stuff in this lecture, most of which I do NOT understand  
> For the final exam all that's being covered is [Bayes Rule](../STA237%20Notes/Bayes%20Rule.md), and [Conditional Probability](../STA237%20Notes/Conditional%20Probability.md), so notes will only cover that

[Conditional Probability](../STA237%20Notes/Conditional%20Probability.md) between two events, A **given** C is written as  
	$P(A|C) \ = \ ?$

[Bayes Rule](../STA237%20Notes/Bayes%20Rule.md) states that:  
	$P(B|A)= \frac{P(A|B)P(B)}{P(A)}$  
	Where $A$ and $B$ are two different [Events](../STA237%20Notes/Event.md)

The [Law of total probability](../STA237%20Notes/Law%20of%20total%20probability.md) is further derived from [Bayes Rule](../STA237%20Notes/Bayes%20Rule.md) and states that:  
	$P(A)=\sum\limits_{i=1}^{m}P(A|B_{i})P(B_{i})$  
	Where $B_{1},B_{2},...,B_{m}$ are disjoint events whose [Union](Union) make up the [Sample Space](../STA237%20Notes/Sample%20Space.md)


