#mathematics  
#uoft/mat224 

The **Complex Numbers** $\mathbb{C}$ are a number system in order to account for numbers, which in the real number system $\mathbb{R}$, have no roots.

In $\mathbb{R}$, there is no answer for $\sqrt{-1}$, this value is undefined, but in the complex number system $\mathbb{C}$, $\sqrt{-1}$ has a numerical value

---
# Definition
The set of **Complex Numbers**, $\mathbb{C}$  is a set of *ordered pairs of real numbers* $(a,b)$ with the following operations of addition and multiplication. 
- For all $(a,b)$ and $(c,d)$, their **sum** is the **complex number** $(a,b)+(c,d)=(a+c,b+d)$

For example, $z$ is a **Complex Number**, where $z=(a,b)\in \mathbb{C}$,  
An alternative notation for $z$ is: $z=a+bi\in \mathbb{C}$  
	The real part of $z, Re(z)$ is the real number $a$  
	The *imaginary part* of $z, Im(z)$ is the real number $b$  
	$z$ is a real number if $Im(z)=0$, and *purely imaginary* if $Re(z)=0$  
	$i$ represents the imaginary number $\sqrt{-1}$  
In this form, addition and multiplication of complex numbers become
- $(a+bi)+(c+di)=(a+c)+(b+d)i$
- $(a+bi)(c+di)=(ac-bd)+(ad+bc)i$
## Multiplication & Division
- The **Product** of $(a,b)$ and $(c,d)$ is the the **Complex Number** $(ac-bd,ad+cb)$
- **Division** of a complex number works as follows $z=a+bi, x=c+di$, $\frac{z}{x}=\frac{(ac-bd)+(ac+bd)i}{c^{2}+d^{2}}$
- Every polynomial with complex numbers of the form $p(z)=z^{n}-z_{0}, z_{0}\in \mathbb{C}$ has $n$ distinct roots

## Conjugate
The [Conjugate](Conjugate.md) of a complex number $z=a+bi$, is $\overline z=a-bi$  
	Denoted $\overline z$

The Conjugate of a fraction is $\overline{\frac{z_{1}}{z_{2}}}=\frac{\overline z_{1}}{\overline z_{2}}$  
$|z|^{2}-z\overline z$

> Complex numbers have $n$ distinct $n$th roots  
> 	Or, that every polynomial of the form  
> 		$p(z)=z^{n}+z^{n-1}+...$  
> 	has $n$ distinct complex number roots  
> 	Or, there are $n$ distinct solutions for $p(z)=0$  
> 		As opposed to real numbers, $(x^{2}+1)=0$ has no solutions, even though it is power of 2  
> 	This also says, that every number $x$ to $\sqrt[n]{x}$, has $n$ solutions.  
> 		For example $\sqrt[3]{1}$ has one real solution, $1$, but as a complex number has $3$ solutions

## Real Numbers
The set of [Real Numbers](Real%20Numbers.md) $\mathbb{R}$, is a [Subset](Subset) of [Complex Numbers](.md), where the second value is $0$.  
	So, $a\in \mathbb{R}$ is $(a,0)\in \mathbb{C}$  
		We can see that:  
		Addition:  
			$(a,0)+(c,0)=(a+c,0), = a+c$  
		Multiplication:  
			$(a,0)(c,0)=(ac-0\cdot 0,a\cdot 0+c\cdot 0)=(ac,0)=a\cdot c$  
		Thus, the **real number definition** with **complex numbers** works.


> The complex number $i$ or $\sqrt{-1}$ is $(0,1)$  
> 	Verifying:  
> 		We know $i^{2}=-1, (\sqrt{-1})=i$  
> 		$(0,1)(0,1)=(0\cdot 0 - 1\cdot 1, 0\cdot 1 + 0\cdot 1)=(-1,0)$  
> 		We know that $(-1,0)$ corresponds to the real number $-1$, thus $i=(0,1)$  
> The set of complex numbers we defined, works for what we are looking for, it defines a system where a numbers square root can be negative  
> It also includes the set of real numbers as a subset, so is an extension onto the real number system

