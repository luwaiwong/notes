#notes #uoft/sta302 

How to do problems for [[STA302]] and [[STA302 Notes]]

---
# Table of Content
# Notes
### Notation
- $X$ represents matrix of predictors
	- First column is generally all 1, for intercept term
	- The values which, when multiplied with the coefficients, models the response
- $Y$ represents matrix of responses
	- Can be observed responses, or the matrix result of our modeled response
- $\beta$ represents coefficients for predictors
- $n$ typically represents number of datapoints in dataset
- $p$ typically represents number of predictors

## Creating Linear Model
### Estimating Coefficients of Linear Regression
[[Method of Least Squares]]
Simple Linear Regression:
$$b_{1}^{*}=\frac{\sum\limits_{i=1}^{n}(y-\overline{y})(x_{i}-\overline x)}{\sum\limits_{i=1}^{n}(x_{i}-\overline x)^{2}} = \frac{\sum\limits_{i=1}^{n}x_{i}y_{i}-n\overline x\overline y}{\sum\limits_{i=1}^{n}x^{2}_{i}-n\overline x^{2}}$$
$$b_{0}^{*}=\overline y-b_{1}^{*}\overline x$$
- $x_{i}, y_{i}$ are observed values
- $\overline y, \overline x$ are means of observed values
Or $b_{1}^{*}=  \frac{\text{Sample Covariance}}{\text{Sample Variance}}$  [[Covariance]]/[[Variance]] 

Multiple Linear Regression:
$$(X^{T}X)^{-1}X^{T}Y$$
	Use Matrix Multiplication
	Vector result is the coefficients

Calculating $X^{T}X$ and $X^{T}Y$
	$X^{T}X=\begin{bmatrix} n & \sum\limits x_{1}  & \sum\limits x_{2} & \dots  & \sum\limits x_{p} \\ \sum\limits x_{1}  & \sum\limits x_{1}^{2} & \sum\limits x_{1} x_{2}  & \dots  & \sum\limits x_{1}x_{p} \\ \sum\limits x_{2} & \sum\limits x_{1} x_{2}  & \sum\limits x^{2}  & \dots  &  \sum\limits x_{2} x_{p}  \\ \vdots & \vdots  & \vdots &  \dots & \vdots \\ \sum\limits x_{p} & \sum\limits x_{1}x_{p} & \sum\limits x_{2}x_{p} & \dots  & \sum\limits x_{p}^{2} \end{bmatrix}$
		$n$ is number of columns in $X$
		each $x_{i}$ is sum of the values of that predictor
	$X^{T}Y=\begin{bmatrix} \sum\limits y \\ \sum\limits x_{1}y  \\ \vdots \\ \sum\limits x_{p}y\end{bmatrix}$
		each $x_{i}$ is sum of the values of that predictor
	Each value with $\sum\limits x_{1}$ or $\sum\limits y$ means $\sum\limits x_{i,1}$ or $\sum\limits y_{i}$, representing sum of the entire column of that predictor

### Interpreting Matrix for Multiple Linear Model
For $X$ matrix, number of *columns* is the number of predictors+1 for intercept, number of *rows* is number of observations

>$X$ matrix for linear model with 5 predictors from sample of 50 observations would have:
>	50 columns
>	6 rows

$\beta$ parameter vector represents all coefficients. 
	Has only one column
	As many rows as there are predictors.
	Indicator variables with $n$ levels have $n-1$ rows for each variable
		One row to represent each indicator level, don't need row to represent being "off"

## Method of Moments
### Calculating RSS

$$RSS=RSE^{2}(df)$$
- $df$ is *degrees of freedom*
## Checking Assumptions

### Fixing Issues with Model
Depending on our problems with assumptions with the linear regression model, we can use transformations to try to fix them
- Issues with residual variance/distribution
	- Transform response to stabilize variance and/or fix distribution of residuals
- Issues with linearity
	- Transform predictors
- Issues with normality
	- Use [[Box-Cox Method]] to suggest power transformation for response variable

Otherwise, just trial and error different transformations and see what works?
#### How to use Box-Cox Model


---
below are good notes, fix notes up top

