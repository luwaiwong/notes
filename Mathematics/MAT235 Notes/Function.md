#mathematics  
#uoft/mat235  
#statistics 

A **Function** from [Set](../MAT223%20Notes/Set.md) X to a [Set](../MAT223%20Notes/Set.md) Y assigns to each element of X exactly one element of Y. Put simply, a **function** takes in inputs, and assigns them to *exactly one* output.

---
# Functions
A [Function of One Variable](Function%20of%20One%20Variable.md) is a functions which takes one input, and returns one output. A function of one variable represents a 2D graph  
[Function of Two Variables](Function%20of%20Two%20Variables.md) are functions which take in *two inputs*, and return *one output*. A function of two variable represents a *3D graph*  
[Functions of Three Variables](Functions%20of%20Three%20Variables) take on **3** inputs, and returns **1** output. Functions of Three Variables represents an object in **4 dimensions**.  
	Since it is difficult to visualize 4-space, we often use contour diagrams to help us visualize functions of three variables

## Contour Diagram
The [Contour Diagram](Contour%20Diagram.md) of a **function or three variables** is called a  **level surface**, or **level set**.  
A **level surface** of a function of three variables, is a surface of the form $$f(x,y,z)=c$$Where $c$ is a constant.

The function $f$ can be represented by the family of level surfaces obtained by allowing $c$ to vary.

## Local Linearity
The **local linearization** of $f(x,y,z)$ at $(a,b,c)$ is given by $$f(x,y,z) \approx f(a,b,c)+f_{x}(a,b,c)(x-a)+f_{y}(a,b,c)(y-b)+f_{z}(a,b,c)(z-c)$$ This can also be represented as a relationship between $\Delta f, \Delta x,$ and $\Delta y$: $$\Delta f \approx f_{x}(a,b)\Delta x+f_{y}(a,b)\Delta y$$