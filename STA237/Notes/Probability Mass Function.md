#statistics 
#uoft/sta237 
The **Probability Mass Function** describes the [Probability](Probability.md) of each [Event](Event.md) in a [Discrete Random Variable](Discrete%20Random%20Variable.md)

---
# Probability Mass Function
Let $X$ denote a [Discrete Random Variable](Discrete%20Random%20Variable.md), The **Probability Mass Function**, is the [Function](../../MAT235/Notes/Function.md) $p:\mathbb{R} \rightarrow [0,1]$ defined as$$p(a) = P(X=a) \text{ for } -\infty$$
Or the probability that the [Discrete Random Variable](Discrete%20Random%20Variable.md) is $a$ 


Both the [Probability Mass Function](.md) and the [Cumulative Distribution Function](Cumulative%20Distribution%20Function.md) of a discrete random variable *X* contain the all the probabilistic information of *X*, in other words, you can determine the *probability distribution* of *X* with either. 

## Properties
- $f(y) \geq 0  \ \ \forall y, -\infty < y < \infty$
- $\int_{-\infty}^{\infty}f(y)dy=1$
# Example

^f17a84

Lets say we are playing "Snakes and Ladders", where moves are determined by the higher of two throws of die, the sample space would be $$\begin{gathered} \Omega = \{(w_{1},w_{2}): w_{1},w_{2}\in\{ 1,2,...,6\} \} \\ = \{ (1,1),1,2),...,(1,6),(2,1),...,(6,5),(6,6)\} \end{gathered}$$However, since we are only interested in the higher of the outcomes, we can create the [Discrete Random Variable](Discrete%20Random%20Variable.md) function $M:\Omega \rightarrow \mathbb{R}$, which can be defined as $$M(w_{1},w_{2}) = max\{w_{1},w_{2}\} \text{ for } (w_{1},w_{2})\in \Omega$$ The probabilities for the various events for the function can be shown in the table 
The **Probability Mass Function** $p$ of $M$ would be:![Pasted image 20231011132626](Attachments/Pasted%20image%2020231011132626.png)

Example of **Probability Mass Function** and **Distribution Function**![Pasted image 20230927160637](Attachments/Pasted%20image%2020230927160637.png)