## Estimators
### Estimating $\sigma^{2}$ of model
An estimator for $\sigma^{2}$ is:
$$\sigma^{2}=\frac{(y-X\hat \beta)^{T}(y-X\hat \beta)}{n-(p+1)}=\frac{RSS}{n-p-1}$$
- $n$ is number of observations
- $p$ is number of parameters (not including intercept)

>Remember:
>	This is estimator for variance of the residuals

### Estimating Predictors

> What we are doing here, is with our observed data, calculate the distribution of our coefficients for our predictors, and how they affect the response
> 	Calculating the probability of the significant of each predictor

**Calculating Variance of Predictors**
The Covariance matrix for the predictors of a linear model combine information about
- Variance of each individual random variable
- How any two random variables vary together
You can calculate it as:
$$Cov(\hat\beta|X)=\sigma^{2}(X^{T}X)^{-1}$$

You can read the Covariance matrix of a sampling distribution as:
$$Cov(\hat\beta|X)=\begin{bmatrix} Var(\hat\beta_{0}|X)  &  Cov(\hat\beta_{0}, \hat\beta_{1}|X)  & \dots  &  Cov(\hat\beta_{0}, \hat\beta_{p}|X)  \\  Cov(\hat\beta_{0}, \hat\beta_{1}|X)  &  Var(\hat\beta_{1}|X)  & \dots  &  Cov(\hat\beta_{1}, \hat\beta_{p}|X)  \\ \vdots  &  \vdots  & \ddots & \vdots \\ Cov(\hat\beta_{0}, \hat\beta_{p}|X)  &  Cov(\hat\beta_{1},\hat\beta_{p}|X) & \dots  &  Var(\hat\beta_{p}|X) \end{bmatrix} 
$$
For single linear regression,
$$Cov(\hat\beta|X)=\begin{bmatrix} \end{bmatrix}$$ fill out from slides page 5
You can use this to easily different values of variance and covariance, just calculate the matrix, and use reference the value

**Distribution of Predictors**
The distribution of the our estimate of the predictors given a dataset, if we have the variance of the underlying population model, should be:
$$\hat\beta \sim N(\beta,\sigma^{2}(X^{T}X)^{-1})$$
- $\hat\beta$ represents the random variable, of different value for coefficients we get given different samples of the dataset
- $\beta$ is the fitted coefficients we calculate

Without the underlying population model, we use the estimated [[#Calculating Variance|Variance]] above and find the population model with T-Distribution as: 
$$\frac{\hat\beta-\beta}{\sqrt{\sigma^{2}(X^{T}X)^{-1}}}\sim T_{n-p-1}$$


**Calculate Confidence Interval on Predictors**
Using estimated variance, and T-Distribution, $(1-a)$% Confidence Interval for $j$th predictor can be calculated with 

$$\hat\beta_{j}\pm t_{\frac{a}{2},n-p-1}\sigma\sqrt{(X^{T}X)^{-1}_{(j+1,j+1)})}$$

**Hypothesis Test on Predictors**
Calculate value of:
$$\frac{\hat\beta_{j}-0}{\sqrt{\sigma^{2}(X^{T}X)^{-1}}}$$
And see if it's greater than $t_{\frac{0.05}{2},n-p-1}$, if its lower, we fail hypothesis test

Also calculate confidence interval, and check if it includes 0


### Estimating Response

> What we are doing here, is using our data, and creating a distribution, for the response of the linear model, given some predictors.
> 	Say we have a model that predicts $a$ based on $b$, we create this model to get a distribution of what $a$ could be, given a value for $b$
> What variables mean
> 	$Y$ represents real observed values
> 	$X$ represents observed predictors with those real values
> 	$\hat Y$ represents mean of underlying distribution
> 	$\hat y$  represents just the estimated response
> 	$x_{0}$ represents predictor values, that we want to estimate the mean response of
> 	$\hat y_{0}$ represents the specific estimated response with the predictor values $x_{0}$, $\hat y_{0}=x_{0}^{T}\hat\beta$

**Calculate Covariance of Response**
Covariance for the response with different predictors can be calculated with 
$$Cov(\hat y|X, x_{0})=\sigma^{2}x^{T}_{0}(X^{T}X)^{-1}x_{0}$$
For a simple linear model, we can also calculate variance as:
$$\sqrt{Var(\hat y_{0}|X, x_{0})}=\sqrt{\sigma^{2}(\frac{1}{n}+\frac{(x_{0}-\overline x)^{2}}{\sum\limits(x_{i}-\overline x)^{2}})}$$

**Distribution of Response**
A distribution for estimated response, given value of predictors $x_{0}$ can be found as
$$ \frac{\hat y_{0}-x_{0}^{T}\beta}{\sqrt{\sigma^{2}x_{0}^{T}(X^{T}X)^{-1}x_{0}}}\sim T_{n-p-1}$$

**Calculate Confidence Interval of Reponses**
Using estimated variance, and T-Distribution, $(1-a)$% Confidence Interval for response given predictors can be calculated with 

$$x^{T}_{0}\hat\beta\pm t_{\frac{a}{2},n-p-1}\sigma\sqrt{x_{0}^{T}(X^{T}X)^{-1}x_{0})}$$
With this we can calculate the confidence interval for what the response *should* be, given values for predictors

