#statistics #uoft/sta237 

A **Hypergeometric experiment** samples $n$ individuals/objects from a [Set](../../Mathematics/MAT223%20Notes/Set.md) of $N$ individuals/objects where:
1. $N$ is finite
2. Each individual/object can be categorized as "success" or "failure"
3. $M$ "successes" in the population
4. Sampling **without** replacement & each subset of $n$ equally likely to be chosen


X is a **Hypergeometric** [Discrete Random Variable](Discrete%20Random%20Variable.md) if it has the the [Probability Mass Function](Probability%20Mass%20Function.md):

---
# Definition
X is a **Hypergeometric** [Discrete Random Variable](Discrete%20Random%20Variable.md) if it has the the [Probability Mass Function](Probability%20Mass%20Function.md):  
n: # of samples chosen  
N: Total # of individuals  
M: # of "successes" in population  
X: number of successes in the sample  
$$p_{x}(x)=\frac{(\frac{M}{X})(\frac{N-M}{n-x})}{(\frac{N}{n})}$$For an *integer* $x$ with $max(0,n-N+M)\leq x \leq min(n,M)$ 

# Values of Related Functions
Given $n$ objects from a set of $N$ objects, and $M$ 'successes' in the population  
[Expected Value](Expected%20Value.md):$$E(X)=n\frac{M}{N}$$  
[Variance](Variance.md):$$Var(X)=n(\frac{N-n}{N-1})(\frac{M}{N})(1-\frac{M}{N})$$
# Example 
Suppose a large aquarium exhibit is home to a total of 15 sea turtles who are in need of  
treatment to prevent the spreading of an infection. Veterinarians have treated, marked,  
and released three of them (that means there are 3 treated and 12 untreated turtles in  
the exhibit).  
The Veterinarians then capture (assume at random) 5 sea turtles from the exhibit. What is  
the probability that at least one of these newly captured sea turtles have already been  
treated?

## R Functions 
Computing [Probability Mass Function](Probability%20Mass%20Function.md): $p(x)=P(X=x)$  
`dhyper(x,M,N-M,n)`  
Computing [Cumulative Distribution Function](Cumulative%20Distribution%20Function.md):  $F(x)=P(X\leq x;n,M,n)$  
`phyper(x,M,N-M,n)`  
Determine Quantile $x_{prob}$ such that $F(x_{prob})=prob$:  
`qhyper(prob,M,N-M,n)`  
Generate *k* independent observations of X:  
`rhyper(k,M,N-M,n)`
