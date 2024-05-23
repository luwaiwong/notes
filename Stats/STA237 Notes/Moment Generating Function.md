#statistics #uoft/sta237 

The **moment generating function** of a [Discrete Random Variable](Discrete%20Random%20Variable.md) $X$ is $$M_x(t)=E(e^{tX})= \Sigma_{\forall x}e^{tX}p_{X}(x), \text{ or } \int_{-\infty}^{\infty}e^{tX}P_{X}(x)dx
$$Or, the [Expected Value](Expected%20Value.md) of the [random variable](Discrete%20Random%20Variable.md) function $e^{tX}$, instead of the **expected value** of $X$ like we were looking at before

The **mgf** exists if $M_{X}(t)$ is defined for an interval of $t$ around 0 ($-h<0<+h$)

If it exists, then you can calculate the $k^{th}$ moment of $X$ as $E(X^{k})=M_{X}^{(k)}(0)$

---
# What is the MGF?
The moment generating function is equivalent to
$$\begin{aligned} M_{X}(t) &= E(e^{tX}) = \int_{-\infty}^{\infty}e^{tX}P_{X}(x)dx \\ &= E[1+X+\frac{t^{2}X^{2}}{2!}+\frac{t^{3}X^{3}}{3!}+...] \text{ (the Taylor Series Estimation of }e^{x)}\\ &=1+tE[X]+\frac{t^2}{2!}E[X^{2}]+\frac{t^{3}}{3!}E[X^3]...\end{aligned}$$
Since the moment generating function includes **every moment of the Expected Value**, if we know the value of the moment generating function (a simpler version of it), we can figure out the different moments by getting the **derivative** of the MGF
This technique is the same as manipulating **Taylor Series** in **MAT137**

If you want the first moment, then we can get it by setting $t=0$ and getting the **first derivative**, the second moment can be acquired with $t=0$ and getting the **second derivative**
# Notation
$M_{x}(t)$
M tells us 
X is the random variable
# MGF of Distributions

## [Binomial Distribution](Binomial%20Distribution.md)
The **mgf** of $X~BIN(n,p)$ is $$M_{X}(t)=(pe^{t}+(1-p))^n$$