### Estimating Error

> Similarly as before, we are using our data, and creating a distribution, for the error of the linear model, given some predictors.
> 	Say we have a model that predicts $a$ based on $b$, we create this model to get a distribution of what $a$ could be, given a value for $b$
> 	$y_{0}$ represents the real data, for a predictor value
> 	$x_{0}$ represents predictor values, that we want to estimate the error of
> 	$\hat y_{0}$ represents the specific estimated response with our linear response given our predictor values $x_{0}$, $\hat y_{0}=x_{0}^{T}\hat\beta$

We calculate our error as $\epsilon_{0}=y_{0}-\hat y_{0}$

**Calculate Variance of Predictor Error**
$$Var(y_{0}-\hat y_{0}|X,x_{0})=\sigma^{2}[1+x_{0}^{T}(X^{T}X)^{-1}x_{0}]$$

**Distribution of Error**
$$ \frac{y_{0}-\hat y_{0}}{\sqrt{\sigma^{2}[1+x_{0}^{T}(X^{T}X)^{-1}x_{0}]}}\sim T_{n-p-1}$$

**Confidence Interval**
Using estimated variance, and T-Distribution, $(1-a)$% Confidence Interval for error given predictors can be calculated with 

$$x^{T}_{0}\hat\beta\pm t_{\frac{a}{2},n-p-1}\sigma\sqrt{x_{0}^{T}(X^{T}X)^{-1}x_{0})}$$
With this we can calculate the confidence interval for what the response *should* be, given values for predictors

## Variance Testing
> Recall
> 	$\hat y_{i}$ is the estimated response for a set of predictors, from our created moedl
> 	$y_{i}$ is a real data point
> 	$\overline y$ is mean of real data points
> 	$n$ is number of data points
> 	$p$ is number of predictors

General order of tests to do
- ANOVA Test First
- T-Tests on individual coefficients
	T-Tests can help inform what predictors you should consider to drop
- Then partial F Test
	
### T-Test
T-Test on Single Linear Model, tells us if predictor is significantly related to response
T-Test on Multiple Linear Model only says if this predictor is linearly related in response to presence of others
	Does not say if linear relationship exists overall
The test calculates $\hat y_{i}-\overline y$ vs $y_{i}-\hat y_{i}$ overall
- If $\hat y_{i}-\overline y$  is larger then there is a significant linear relationship

### Decomposition of Sum of Square
Total amount of variation or *Total Sum of Squares* can be calculated by 
$$SST=\sum\limits(y_{i}-\overline y)^{2}$$
	Has degree of freedom $n-1$
Variation explained by predictors, or *Regression Sum of Squares* can be explained by 
$$SS_{reg}=\sum\limits(\hat y_{i}-\overline y)^{2}$$
	Has degree of freedom $p$
Unexplained variation leftover from fitting model, or *Residual Sum of Squares* can be caculated by:
$$RSS = \sum\limits(y_{i}-\hat y_{i})^{2}$$
	Has degree of freedom $n-p-1$
