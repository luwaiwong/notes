#statistics #uoft/sta237

The **Negative Binomial Distribution** is used to model experiments with only two possible outcomes.
 
It measures the *opposite* of the [[Binomial Distribution]], which describes the probability of a number of successes given $n$ trials of the experiment. Instead, it measures the number of trials, that will achieve $r$ successes

---

# Probability Mass Function
Given a [[Discrete Random Variable]] $X$, the target number of successes $r$, and the [[Probability]]  of success $p$, The [[Probability Mass Function]] of a **Negative Binomial Distribution** is $$p_{X}(x)= {{x-1}\choose{r-1}}p^{r}(1-p)^{x-r}$$

# Properties
Given the target number of successes $r$, and the *probability* of success $p$
[[Expected Value]]: $$E(X)=\frac{r}{p}$$
[[Variance]]: $$Var(X)=\frac{r(1-p)}{p^{2}}$$
[[Moment Generating Function]]: $$M_{X}(t)=\frac{( pe^{t})^{r}}{[1-e^{t}(1-p)]^{r}}$$