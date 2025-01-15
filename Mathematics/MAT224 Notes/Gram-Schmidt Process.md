#mathematics #uoft/mat224 #uoft/mat246 

The **Gram-Schmidt Orthogonalization Process** is a process used to find an orthogonal basis for a vector space

---

# Process
**Goal:** Given a basis $\{u_{1},..u_{k}\}$ that aren't necessarily orthogonal, find a basis $\{v_{1},...,v_{k}\}$ that covers same subspace and is orthogonal

>Our strategy is to produce the vectors $v_{i}$ one at a time  
>	Start with $v_{1}=u_1$, set $W_{1}=Span(\{v_{1}\})$  
>		Produce $v_{2}$ with $v_{2}=u_{2}-P_{W_{1}}(u_{2})$  
>		This by definition, will be orthogonal to $v_{1}$  
>	Define $W_{2}=Span(\{v_{1},v_{2}\})$, Produce $v_{3}$ with $v_{3}=u_{3}-P_{W_{2}}(u_{3})$,  
>		This by definition will be orthogonal to $v_{1}$ and $v_{2}$  
>	Continue this process for each $u_{i}$, set $W_{i}=Span(\{v_{1},...,v_{i}\})$, and define $v_{i+1}=u_{i+1}-P_{W_{i}}(u_{i+1})$  
>	To make sure every vector produced is a unit vector, divide each $v_{i}$ by its norm(absolute value) during the process

We know $P_{W_{i}}(v)=\sum\limits\frac{\langle v_{i},v\rangle}{\langle v_{i},v_{i}\rangle}v_{i}$  
Given bases for a subspace $\{u_{1},..u_{k}\}$, an orthogonal basis $\{v_{1},...,v_{k}\}$ will have the values  
	$\begin{aligned} v_{1}&=u_{1}\\v_{2}&=u_{2}-\langle v_{1},u_{2}\rangle v_{1} \\\vdots\\v_{i}&=u_{i}-\sum\limits_{j=1}\langle v_{j},u_{i}\rangle v_{i}\text{  (The projection of } u_{i} \text{ on all the vectors before it } v_{1},v_{2}...)\end{aligned}$

To find a [Orthonormal](../MAT223%20Notes/Orthonormal.md) Basis, normalize by applying  
	$\begin{align} v'_{1}&=\frac{1}{||v_{1}||}v_{1} \\  &\vdots \\ v'_{n}&=\frac{1}{||v_{n}||}v_{n}\end{align}$


> This process can be performed on any basis for any subspace, hence there is an orthonormal basis for every subspace