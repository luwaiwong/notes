#statistics #uoft/sta237 

A **Discrete Random Variable** is a **numerical** outcome of a random experiment (*quantitative random outcome*)

---

# Definition 

Let $\Omega$ be a [Sample Space](Sample%20Space.md), A **discrete random variable** is a [Function](Function.md) $X:\Omega \rightarrow R$ that takes on a finite or infinite number of values $a_{1},a_{2},...,a_{n}$ and "transforms" a sample space $\Omega$ to a more "tangible" sample space, where events are more directly translated to what we are interested in.

---
# Example
Lets say we are playing "Snakes and Ladders", where moves are determined by the sum of two throws of die, the sample space would be $$\begin{gathered} \Omega = \{(w_{1},w_{2}): w_{1},w_{2}\in\{ 1,2,...,6\} \} \\ = \{ (1,1),1,2),...,(1,6),(2,1),...,(6,5),(6,6)\} \end{gathered}$$ However, since we are only interested in the sum of the outcomes, we can use the value of the function $S:\Omega \rightarrow \mathbb{R}$, which can be defined as $$S(w_{1},w_{2}) = w_{1}+w_{2} \text{ for } (w_{1},w_{2})\in \Omega$$The sums for the various events for the function can be shown in the table ![Pasted image 20230927153452](Pasted%20image%2020230927153452.png)

Suppose another game the moves are given by the largest of two independent throws. In this case we are interested in the value of the function $M:\Omega \rightarrow \mathbb{R}$ given by:$$M(w_{1},w_{2}) = max\{ w_{1},w_{2}\}) \text{ for } (w_{1}, w_{2}) \in \Omega$$ The functions S and M are examples of what we call [Discrete Random Variable](.md)s








We can characterize, or analyze the probabilities in X with different functions
