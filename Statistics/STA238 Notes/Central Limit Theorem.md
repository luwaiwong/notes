#statistics  
#uoft/sta238 

The **Central Limit Theorem** says that the **Sample Mean**, and the mean of different samples of the same [Probability Distribution](Probability%20Distribution.md) $\overline X_{n}$ will follow a  [Normal Distribution](../STA237%20Notes/Normal%20Distribution.md), centered at the mean of the original probability distribution $X$

The **Central Limit Theorem** is a stabilization of the distribution of the **Sample Mean**, so that it is centered at 0, 

---
# Formal Definition
Let $X_{1},X_{2},...$ be any sequence of [Independent Identically Distributed Random Variables](Independent%20Identically%20Distributed%20Random%20Variables) with finite positive variance.  
Let $\mu$ be the expected value and $\sigma^{2}$ be the variance  
of each of the $X_{i}$ . For $n \geq 1$

>Define $$Z_{n}=\frac{\overline X_{n}-E[\overline X_{n}]}{\sqrt{Var(\overline X_{n})}}$$  
>Also written as (Converting $E(\overline X_{n}$ and $Var(\overline X_{n})$ to equations for sample versions): $$Z_{n}=\frac{\overline X_{n}-\mu}{\frac{\sigma}{\sqrt{n}}}$$  
>As $n\rightarrow \infty$, $Z_{n}$ will follow a standard normal distribution  $N(0,1)$

this is a stabilization of $\overline X_{n}$, so that it is centered at 0 and follows a standard bell curve  
We can use $Z_{n}$ to calculate the probability of different values of $\overline X_{n}$