These sources of variation are related by 
$$SST=SS_{reg}+RSS$$
Generally a good model will have $SS_{reg}> RSS$
A model with more predictors (even non-significant ones) usually has smaller $RSS$
### ANOVA Test
"**An**alysis **O**f **Va**riance Test of Overall Significance"
	Compares $RSS$ and $SS_{reg}$ to identify existence of linear relationship (Like T-Test for Multiple Linear Models)

We use the $F$ distribution
$$F^{*}=\frac{\frac{SS_{reg}}{p}}{\frac{RSS}{n-p-1}}\sim F(p,n-p-1)$$

Check if $\frac{\frac{SS_{reg}}{p}}{\frac{RSS}{n-p-1}}$ > P-Value of $F$ distribution with given degrees of freedom at 95%

ANOVA Test tells us if *at least* one of the predictors has significant linear relationship

### Partial F Test
Partial F Tests compares complete model, with a reduced model , to see which is better
	Our null hypothesis assumes that the coefficients we removed from the reduced model has no impact on the full model

Assuming we drop $k$ predictors, we calculate $RSS_{drop}$, which is the $RSS$ of the reduced model, and use the distribution
$$F^{*}=\frac{\frac{RSS_{drop}}{k}}{\frac{RSS_{full}}{n-p-1}}\sim F(k,n-p-1)$$
And again check if the value is greater than the p-value of $F$ distribution with given degrees of freedom at 95%
	If it fails, then we conclude there does not exist a significant linear relationship between the model and *any* of the $k$ predictors
	If it passes, conclude there exists a significant linear relationship between the model and *at least one* of the $k$ predictors

> Notes:
>	Do not use partial F Test to compare models from different datasets
>	Do not compare models that are not subsets of one another

## Goodness Of Model
> Recall
> 	 $SS_{reg}$ is Regression Sum of Squares, variation explained by predictors
> 	 $SST$ is total sum of squares, total variation in model

>Note:
>	Each criteria measures goodness with different penalty for unnecessary complexity
>	For complete picture, consider all measures

Main measure to compare models are 
- Adjusted $R^{2}_{adj}=1- \frac{\frac{RSS}{n-p-1}}{\frac{SST}{n-1}}$
	- Look for high values
- AIC
- Corrected AIC
- BIC

The "All Possible Subsets" method of model selection, says to compare models of each size using adjusted $R^{2}$, and then use all four numerical criteria to pick the best of the best

### Coefficient of Determination
The Coefficient of Determination helps us determine which model is better, between two completely different models

For each model, can calculate the *Coefficient Of Determination* ($R^{2}$) with

$$R^{2}=\frac{SS_{reg}}{SST} =1- \frac{RSS}{SST}$$
 $0\leq R^{2} \leq 1$ so represents the proportion of variation in the response that has been explained by the model

Issue is, that a bigger model has larger $R^{2}$ even if extra predictors are not significant, so we adjust it with degrees of freedom
$$R^{2}_{adj}=1- \frac{\frac{RSS}{n-p-1}}{\frac{SST}{n-1}}$$
We want models with largest value

### Likelihood
We can calculate the likelihood of the parameters we got, given the observed data
- Depends on normality assumption

Assuming independence/uncorrelated errors, likelihood can be calculated as:
$$L(\beta,\sigma^{2}|Y)=(\frac{1}{\sigma\sqrt{2\pi}})^{n}exp(\frac{-1}{2\sigma^{2}}\sum\limits_{i=1}^{n}[y_{i}-\{\beta_{0}+\beta_{1}x_{i1}+\dots+\beta_{p}x_{ip}\}]^{2})$$
We can use Natural Log of likelihood to do calculations easier
$$ln(L(\beta,\sigma^{2}|Y))=-\frac{n}{2}\ln(2\pi)- \frac{n}{2}\ln(\frac{RSS}{n})- \frac{n}{2}$$
### Akaike's Information Criteria (AIC)
$$AIC=-2[ln(L(\hat\beta,\sigma^{2}|Y))-(p+2)]\propto n\ln(\frac{RSS}{n})+2p$$
- Penalty for complexity: $2p$ to control for added $X's$ 
- A smaller AIC indicates a better model

When $n$ is small or $p$ is a large fraction of $n$ ($\frac{n}{p+2}<40$), a correcte AIC is used
$$AIC_{c}=AIC+ \frac{2(p+2)(p+3)}{n-p-1}$$