## Absolute Value/Modulus
The **Absolute Value**, or **Modulus** of a Complex Number $z \in \mathbb{C}$, or $z=a+bi\in \mathbb{C}$ is:  
	$|z| = \sqrt{a^{2}+b^{2}}$  
	This absolute value, can be imagined as the **length** of the **Complex Number**  
		Distance between $z$ and the origin  
		(Remember, complex numbers are an *ordered pair of real numbers*, so conceptually like a 2D vector? With a point in 2D space?)

The modulus of a fraction is $| \frac{z_{1}}{z_{2}} | = \frac{|z_{1}|}{|z_{2}|}$  
Denoted $|z|$

> The absolute value of a real number $|x|$ has two possible values, $-x, x$ The absolute value of a complex number however is much more complicated  
> If $x$ is a complex number, then $|x|=\sqrt{a^{2}+b^{2}}=c$, and $a^{2}+b^{2}=c^{2}$. That is, $|x|$ defines a circle, of radius $c$, and the actual value of $x$ lies on the circle

## Properties 
- For all $(a,b)$ and $(c,d)$, their **sum** is the **complex number** $(a,b)+(c,d)=(a+c,b+d)$
- The **Product** of $(a,b)$ and $(c,d)$ is the the **Complex Number** $(ac-bd,ac+cb)$
- **Division** of a complex number works as follows $z=a+bi, x=c+di$, $\frac{z}{x}=\frac{(ac-bd)+(ac+bd)i}{c^{2}+d^{2}}$
- Every polynomial with complex numbers of the form $p(z)=z^{n}-z_{0}, z_{0}\in \mathbb{C}$ has $n$ distinct roots
- For a complex number $z=a+bi$, $(a+bi)^{-1}=\frac{(a-ib)}{(a^{2}+b^{2})}$

Identities to remember
- $\overline {\langle u,v \rangle}+ \langle u,v \rangle= 2\mathrm{Re}\langle u,v \rangle$
- $|z|^{2}-z\overline z$
- $e^{iy}=(\cos y+i\sin y)$

## Notation
- $\overline z$ denotes conjugate
- $|z|$ denotes modulus/absolute value

# Polar Coordinate Representation

>If we imagine complex numbers as a 2D vector, then we can imagine *real numbers* as just the x-axis of that 2D Space

The **Polar Coordinate** representation of a **Complex Number** $z$ is:  
	$z=|z|(\cos(\theta)+i\sin(\theta))$  
	Where $z=a+bi$  
		Here, $\theta$ is the *angle* from the *x-axis* of the 2D conceptualization of the complex number

The [Argument](Argument) of a **Complex Number** is its polar coordinate angle  
	$\theta=Arg(z)$  
	$\theta=\tan^{-1}\frac{b}{a}$ 
## Properties of Polar Coordinates

Given $z_{i}=r_{i}(\cos(\theta_{i})+i\sin(\theta_{i}))$  
$\frac{z_{1}}{z_{2}}=\frac{r_{1}}{r_{2}}(\cos(\theta_{1}-\theta_{2}+i\sin(\theta_{1}-\theta_{2})))$  
General  
$z^{2}=|z|^{2}(\cos(2\theta)+i\sin(2\theta))$  
$z^{-1}=|z|^{-1}(\cos(-\theta)+i\sin(-\theta))$  
$z^{n}=|z|^{n}(\cos(n \theta)+i\sin(n \theta))$  
For i  
$\begin{aligned}i&=1(\cos(\frac{\pi}{2})+i\sin(\frac{\pi}{2}))\\&=i \end{aligned}$  
$\begin{aligned}\sqrt{i}&=1\left(\cos\left(\frac{\pi}{4}\right)+i\sin(\frac{\pi}{2})\right)\\ &=\frac{\pm\sqrt{2}}{2}(1+i) \end{aligned}$  
$\sqrt[3]{i}=\frac{\pm\sqrt{3}+i}{2}, (-i)$  


 **De Moivre's Formula**:  
	 if $n$ is an integer,  
		$z^{n}=r^{n}(\cos(n \theta)+i\sin(n \theta))$






