#assignment 

DUE SUNDAY 22ND, 11:59PM

---

# Work
## Question 3
### 3c)
Yes, it seems possible that a solution $f(x)$ to $y'=-y^{\frac{1}{3}}$ could be negative with the initial condition $f(0)=1$. At $f(0)=1, y'=-1$, and as $y<1, y' < -y$  which suggests that as $x$ increases, $y'< -1$ and eventually $y < 0$


### 3e)
Can you find a delta such that f_approx(t)>0 and g_approx(t) > 0 for all t?
**FOR F**

Yes, it is possible to find a $\Delta$ such that $f_{approx}(t)>0$. 

Experimentally, we can pick $\Delta=0.5$, and simulate with the initial conditions $y_{0}=1$, until $t=50$ and find that $y>0$ for all $t$
Graphing $f_{approx}$ using the conditions listed above
>	![[Pasted image 20240922132351.png]]

Analytically, for all $t$, $y' = -y$, and so for each step using Euler's Method, as long as $\Delta < 1$, $y$ will decrease by less than its own value, such that if $y > 0$, $y-y' > 0$. Thus it is possible to find a $\Delta$ such that $f_{approx}(t)>0$ for all $t$

**FOR G**

No, it is impossible to find a $\Delta$ such that $g_{approx}(t)>0$

We can come to this result analytically. For all $y>0$, $y' < 0$, which means that $y$ will be constantly decreasing, and when $y<1$, $y' < -y$. If we pick a point $t=t_{0}$ where $y < 1$, because $\forall y \ s.t. \ 0<y<1, y' < -y$, it is guaranteed that at some point after $t_{0}$, $y<0$


## Question 4
### a) Will y < 0

Argument for will

As seen above

Yes, Jason and Bernardo will inevitably bounce a cheque if they continue to donate in an amount with a proportionality constant of 1 to their inheritance, raised to the power 1/3.

As seen above, given $y'=-y^{1/3}$, it is impossible to find a $\Delta$ and initial conditions such that $g_{approx}(t)>0$ for all $t$. Eventually $g_{approx}(t)<0$. The situation of Jason and Bernardo is the same as our simulation of $y'=-y^\frac{1}{3}$. Jason and Bernardo have an initial condition (Their initial inheritance), and pick a $\Delta$ (How often they donate their money), and donate it according to the function $y'=-y^\frac{1}{3}$. 

Given that we know that it is inevitable that $g_{approx}(t)<0$ for some $t$, if Jason and Bernardo continue to donate money at their rate, we know that their bank balance will eventually go negative.

Argument for will not

No, a cheque will not bounce if Jason and Bernardo donate with in an amount proportional to the remaining amount of money raised to the power 1/3, provided they have a significant inheritance. 

Lets say for example, Jason and Bernardo have received an inheritance in the amount of $100,000. At this amount, with a proportionality constant of 1, Jason and Bernardo will be donating an amount less than $50 a year. At this rate, after 100 years, Jason and Bernardo will have donated less than $5000, only 5% of their total inheritance amount. With these assumptions, Jason and Bernardo will never donate enough money in their lifetimes, such that their bank balance will ever go negative
### b)

No, for any proportionality constant, given enough time, Jason and Bernardo will eventually bounce a cheque. 

This is because if we define $y'$ with the proportionality constant as $y'=-(p\cdot y)^\frac{1}{3}$, given any proportionality constant $p$, $\exists y_{0}, s.t. \forall 0<y<y_{0}, y'<-y_{0}$. This value $y_{0}$ can be found as $\sqrt{p}$. 
Since this is true, following the same logic as above, since $y$ is always decreasing while $y>0$, we can find a point $t=t_{0}$ where $y < \sqrt{p}$, because $\forall y \ \ s.t. \ \ 0<y<\sqrt{p}, y' < -y$, it is guaranteed that at some time after this point, $y < 0$

We can illustrate this by simulating an extremely low proportionality constant, and a very small initial value.
	![[Pasted image 20240922145950.png]]
Note in the resulting simulation, how even with such a low proportionality constant, $y$ eventually reaches a negative number

### c)


The upper bound for the number of requests Jason and Bernardo can fulfil before running out of money depends on the proportionality constant, and the initial value of their inheritance

To try to find a pattern in the number of requests Jason and Bernardo can fulfil before running out of money, one solution is to record the number of requests Jason and Bernardo can fulfil, with different initial values

Based on this data, one potential for an upper bound for the number of requests Jason and Bernardo can fulfil before running out of money is with the initial value itself.

If Jason and Bernardo start with $100 of inheritance, then an upper bound estimate of the amount of requests they can fulfil is 100