### Bayesian Information Criteria (BIC)
Uses a harsher penalty than AIC to favour simpler models
$$BIC = -2\ln(L(\hat\beta,\sigma^{2}|Y))+(p+2)\ln(n)\propto n\ln(\frac{RSS}{n})+(p+2)\ln(n)$$
- Smaller BIC indicates better model
## Assumptions
### Multicollinearity
The *Conditional mean predictor Condition* says that the mean of each predictor is related to each other predictor in no more complicated way than linearly
$$E(X_{i}|X_{j}) = a_{0}+a_{1}X_{j}$$
	Linear or no relationship satisfies condition; anything else violates
	Ideally is no relationship

> Example of predictor-predictor plots which do, and do not violate condition:
> 	![[STA302 Cheat Sheet Multicolinearity Image.png]]

**Measuring Correlation ($VIF$)**
We can measure correlation between predictors
- Small correlation is between $0-0.4$ (or negative version)
- Moderate Correlation is between $0.4-0.6$ (or negative version)
- Strong Correlation is between $0.6-1$ (or negative version)
- Perfect correlation is concerning (sample correlations of $1$ or $-1$)
	- Results in having issues finding the inverse $(X^{T}X)^{-1}$ so we can't estimate the linear relationship

To formally check if multicollinearity is present, we can compute the *Variance Inflation Factor* ($VIF$)
- $VIF$ is only calculable for numerical predictors
- The stronger the proportion of variation, the larger the inflation
- Generally use cutoff of $VIF>5$ ot identify severe multicollinearity
	- Any $VIF>1$ means some multicollinearity present

We can find that
$$Var(\hat \beta_{j})=\frac{1}{1-(r_{12})^{2}}\times \frac{\sigma}{(n-1)s_{x_{j}}^{2}}$$
	$r_{12}$ is the sample correlation between $x_{1}$ and $x_{2}$
	$s_{x_{j}}$ is the sample standard deviation for $x_{j}$
The $VIF$ is the first term $\frac{1}{1-(r_{12})^2}$

When we have more than two terms, we can't use correlation between two variables, we use Coefficient of Determination Instead
$$VIF = \frac{1}{1-R^{2}_{j}}$$
Note $R^{2}$ is not being squared

**How to Address Multicollinearity**
- Collect more data in hopes of seeing less correlation due to more data
- Respecify model (remove/change the form on some predictors)
	- Don't remove predictor of interest
	- Consider how choice impacts model goodness

## Outliers
> Recall
> 	$Y$ is the set of our observed data
> 	$\hat Y$ is the set of our data created by our regression model

This section is focused on identifying problematic observations and understanding if individual observations affect the estimated relationship
- Unless there is a contextual reason, do not remove problematic observations from data 

> Identifying Problematic Observations
> 	![[STA302 Cheat Sheet Problematic Observations.png]]

### Leverage 

A *Leverage Observation* is an observation very far from the center of the predictor data, which has potential to shift the regression line

The *Hat Matrix* $H$ is the key $\hat Y=X\hat \beta=X(X^{T}X)^{-1}X^{T}Y=HY$
	$H$ projects $Y$ onto the model space through $X$
	The hat matrix turns $Y$ into $\hat Y$ through matric multiplication

$$ H=X(X^{T}X)^{-1}X^{T}$$
In Single Linear Regression:
$$h_{ii}=\frac{1}{n}+\frac{(x_{i}-\overline x)^{2}}{\sum\limits_{j=1}^{n}(x_{j}-\overline x)^{2}}$$
	The ratio of distance of own x-value from center, to total variation in predictor

Hat Matrix Example, and how to read:
	 ![[STA302 Cheat Sheet Hat Matrix.png|285]]
The diagonal elements $h_{ii}$ are the *leverage* of observation $i$, and tells us how much impact the value $y_{i}$ has on $\hat y_{i}$, vs the other responses

