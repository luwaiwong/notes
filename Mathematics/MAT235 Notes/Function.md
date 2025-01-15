#mathematics #statistics #computer-science 
#uoft/mat235 


A **Function** from [Set](../MAT223%20Notes/Set.md) X to a [Set](../MAT223%20Notes/Set.md) Y assigns to each element of X exactly one element of Y. Put simply, a **function** takes in inputs, and assigns them to *exactly one* output.

In computer science, a **Function** is a program which takes in **inputs**, and returns an **Output**

---
# Mathematics
A function $f:X\rightarrow Y$ is read as $f$, which *takes* $X$ to $Y$, function with [Domain](../../Computer%20Science/CSC236/CSC236%20Notes/Domain.md) $X$ and [Image](../MAT223%20Notes/Image.md) $Y$

The [Domain](../../Computer%20Science/CSC236/CSC236%20Notes/Domain.md) is the set of inputs of a function
The [Codomain](Codomain) is the entire set of outputs of a function

The [Image](../MAT223%20Notes/Image.md) is output of a set, under a function
- The [Image](../MAT223%20Notes/Image.md) of subset $A\subset X$ *under* $f$ is the set: $f(A)=\{y:y=f(a) \text{ for some a in } A\}$ 
- The *Image of* $f$ means the image of $X$ under $f$, denoted $im f=f(X)$d

The [Inverse](../MAT224%20Notes/Inverse.md) of a function $f:X\rightarrow Y$, is a function $g:Y\rightarrow X$ such that $g\circ f = id_{X}$ and $f\circ g = id_{Y}$
- $f$ has an inverse if and only if $f$ is [Bijective](../MAT301%20Notes/Bijective.md)
- The inverse can be denoted $f^{-1}$
## Properties
- $f$ is [Injective](../MAT224%20Notes/Injective.md) if it doesn't send different inputs to the same output
- $f$ is [Surjective](../MAT224%20Notes/Surjective.md) if the image equals the codomain 
	- Note that this only makes sense, if you specify a codomain
- A [Function](.md) is [Bijective](../MAT301%20Notes/Bijective.md) if it is both [Injective](../MAT224%20Notes/Injective.md) and [Surjective](../MAT224%20Notes/Surjective.md)
- The [Preimage](../MAT301%20Notes/Preimage.md) of a function for a set $S\subset Y$ is the set of element of which the [Image](../MAT223%20Notes/Image.md) under $f$ is $S$:
	- Formally: $f^{-1}(S):=\{x\in X: f(x)\in S\}$ 
- A function $f$ is a [Self Map](../MAT301%20Notes/Self%20Map.md) if $Y=X$, or if $f$ maps $X$ to itself
- The *identity map* $x\to x$ is a self map
	- Denoted $id$ or $id_{X}$

> Example of Injective, Surjective, and Bijective on $\mathbb{R}\rightarrow \mathbb{R}$
> 	![Pasted image 20240927112917](../MAT301%20Notes/attachments/Pasted%20image%2020240927112917.png)


## Types of Functions
A [Function of One Variable](Function%20of%20One%20Variable.md) is a functions which takes one input, and returns one output. A function of one variable represents a 2D graph

[Function of Two Variables](Function%20of%20Two%20Variables.md) are functions which take in *two inputs*, and return *one output*. A function of two variable represents a *3D graph*

[Functions of Three Variables](Functions%20of%20Three%20Variables) take on **3** inputs, and returns **1** output. Functions of Three Variables represents an object in **4 dimensions**.
	Since it is difficult to visualize 4-space, we often use contour diagrams to help us visualize functions of three variables

## Contour Diagram
The [Contour Diagram](Contour%20Diagram.md) of a **function of three variables** is called a  **level surface**, or **level set**. 
A **level surface** of a function of three variables, is a surface of the form $$f(x,y,z)=c$$Where $c$ is a constant.

The function $f$ can be represented by the family of level surfaces obtained by allowing $c$ to vary.

## Local Linearity
The **local linearization** of $f(x,y,z)$ at $(a,b,c)$ is given by $$f(x,y,z) \approx f(a,b,c)+f_{x}(a,b,c)(x-a)+f_{y}(a,b,c)(y-b)+f_{z}(a,b,c)(z-c)$$ This can also be represented as a relationship between $\Delta f, \Delta x,$ and $\Delta y$: $$\Delta f \approx f_{x}(a,b)\Delta x+f_{y}(a,b)\Delta y$$