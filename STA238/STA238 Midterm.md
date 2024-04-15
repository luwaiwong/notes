w#statistics #uoft/sta238 

lord above please save me

# Info 
Time: 5-7 PM February 17th
Coverage: W1-W5
[STA238 Cheat Sheet](STA238%20Cheat%20Sheet.md)

# Weeks Info

W1
	Chapter 15-16
W2
	Chapter 13, 17
W3
	Chapter 14, 19
W4
	Chapter 20
W5
	Chapter 21

[STA238 Formulas](STA238%20Formulas.md)
# Overview

In STA237, the main goal was to describe random events and experiments using probability models. The goal of STA238 is to instead describe and interpret sets of data.

There are two types of data/variables
	[Categorical Data](Categorical%20Data)
	[Quantitative Data](Quantitative%20Data)

A [Bivariate Relationship](Bivariate%20Relationship) is the relationship between two or more variables (x,y)
	May want to determine if two variables influence one another
	Graphing or using different ways to analyzing data may help

todo
	add derivative rules
	log rules
	integral rules
## Ways to Measure Data
There are different benchmarks we can use to measure data, such as the:
	[Median](Median)
		Middle point of the data set
	[Mean](STA238%20Notes/Mean.md)
		The average value 
	[Mode](Mode)
		The most common value
	[Range](../MAT223/Range.md)
		The difference between the largest measurement - smallest measurement
	[Standard Deviation](../STA237/Notes/Standard%20Deviation.md)
		Describes how the data is distributed around the mean
	[Variance](../STA237/Notes/Variance.md)
		Square of the [Standard Deviation](../STA237/Notes/Standard%20Deviation.md)
	[Median Absolute Deviation](STA238%20Notes/Median%20Absolute%20Deviation.md)
	[Interquartile Range (IQR|[IQR)](Interquartile%20Range%20(IQR)]].md)
		The distance between the lower and upper quartiles
		$IQR=q_{n}(0.75)-q_{n}(0.25)$

## Graphical Representations 
There are many ways to graph data
	Histogram
	[Kernel Density Estimate](Kernel%20Density%20Estimate)
		![350](attachments/Pasted%20image%2020240213135336.png)
		Like a histogram but smoother
		requires a *kernal* and a *bandwith*
			kernal is a function that shows what the shape will look like
			bandwith determines how wide it will be
	[Empirical Distribution Function](Empirical%20Distribution%20Function)
		Plots the data in a *cumulative* manner
		For a point on the [Empirical Distribution Function](Empirical%20Distribution%20Function) graph, $$F_{n}(x)=\frac{\text{number of elements in the data set} \leq x}{n}$$

## Estimators
An [Estimator](STA238%20Notes/Estimator.md) is a rule (usually a formula) that gives us a way to calculate a value of an estimate.
	One example is the estimator
		$\overline{y}=\frac{1}{n} \sum\limits_{i=1}^{n}y_{i}$
	This is an estimator for the mean

An estimator is unbiased if it is correct, otherwise it is said to be biased
	Mathematically, an estimator $\theta$ is unbiased if $E(\overset{\wedge}{\theta})=\theta$
	And biased if $E(\overset{\wedge}{\theta})\neq\theta$


## The Sample Mean
The mean $\overline{y}$, is the average value of an experiment

If we take many different samples of a population and do the experiment to achieve a set of the means from population, this is another sample set of data.
Here, $\overline{y}$ refers to a random value of the mean, taken from our set

Properties
	The mean of $\overline{y}, \mu_{\overline y}=E(\overline y) = \mu$ 
		The mean of $\overline{y}$ is the same as the mean of the original experiment
	The standard deviation of $\overline{y}, \sigma_{\overline{y}}=\frac{\sigma}{\sqrt{n}}$
		This is called the [Standard Error of the Mean](STA238%20Notes/Standard%20Error%20of%20the%20Mean.md)

Central limit theorem says that the means will follow a normal distribution

## Normal Based Distributions


[T-Distribution](T-Distribution)
	