Properties of Hat Matrix Elements
- $\sum\limits_{i=1}^{n}h_{ii}=p+1$ so the average leverage is $\frac{p+1}{n}$
- $\sum\limits_{j=1}^{n}h_{ij}^{2}=h_{ii}$ because $H$ is idempotent
- $0\leq h_{ii} \leq 1$, so it tells us the fraction due to $y_{i}$ versus the other responses
- $h_{ii}$ tells us how much $\hat y_{i}$ is driven by the value of $y_{i}$
- High leverage ($h_{ii}$ close to 1) does not always mean the line has shifted - it just has the potential to do so

### Outliers
We measure how much a point is an outlier, with its standardized residual
$$r_{i}=\frac{\hat e_{i}}{s\sqrt{1-h_{ii}}}$$

### Influence
To measure the influence of one observation, we fit a model using all $n$ observations, and then refit the model using $n-1$ observations
	The difference in the estimated trend between these two models tells us influence of deleted observation

instead of fitting $n$ different delete-one models, use 
$$D_{i}=\frac{r_{i}^{2}}{p+1} \frac{h_{ii}}{1-h_{ii}}$$
	Incorporates leverage and outliers

To quantify the influence of a single observation on its own fitted value, we use the *DFFITS* (Difference in fitted values)
- Less Conservative than Cook's Distance

$$DFFITS_{i}=\frac{ \hat y_{i}- \hat y_{i(i)}}{\sqrt{s_{i}^{2}h_{ii}}}$$
Or
$$DFFITS_{i}=(\frac{h_{ii}}{1-h_{ii}})^{0.5} \frac{\hat e_{i}}{s_{(i)}\sqrt{1-h_{ii}}}$$
	$\hat y_{ii}$ is fitted value for observation $i$ using model without $i$
	$s^{2}_{i}$ is estimated error variance from model omitting $i$

Another way an observation can be influential is on the estimated value of at least one coefficient, which we quantify using $DFBETAS$ ("difference in betas)
$$DFBETAS_{j(i)}= \frac{\hat\beta_{j}-\hat\beta_{j(i)}}{\sqrt{s_{(i)}^{2}(X^{T}X)^{-1}_{j+1, j+1}}}$$
	Where $\hat \beta_{j(i)}$ is coefficient $j$ from model without point $i$

## Model Validationw
Purpose of model is important in how a preferred model is selected, and helps to know if a model with more or fewer predictors is preferable
- Descriptive Model
	- Goal is to describe the relationship, or historical vs current situation, plus estimate the effects directly
	- Focus on explanation and understanding
	- Want to know estimated effect of variable on response
	- How past behaviours/trends might affect future
	- Focus on being easy to understand and describe the relationship
	- Variables are reasonable, make sense, easy to interpret
	- Capture the predictors that affect the response well, without too many extraneous ones
- Predictive model
	- Extend current trends into the future, rather than comprehensive understanding
	- Only provide snapshot of future values with error
	- Ensure as many predictors as reasonable included without overfitting the data

Things to look for to validate model
	To say a model is validated, means that all characteristics of the model look similar in both datasets
When testing fitting model of same variables, on different datasets
- Minimal differences (< 2 s.e's) in estimated coefficients
	- Implies similar trend in both differences
- Same predictors are significantly linearly related
- Has similar $R^{2}_{adj}$
- No additional or worsening model violations
- Similar numbers and types of problematic observations
- Similar amount of multicollinearity
If these hold, then you know the way that you are fitting data, is creating a good model

Overfitting occurs when model only accurately predicts responses in the training dataset
- Models that have been trained too closely on one dataset will have low bias, but high variance in the predictions on new data
Use Mean Square Error to measure how well model fits dataset
$$MSE= \frac{ \sum\limits_{i=1}^{n}(y_{i}-\hat y_{i})^{2}}{n} $$
- Model is validated if $MSE$ is small when training model is used to make predictions on test data

Resampling is a method to split a dataset multiple times, allowing you to see how the model performs in multiple test sets
One method is "Leave-One-Out" Cross Validation (LOOCV)
- Create training set of $n-1$ observations and a test set of $1$ observation
- Repeat for each observation resulting in $n$ test sets
- See how fitted value changes without certain observations
- For each of the $n$ test sets
	- Build model using the other $n-1$ observations
	- Use model to make prediction on test set, compute squared error for prediction
	- Average errors to get $MSE$, looking for small $MSE$ to indicate validated model