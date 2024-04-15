#statistics 
#uoft/sta237 

The **Binomial distribution** is used to model experiments with only two possible outcomes. It describes the probability of a number of successes given $n$ trials of the experiment

---
# Definition
A **Binomial experiment** consists of a sequence of smaller experiments (trials) and has these properties:  
1. fixed number of trials (𝑛)  
2. independent trials  
3. dichotomous trials (“success”, “failure”)  
4. constant probability of success, 𝑝, across trials

A [Discrete Random Variable](Discrete%20Random%20Variable.md) *X* has a **binomial distribution** when, with a [Probability](Probability.md)  p, where $0 \leq p \leq 1$, if its [Probability Mass Function](Probability%20Mass%20Function.md) can be given by p$$p_{X}(k) =P(X=k) = (C_{n,k})p^{k}(1-p)^{n-k}\text{ for }k=0,1,...,n$$This distribution is denoted $Bin(n,p)$

The **binomial distribution** can be used to help solve problems where an experiment with two possibilities is conducted multiple times.

If a binomial experiment consists of only one trial (n=1), then it follows the [Bernoulli distribution](Bernoulli%20distribution.md)
# Other
Given $n$ trials, and a $p$ probability of 'success',
[Expected Value](Expected%20Value.md):
$$E(X)=np$$
[Variance](Variance.md):
$$Var(X)=np(1-p)$$
[Moment Generating Function](Moment%20Generating%20Function.md): $$M_{X}(t)=(pe^t+(1-p))^n$$



# Example
Consider an experiment where you must complete a multiple choice exam, which has 10 questions with 4 choices, and which you pick each answer by random.
The probability that you answer exactly one question correctly would be $$P(X=1) =\frac{1}{4}\cdot(\frac{3}{4})^{9}\cdot 10$$
$\frac{1}{4}$ being the one question correct, and $(\frac{3}{4})^9$ being all the possible ways you can answer the other questions wrong
Then, the probability of getting *k* number of questions correct would be $$P(X=k)=(\frac{1}{4})^{k\cdot}(\frac{3}{4})^{10-k}\cdot C_{10,k}$$which is the probability that *k* questions were answered correctly, times the probability that the other 10-*k* answers are wrong, times the number of ways $C_{10,k}$ this can occur
![Pasted image 20231011133724](Attachments/Pasted%20image%2020231011133724.png)