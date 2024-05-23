#mathematics #uoft/mat235

# Info
[MAT235 Definitions](MAT235%20Definitions.md)

---
# Textbook Notes
## Chapter 12
### 12.1 Functions of Two Variables

> Say you have a loan, to calculate the monthly payment (m), you need the loan amount (L) and the interest rate (r). You can express the value of the monthly payment as a [Function](Function.md) of two variables, like: $m \ = \ f(L,r)$

A [Function of Two Variables](Function%20of%20Two%20Variables.md) $f(x,y)$ is a [Function](Function.md) with two inputs, $x$ and $y$ with one output, $z$
	Functions of two variables can be represented and graphed in 3D space

3D Coordinates are represented by (x,y,z) where the xy plane is horizontal, and the z-axis extends vertically. Functions of two variables can be graphed in 3D coordinates. 
	Go to [Function](Function.md) for examples of 3D equations

[Calculating Distance](Calculating%20Distance.md) in 3D space can be done using the formula
$$Distance \ = \ \sqrt{(x_1-x_2)^2+(y_1-y_2)^2+z_1-z_2)^2}$$
### 12.2 Graphs and Surfaces
You can visualize functions of two variables using 3D surfaces/graphs
>An example of a graph in 3D space
	![339](Images/Pasted%20image%2020230919220119.png)
Using these graphs can help with visualizing problems.

For a function $f(x,y)$, the function we get by holding $x$ fixed and letting $y$ vary is called a [Cross Section](Cross%20Section.md) of $f$ with $x$ fixed.
	The graph of the cross section with $x=c$ we get is the same we'd get by intersecting the graph of $f$ with the plane $x=c$
	A cross-section with any other variable is defined similarly

Visualizing functions with [Cross Section](Cross%20Section.md)s can be helpful
> Example:
	![337](Images/Pasted%20image%2020230919220237.png)![309](Images/Pasted%20image%2020230919220255.png)

[Types of Functions of Two Variables](Types%20of%20Functions%20of%20Two%20Variables.md)]
[Linear Functions](Linear%20Function.md)
	The graph of a linear function of two variables is a plane
Cylinders
	Cylinders are when we graph an equation like $z=x^{2}$ with one variable missing
		Since $y$ is missing from the equation above, the **Cross Sections** with $y$ fixed are all the same

Another strategy for analyzing 3D functions is translating functions into functions we already know. 
	For example $z=(x-3)^2+y^2$ is simply the parabolic two variable function shifted +3 on the x axis

### 12.3 Contour Diagrams
A [Contour Diagram](Contour%20Diagram.md), like topographical maps, can help us visualize the surface of a function and its behavior. 
	Example of a Contour Diagram:
	![Pasted image 20230919221020](Images/Pasted%20image%2020230919221020.png)

> Contour Diagrams are essentially depicting the cross section of a function at certain intervals on an axis. The closer lines are together on the contour diagram, the faster the rate of change for the function at that point.

You can find contours for a function *f* algebraically as long as you have a formula for *f(x,y)*. If the function has the equation $z = f(x,y)$ then the contour for different heights (c) can be obtained by solving $f(x,y)=c$ for different c

> Example of a contour diagram 
	![Pasted image 20230919221716](Images/Pasted%20image%2020230919221716.png)

The [Cobb-Douglas Production Function](Cobb-Douglas%20Production%20Function.md) has the form $P=f(N, V)=cN^{\alpha}V^\beta$, where P is the quantity produced and $c,\alpha$, and $\beta$ are positive constants, $0 < \alpha < 1$ and $0 < \beta < 1$
### 12.4 Linear Functions
>Linear functions are similarly important in two-variable calculus as they are in one-variable calculus. In one variable calculus, a function will look like a straight line(linear function) as you zoom in close enough (Instantaneous rate of change). In two variable calculus, a function will look like a plane (linear function) if as you zoom in. 

How do we define a [Plane](Plane.md) as flat? A plane is flat as long as it has the same slope along each axis, so, $\Delta z / \Delta x$  is constant, and $\Delta z / \Delta y$ is constant

If a [Plane](Plane.md) has slope $m$ in the x-direction, slope $n$ in the y-direction, and passes through the point $(x_{0},y_{0}z_{0})$, then its equation is:
$z=z_{0}+m(x-x_{0})+n(y-y_{0})$

> Just as in 2-space, a line is determined by two points, so in 3-space a plane is determined by 3 points, provided they do not lie on a line

> Contour Diagrams of Linear Functions
	![Pasted image 20230919223128](Images/Pasted%20image%2020230919223128.png)

Contours of linear functions are parallel lines, evenly spaced

### 12.5 Functions of Three Variables
>We need the ability to calculate functions of any number of variables, however functions of more than two variables are hard to visualize, because functions of three variables would be 4 dimensional. Like how contour diagrams are 2D in functions of two variables, we can represent the contour diagrams of a 4 dimensional space with a contour diagram which are 3D surfaces

A [Function of Two Variables](Function%20of%20Two%20Variables.md), f(x, y), can be represented by a family of level curves of the form f(x, y) = c for various values of the constant, c.

> Basically as a [Functions of Three Variables](Functions%20of%20Three%20Variables), with a contour diagram held a different constants

A **Level Surface**, or **Level Set** of a function of three variables, f(x, y, z), is a surface of the form f(x, y, z) = c, where c is a constant. 
	The function f can be represented by the family of level surfaces obtained by allowing c to vary.

> This approach of level surfaces is similar to that of using [Contour Diagrams](Contour%20Diagram.md) for **Functions of Two Variables**

Example of Contour Diagrams
	![Pasted image 20230919225816](Images/Pasted%20image%2020230919225816.png)

##### Some Surfaces Encountered So Far
	![Pasted image 20230919231245](Images/Pasted%20image%2020230919231245.png)![334](Images/Pasted%20image%2020230919231258.png)
Surfaces represent functions of two variables AND functions of three variables. Surfaces represent a two-variable function, and are also a part of a *family* of **Level Surfaces** that represent a three-variable function

A sphere defined as $x^2+y^2+z^2=1$, after solved, represents two, two-variable functions,
$z = \sqrt{1-x^2-y^2}$ and $z=-\sqrt{1-x^2-y^2}$ 
### 12.6 Limits and Continuity
A function is [Continuous](Continuous.md) at a point if its value around the point are close to the value at the point (The limit exists at the point). Otherwise, this function is **discontinuous** at the point.

A function *f* has a [Limit](Limit.md) L at the point (a,b) is written as $$\lim_{ (x,y)\rightarrow (a,b) }f(x,y) = L$$ and represents the value a function *approaches* and the input values (x,y) *approach* (a,b)

## Chapter 13
### 13.1 Displacement Vectors
A **displacement vector** is a [Vector](../MAT223%20Notes/Vector.md) from one point to another, with an arrow with the tail at the first point and the tip at the second.

**Notation**
[Vectors](../MAT223%20Notes/Vector.md) can be notated as:
$\vec v = (v_{1},v_{2},v_{3})$, or $\vec v = v_{1}\vec{i}+v_{2}\vec{j}+v_{3}\vec{k}$
	In this course, the second notation is used

**Vector Math**
- You can add two displacement vectors by adding them tip to tail
- or subtract them by adding them tip to tip
- Vectors can be **Scaled**, with by being multiplied with [Scalars](../MAT223%20Notes/Scalar.md)
	Two vectors are [Parallel](Parallel) if one is a *scalar multiple* of the other

A [Unit Vector](Unit%20Vector.md) is a vector whose magnitude is 1. 
	A unit vector in the direction of any nonzero vector $\vec v$ is:
	$\vec u = (\frac{\vec{v}}{||\vec{v}||})$

[Vector](../MAT223%20Notes/Vector.md)s can be resolved to [Components](../MAT223%20Notes/Components.md), and these **components** can be used for computations


> Much has been omitted, because I understand most of vector math already, and I don't really want to write it all down again


### 13.2 Vectors in General
Many quantities have both magnitude and direction, and are added and multiplied by scalars the same way as displacements. Any of these quantities is called a [Vector](../MAT223%20Notes/Vector.md), and is represented by an arrow the same way as displacements

Such quantities are 
- Velocity
	- Speed vs Velocity
		Velocity is a vector that tells us how fast the body is moving and direction of motion,
		while speed is a scalar that tells us how fast the body is moving
- Acceleration
- Force

See [Vector](../MAT223%20Notes/Vector.md) for properties of addition and scalar multiplication

**Vectors in *n* Dimensions**
We can define a vector in *n* dimensions as a string of *n* numbers. A vector in *n* dimensions can be written as
$$\vec{c} = (c_{1},c_{2},...,c_{n})$$ Addition and scalar multiplication can be defined as $$\vec{v}+\vec{w} = (v_{1},v_{2},...,v_{n})+(w_{1},w_{2},...,w_{n}) = (v_1+w_1,v_2+w_2,...v_n+w_n)$$ and $$a\vec{v}=a(v_{1},v_{2},...,v_{n}) = (av_{1},av_{2},...,av_{n})$$


### 13.3 The Dot Product
The [Dot Product](../MAT223%20Notes/Dot%20Product.md) helps us represent and compute the angle between two vectors 
The dot product has two definitions, both of which are equivalent:
Geometric
	$\vec{v}\cdot \vec{w} = || \vec{v}|| \ ||\vec{w}||cos\theta$
Algebraic
	$\vec{v}\cdot \vec{w}=v_{1}w_{1}+v_{2}w_{2}+v_{3}w_{3}$ 
You can prove these two definitions are equivalent using the [Law of Cosines](Law%20of%20Cosines.md)

A [Normal](Normal.md) of a vector is a vector perpendicular to it. You can find the equation of a plane, using its normal vector
	The *equation of the place* with the normal vector $\vec n =a\vec i + b\vec j + c\vec k$ containing the point $P_{0}$ is :
	$a(x-x_{0})+b(y-y_{0})+c(z-z_{0})=0$

The [Projection](Projection.md) of a vector $\vec{v}$ on a vector $\vec{u}$ measures (in some sense) how much the vector $\vec{v}$ is aligned with the vector $\vec{u}$.
	The projection of $\vec v$ onto a [Unit Vector](Unit%20Vector.md) $\vec u$ is:
		$\vec v_{\text{parallel}}=(\vec v\cdot \vec u)\vec u$
	And: 
		$\vec{v}_\text{perp}=\vec v - \vec{v}_\text{parallel}$
 
### 13.4 The Cross Product
The [Cross Product](Cross%20Product.md) combines two vectors and returns the vector perpendicular to both vectors.
Like the dot product, the cross product has two equivalent definitions
Geometric Definition
	If $\vec{v}$ and $\vec{w}$ are not parallel, then $$\vec{v}\times\vec{w}=(\text{Area of parallelogram})\vec{n}=(||\vec{v}|| \ ||\vec{w}|| \ sin \theta) \vec{n}$$where $0\leq\theta\leq\pi$ is the angle between $\vec{v}$ and $\vec{w}$ and $\vec{n}$ is the unit vector perpendicular to $\vec{v}$ and $\vec{w}$ pointing in the direction given by the right hand 
Algebraic Definition$$\vec{v}\times\vec{w}=(v_2w_3-v_3w_2)\vec{i}+(v_3w_1-v_1w_3)\vec{j}+(v_1w_2-v_2w_1)\vec{k}$$where $\vec{v}=\vec{v_1i}+\vec{v_2j}+\vec{v_3k}$ and $\vec{w}=\vec{w_1i}+\vec{w_2j}+\vec{w_3k}$

![Pasted image 20240412145112](attachments/Pasted%20image%2020240412145112.png)

## Chapter 14
### 14.1 The Partial Derivative

> The derivative of a one-variable function measures its rate of change
> Two variable functions have two rates of change: one as x changes(with y held constant) and one as y changes (with x held constant)


The [Partial Derivative](Partial%20Derivative.md) of a function of several variables is its **derivative** with respect to one of those variables, with the others held constant

The Partial Derivative of $f(a,b)$ $$\text{Partial Derivative with respect to x } = f_{X}(a,b)= \lim_{h\rightarrow0}\frac{f(a+h,b)-f(a,b)}{h} $$
Like a derivative of a one variable functions
- The **signs** of the *partial derivative* indicate if the original function is increasing or decreasing in x or y direction
- The **units** of a *partial derivative* are the units of the output divided by the units of the direction variable

### 14.2 Computing Partial Derivatives Algebraically
[](Partial%20Derivative.md#^1b9c97|Partial%20Derivative%20Computations)

To compute, treat the other variable in the partial derivative as a *constant*, and derive normally

### 14.3 Local Linearity and the Differential

> When "zooming in" to a 2D function, the function becomes a straight line.
> When "zooming in" to a 3D function, the function becomes a **flat plane**

The [Tangent](Tangent%20Plane.md) of a [](Function.md#^bd9cf4|Function%20of%20Two%20Variables) is a **plane**, a function is [Differentiable](Differentiable) if a plane approximation for the function is "sufficiently good/close to the actual function".

>Assuming $f$ is differentiable at $(a,b)$ the equation of the tangent plane is: $$z=f(a,b)+f_{x}(a,b)(x-a)+f_{y}(a,b)(y-b)$$
 
The [Local Linearization](Local%20Linearization.md) of $f(x,y)$ is when we approximate $f$ using its **tangent plane**, we can do this because by definition, the z-values on the tangent plane is close to the values of $f(x,y)$ for points near the tangent.
> Provided $f$ is differentiable at $(a,b)$, we can approximate $f(x,y)$ as:$$f(x,y) \approx f(a,b)+f_{x}(a,b)(x-a)+f_{y}(a,b)(y-b)$$

> Local Linearization of a function of two variables, is the exact same thing as the tangent plane

The [Differential](Differential.md) gives us information about the change in the value of a function
>The **Differential** $df$ at a point $(a,b)$ is the linear function of $dx$ and $dy$ such that: $$df=f_x(a,b)dx+f_{y}(a,b)dy$$
### 14.4 Gradients and Directional Derivatives in the Plane

The [Directional Derivative](Directional%20Derivative.md) of a function $f$ is a scalar which defines the rate of $f$ in a direction $\vec{u}$
If $\vec{u}=\vec{u_{1}i}+\vec{u_{2}j}$ is a unit vector, we define the **directional derivative $f_{\vec{u}}$** as:$$f_{\vec{u}}(a,b)=\text{Rate of Change in Direction of u at (a,b)} = \lim_{h\rightarrow 0}\frac{f(a+hu_{1},b+hu_{2})-f(a,b)}{h}$$ Or, $f_\vec{u}(a,b)=f_{x}(a,b)u_{1}+f_{y}(a,b)u_{2}$

>The [Gradient Vector](Gradient%20Vector.md) of a function $f$ is a vector which defines the direction at which $f$ has the largest rate of increase, and the maximum rate of chance of $f$ at that point
The gradient vector can be derived from the [Directional Derivative](Directional%20Derivative.md), and is similar to the [Differential](Differential.md)

The [Gradient Vector](Gradient%20Vector.md) of a differentiable function $f$ at the point $(a,b)$ is $$gradf(a,b)=f_{x}(a,b)\vec{i}+f_{y}(a,b)\vec{j}$$
	Where $\vec{i}$ and $\vec{j}$ are the x and y axis

> Separating the terms, and using the new definition of the [Gradient Vector](Gradient%20Vector.md), the **Directional Derivative** can be defined as: $$f_{\vec{u}}(a,b)=gradf(a,b)\cdot\vec{u}$$

[Gradient Descent](Gradient%20Descent.md) is a process used to find the max or min  (learned in tutorial)

> All these ideas mostly intuitively make sense, they are just different ways of expressing the same idea, that of the partial derivative of a function of two variables

### 14.5 Gradients and Directional Derivatives in Space
Gradient vectors also exist in 4-Space
	The properties of gradient vectors in 4-space are mostly the same, but extrapolated up to a [Function of Three Variables](Function%20of%20Three%20Variables)

Let $f$ be a [Function of Three Variables](Function%20of%20Three%20Variables) $f(x,y,z)$

The [Gradient Vector](Gradient%20Vector.md) for $f$ is
	$grad(f)=f_{x}\vec i + f_{y}\vec j + f_{z}\vec k$
**Properties**
-  $grad(f)(a,b,c)$ is  [Orthogonal](../MAT223%20Notes/Orthogonal.md) to the level surface of $f$ at $(a,b,c)$
-  $grad(f)(a,b,c)$ is in the direction of the greatest rate of increase if $f$
-  $||grad(f)(a,b,c)||$ is the maximum rate of change of $f$ at $(a,b,c)$


If $\vec u$ is a [Unit Vector](Unit%20Vector.md), the [Directional Derivative](Directional%20Derivative.md) of $f$ can be computed using
	$f_{\vec{u}}(a,b,c)=grad (f)(a,b,c)\cdot \vec u$ 

An equation for the [Tangent Plane](Tangent%20Plane.md) to the level surface of $f$ at the point $(a,b,c)$ is:
	$f_{x}(a,b,c)(x-a)+f_{y}(a,b,c)(y-b)+f_{z}(a,b,c)(z-c)=0$

### 14.6 The Chain Rule
A **Composition** of functions is a function which takes the value of another function

The [Chain Rule](Chain%20Rule.md) defines the derivative of a **composition of functions** 

### 14.7 Second-Order Partial Derivatives
**Second-Order Partial Derivatives** are the [Partial Derivatives](Partial%20Derivative.md) of a functions partial derivative.
	A function has **two** *first order partial derivatives*, and **four** *second order partial derivatives*

The **Second-Order Partial Derivatives** of a function $z=f(x,y)$ are: $$f_{xx}=(f_{x})_{x'} = \frac{\partial^{2}z}{\partial x^{2}} \ \text{ and } \ f_{xy}=(f_{x})_{y'} = \frac{\partial^2z}{\partial y\partial x} $$
and
$$f_{yy}=(f_{y})_{y'} = \frac{\partial^{2}z}{\partial y^{2}} \ \text{ and } \ f_{yx}=(f_{y})_{x'} = \frac{\partial^2z}{\partial x\partial y} $$


Some values for partial derivatives are often the same,
Equality of Mixed Partial Derivatives
if $f_{xy}$ and $f_{yx}$ are continuous at $(a,b)$, an interior point of their domain, then $$f_{xy}(a,b)=f_{yx}(a,b)$$

#### Taylor Approximations
**Second-Order Partial Derivatives** can be used to construct [Taylor Approximations](Taylor%20Approximations.md) for a function

> Recall earlier, we can approximate a function $f(x,y)$ with its [Local Linearization](Local%20Linearization.md)
> Or as:$$f(x,y) \approx f(a,b)+f_{x}(a,b)(x-a)+f_{y}(a,b)(y-b)$$
> This is in fact, the best linear approximation, this is also the *degree-1 Taylor Polynomial*

The *degree-2 Taylor Polynomial* for a function $f(x)$ is:$$f(x) \approx f(a)+f'(a)(x-a)+\frac{f''(a)}{2}(x-a)^{2} \ \text{ for x near a}$$
For a function $f(x,y)$, it is:$$f(x,y) \approx f(a,b)+f_{x}(a,b)(x-a)+f_{y}(a,b)(y-b)+ \frac{f_{xx}(a,b)}{2}(x-a)^{2} +f_{xy}(a,b)(x-a)(y-b) +\frac{f_{yy}(a,b)}{2}(y-b)^{2}\ \text{ for x,y near a,b}$$
### 14.8 Differentiablility  
Defining the formal definition if *differentiable at a point

Not on final exam, DGAF

## Chapter 15
### 15.1 Critical Points: Local Extrema And Saddle Points
Like [functions](Function.md) of one variable, functions of several variables can have *local* and *global* extrema

#### Detecting Local Max or Min
A point where the [Gradient Vector](Gradient%20Vector.md) is either $\vec{0}$ or *undefined* are [Critical Points](Critical%20Points.md) of the function.
>Given a position p, if: $$gradf(p)=\vec{0}$$Then $f(x,y)$ has either a global, or local maximum or minimum at that point.

#### Critical Points
- Local maximums or local minimums are critical points
- Points where the [Gradient Vector](Gradient%20Vector.md) is $\vec{0}$ or *undefined* are critical points
- A point does **not** need to be a local maximum or minimum to  be a critical point

#### Finding Critical Points
To find critical points of a function $f$ we set the [Gradient Vector](Gradient%20Vector.md) of $f$ to $\vec{0}$ or *undefined*, and solve for the points
> We are looking for $$grad f=f_{x}\vec{i}+f_{y}\vec{j}+f_{z}\vec{k}=\vec{0}$$Or, we are looking for points where 
> 	- All partial derivatives of $f$ are 0
> 	- One or more of the partial derivatives is *undefined* 

>Example of Solving for Critical Points
>![500](Pasted%20image%2020231122153821.png)

#### Classifying Critical Points
Critical points are **Local Max/Mins**, **Global Max/Mins**, or **Neither**
	A critical point is not a maximum or a minimum if near the point the [partial derivatives](Partial%20Derivative.md) take both positive and negative values
> A critical point that is neither a local max or min
>  ![450](attachments/Pasted%20image%2020240205135527.png)
				
After finding a critical point, you can classify it using the [Second Derivative Test](Second%20Derivative%20Test.md)

 **The Second Derivative Test**
Suppose $(x,y)$ is a point where $grad f(x,y) = \vec{0}$ 
The [Discriminant](Discriminant.md) $D=f_{xx}(x,y)f_{yy}(x,y)-(f_{xy}(x,y))^{2}$
  - $D > 0$ && $f_{xx}(x,y) > 0$  $\implies$ $f$ has a **local minimum** at $(x,y)$
  - $D > 0$ && $f_{xx}(x,y) < 0$  $\implies$ $f$ has a **local maximum** at $(x,y)$
  - $D < 0$  $\implies$ $f$  has a **local minimum** at $(x,y)$
  - $D = 0$  $\implies$ inconclusive, $f$ can have local max, min, saddle point, or none at $(x,y)$

>Using the second-derivative test
>	![Pasted image 20240205141058](attachments/Pasted%20image%2020240205141058.png)

### 15.2 Optimization
#### Global Max/Min
- $f$ has a **global max** on a region $R$ at the point $P_{0}$ if $f(P_{0}) \geq f(P)$ for all points $P$ in $R$
- $f$ has a **global min** on a region $R$ at the point $P_{0}$ if $f(P_{0}) \leq f(P)$ for all points $P$ in $R$

#### Finding Global Max and Min
How to locate global max and min for a function $f$ on a region $R$
- Find the [Critical Points](Critical%20Points.md) of $f$ in the region $R$
- Investigate whether there are critical points or global max or min
- If the region $R$ has a boundary, see if there is a global max or min on the boundary of $R$

#### Extreme Value Theorem
The [Extreme Value Theorem](Extreme%20Value%20Theorem) states that a function is guaranteed to have a global max and global min over a [Closed Domain](Closed%20Domain), and [Bounded Domain](Bounded%20Domain)
- A [Closed Domain](Closed%20Domain) is one which contains its boundary
- A [Bounded Domain](Bounded%20Domain) is one that does not stretch to infinity in any direction

#### Solving Problems
Maximizing Profit/Minimizing Cost
**Profit** is a function of **Revenue** and **Cost**
	Revenue and Cost tend to be the product of the **Price** $p$ of a good, and its **Quantity** $q$
	To solve for maximum **Profit**, construct the profit formula with revenue and cost
	Then maximize for profit with the variables $p$ and $q$
	Follow steps for finding global max or min

A [Regression Line](Regression%20Line) is the best fit line for a set of data/points
	A linear regression line would have the formula $y=mx+b$, where we are looking for $m$ and $b$

 **How to find a regression line**
A set of lines, and a theoretical best fit line $y=mx+b$
![359](attachments/Pasted%20image%2020240321213239.png)
The least square method, is done by:
1. Creating a new function of $m$ and $b$, $f(b,m)$ 
2. $f(b,m)$ will be the square of the difference between each point and the equivalent point of the line
	Essentially this is the function of the *error* of the regression line squared. For the example , this formula would be:
		$f(b,m)=(1-(b+m))^{2}+(1-(b+2m))^{2}+(3-(b+3m))^{2}$
3. Solve $f(b,m)$, and find its critical points, we want to minimize $f(b,m)$
	 The correct answer for this question is $y=\frac{x-1}{3}$

### 15.3 Constrained Optimization: Lagrange
The [Lagrangian Method](../../Econ/ECO200%20Notes/Lagrangian%20Method.md) is one which is used solve *constrained optimization* questions  

> What is *constrained optimization*
> 	Say we are trying to optimize a function $f(x,y)$ on a region $\mathbb{R}$
> 	If the region $\mathbb{R}$ is the entire xy-plane, we have *unconstrained optimization*
> 	If the region $\mathbb{R}$ is not the entire xy-plane, and x or y is restricted in some way, then we have *constrained optimization*

To use the **Lagrangian Method**:
1. Find the function you want to maximize $f(x,y)$, and the constraint, $g(x,y)$
2. Find the [Gradient Vectors](Gradient%20Vector.md) $grad(f)$ and $grad()$
3. Solve for $grad(f)=\lambda grad(g)$
	$\lambda$ is called the **Lagrange Multiplier**

The **Lagrange Multiplier** $\lambda$ represents the rate of change of the optimum value of $f$ as the constraint increases

The **Lagrangian Function** is another way of using the [Lagrangian Method](../../Econ/ECO200%20Notes/Lagrangian%20Method.md).
	To optimize $f(x,y)$ with the constraint $g(x,y)=c$, we can use the **Lagrangian Function**: $$L(x,y,\lambda)=f(x,y)-\lambda(g(x,y)-c)$$
	To solve the equations, we can compute the [Partial Derivatives](Partial%20Derivative.md) of $L$: $$\begin{aligned}\frac{\partial L}{\partial x}&=\frac{\partial f}{\partial x}-\lambda\frac{\partial g}{\partial x} \\\frac{\partial L}{\partial y}&=\frac{\partial f}{\partial y}-\lambda\frac{\partial g}{\partial y} \\ \frac{\partial L}{\partial \lambda}&=-(g(x,y)-c)\end{aligned}$$
	 



## Chapter 16
> Notes for this section are going to be a little bad, mostly because I don't want to have takes notes on everything that an integral is
### 16.1 The Definite Integral of a Function of Two Variables
The **Definite [Integral](Integral.md)** for a function is the form of the integral when first learning the definition of the integral
For a one-variable function $f$, it is: $$\int_{a}^{b}f(x)dx=\lim_{\Delta x\rightarrow0}\Sigma_{i}f(x_{i})\Delta x$$
Or, the limit of the Riemann sums of $f$ as the $\Delta x \rightarrow 0$ (the size of the sections approaches 0)

For a two-variable function, the definite integral of $f$ on a region $R$ is: $$\int_{R}fdA=\lim_{\Delta x, \Delta y \rightarrow 0} \sum\limits_{ij}f(u_{ij}, v_{ij})\Delta x \Delta y$$This is called a [Double Integral](Double%20Integral)

> The Double Integral can be interpreted as the **Volume** of an area

### 16.2 Iterated Integrals

An **Iterated Integral** is an [Integral](Integral.md) in the typical form. 
For a one-variable function $f$, $\int_{a}^{b}f(x)dx$
If $R$ is the rectangle $a \leq x \leq b, c \leq y \leq d$ , and $f$ is a continuous function on $R$, then the integral of $f$ over $R$ exists and is equal to the **iterated integral** $$\int_{R}fdA=\int_{y=c}^{y=d}(\int_{x=a}^{x=b}f(x,y)dx)dy$$In this example, x is integrated first before y (x is the inside integral)
This does not have to always be the case, and the y integral can be inside of x instead
#### Calculations

When calculating the iterated integral, calculate the inside integral with respect to x (holding y constant), then integrate the result with respect to y
> Example of Calculating the iterated integral
> ![500](attachments/Pasted%20image%2020240205163859.png)

#### Iterated Integrals Over Non-Rectangular Regions

So far, the integrals are over a rectangular area, for non-rectangular area, we can set the inside to a variable of the outer integral to define shapes
**Properties**
- The limits on the outer integral must be constants
- The limits on the inner integral can involve only the variable in the outer integral
	For example, if the outer integral is with respect to $x$, the inner integral can be functions of $x$ 


> Example of a Iterated Integral over a non-rectangular area
> ![450](attachments/Pasted%20image%2020240205164354.png)![475](attachments/Pasted%20image%2020240205164407.png)
> Note: This example bounds only the top limit

>  Example of an Iterated Integral Bounding the Top and Bottom
> ![375](attachments/Pasted%20image%2020240205164614.png)

Sometimes you may want to reverse the order of the integral, the following is an example how

> Example
> ![Pasted image 20240412172924](attachments/Pasted%20image%2020240412172924.png)
### 16.3 Triple Integrals

Functions of three variables can be integrated the same as functions of two variables
For a box $W$ with the shape: 
![Pasted image 20240205175730](attachments/Pasted%20image%2020240205175730.png)
A triple integral as an iterated [Integral](Integral.md) would be: $$\int_{W}f dV = \int_{p}^{q}(\int_{c}^{d}(\int_{a}^{b}f(x,y,z)dx)dy)dz$$ Where $y$ and $z$ are constants in the center integral, and z is a constant in the middle integral

### 16.4 Double Integrals in polar Coordinates

[Polar Coordinates](Polar%20Coordinates.md) are a coordinate system based off of the radius and angles around a circle
A section divided into polar coordinates will look something like the example below
	![Pasted image 20240205180746](attachments/Pasted%20image%2020240205180746.png)

The coordinates in this case will be the *angle* ($\theta$) and the radius $r$

To convert from polar coordinates to typical Cartesian coordinates, use:
	$x=\cos \theta$
	$y=r\sin \theta$
	And $r=\sqrt{x^{2}+y^{2}}$

#### Calculating Area
You can calculate the area of a circle by integrating its angle and radius
This would look something like this: $$\int_{R}fdA=\int_{\alpha}^{\beta}\int_{a}^{b}f(r,\theta)r \ drd\theta$$
>  Calculating the area of shapes using polar coordinates
> 	![Pasted image 20240205181433](attachments/Pasted%20image%2020240205181433.png)

When computing $\int_{R}f(x,y)dA$ in polar coordinates:
- Convert the integrand to $r,\theta$ by using $x=r \cos \theta, y = r \sin \theta, x^{2}+y^{2}=r^{2}$
- put $dA=r \ dr \ d \theta$ or $dA = r \ d \theta \ dr$

### 16.5 Integrals in Cylindrical and Spherical Coordinates

You can the cylindrical coordinates of a point in $(x,y,z)$ in 3-space are obtained by representing the $x$ and $y$ coordinates in polar coordinates and letting the z-coordinate be the z-coordinate of the Cartesian coordinate system

In [Cylindrical Coordinates](Cylindrical%20Coordinates.md), points in 3-space are represented with $0 \leq r < \infty, 0 \leq \theta \leq 2\pi, -\infty < z < \infty$, where $$\begin{aligned} x &= r\cos \theta \\ y &= r \sin \theta \\ z &=z\end{aligned}$$
To calculate a volume in Cylindrical Coordinates, we can [Integrate](Integral.md) it similarly to [Polar Coordinates](Polar%20Coordinates.md)

> Calculating the area of a water tank with cylindrical coordinates
> 	![Pasted image 20240205182306](attachments/Pasted%20image%2020240205182306.png)


In [Spherical Coordinates](Spherical%20Coordinates.md), points in 3-space is represented using $\rho, \phi$ and $\theta$ $0\leq \rho \leq \infty, 0 \leq \phi \leq \pi$, and $0\leq \theta \leq 2\pi$
- $\rho$ represents the distance from the center
- $\phi$ represents the angle from the z-axis
- $\theta$ represents the angle from the x-axis

You can convert **Spherical Coordinates** to typical Cartesian coordinates with:
- $x=\rho\sin\phi\cos \theta$
- $y=\rho\sin \phi\sin \theta$
- $z=\rho\cos \phi$

> This system of coordinates is useful when there is spherical symmetry with respect to the origin, either in the region of integration or in the integrand. 
 >How Spherical Coordinates work
> 	Red = $\theta$, Green = $\rho$, Orange = $\phi$
> 	![Pasted image 20240205183752](attachments/Pasted%20image%2020240205183752.png)

## Chapter 17
### 17.1 Parameterized Curves

The [Parameterization](Parameterization.md) of a curve is taking an equation/graph, and describing it using one variable.

Our goal is to take a function, such as $y=x$, and rewrite it as $x=f(t)$, and $y=f(t)$

>Examples
>	1. The parametric equation for the curve $y=x^{2}$ could be $$x=t, y=t^{2}$$Changing $t$ changes $x$ and $y$, in a way which exactly describes the original equation
>	2. The parametric equation for a circle, centered at 0 with a radius of 4 could be: $$x=3\cos t, y = 3\sin t$$$t$ here is sort of like the angle of the circle, and it defines an $x$ and $y$ at that angle, as $t$ progresses, it traces out the entire circle

We can then take the **parametric equations**, and rewrite them into a single vector equation which describes the original graph. This is also called the [Vector form of Parameterized Curves](Parameterization.md) 

We can rewrite the parametric equations $x=f(t), y=g(t), z=h(t)$ as single vector equation $\vec r(t)$
We notate this vector as $\vec r = f(t)\vec{i} + g(t)\vec{j}$, or in 3-space as $\vec{r} = f(t)\vec{i} + g(t)\vec{j}+ h(t)\vec{k}$

> Example
> 	The circle of radius 1, with $x=\cos t, y=\sin t$, is **parameterized** by the vector-valued function as $\vec r_{1}(t)=cos \vec{ti} + sin \vec{tj}, 0 \leq t \leq 2\pi$


The **Parametric Equations of a Line** through the point $(x_{0},y_{0},z_{0})$ and parallel to the vector $\vec{ai} + \vec{bj} +\vec{ck}$ are: $$x=x_{0}+at, y=y_{0}+bt, z= z_{0}+ct$$
The **Parametric Equation of a Line in Vector Form** for a line through the point with position vector $\vec{r}_{0}=\vec{x_{0}i}+\vec{y_{0}j}+\vec{z_{0}k}$ in the direction of the vector $\vec{v}=\vec{ai}+\vec{bj}+\vec{ck}$ has the parametric equation $$\vec{r}(t)=\vec{r}_{0}+t\vec{v}$$
### 17.2 Motion, Velocity, and Acceleration

The **Velocity Vector** of a moving object is a vector $\vec v$ where 
- The magnitude of $\vec{v}$ is the speed of the object
- the direction of $\vec{V}$ is the direction of motion
The Speed of the object is $||\vec v||$ and the vector is tangent to the object's path

If we have a **Position Vector** $\vec r(t)$, giving the position of the object at time $t$,
The **Displacement Vector** between its positions at time $t$ and $\Delta t$ is $\Delta \vec r = \vec r(t+\Delta t)-\vec r(t)$

The **Velocity Vector** would then be $\vec v(t)=\lim_{\Delta t\rightarrow 0}\frac{\Delta \vec r}{\Delta t}=\lim_{\Delta t \rightarrow 0 }\frac{\vec r (t+ \Delta t)-\vec r(t)}{\Delta t}$  
	The **Velocity Vector** can be used to find parametric equations of the [Tangent Line](Tangent%20Line)
	The **components of the velocity vector** of an object with position vector $\vec r (t)=f(t) \vec i + g(t) \vec j + h(t) \vec k$ where $x = f(t), y = g(t), z = h(t)$ at time t is: 
	 $\vec v (t)=f(t)\vec i + g'(t)\vec j + h'(t)\vec k = \vec a (t)=\frac{dx}{dt}\vec i + \frac{dy}{dt}\vec j + \frac{dz}{dt}\vec k$

The **Acceleration Vector** is the rate of change of the **Velocity Vector**
	Or, $\vec a(t)=lim_{\Delta t \rightarrow 0  }(\Delta \vec v)/ (\Delta t)$
	The **components of the acceleration vector** with position vector $\vec r(t)=f(t)\vec i + g(t) \vec j + h(t) \vec k$ at time t is: $\vec a (t)=f''(t)\vec i + g''(t)\vec j + h''(t)\vec k = \vec a (t)=\frac{d^{2}x}{dt^{2}}\vec i + \frac{d^{2}y}{dt^{2}}\vec j + \frac{d^{2}z}{dt^{2}}\vec k$

The **Length of a Curve** given its **Velocity Vector** is:
	$\text{Length of C } = \int_{a}^{b}||\vec v || dt$

> Most important parts are, you can get the derivative of a vector, by getting the derivative of all its components
> And the equations right above of the length of a curve given its velocity vector

### 17.3 Vector Fields

A [Vector Field](Vector%20Field)  is a function that assigns a vector to each point in the plane or in 3-space.
A **Vector field** in 2-space is a function $\vec F(x,y)$ whose value at a point $(x,y)$ is a 2-dimensional vector
A **Vector field** in 3-space is a function $\vec F(x,y,z)$ whose value at a point $(x,y,z)$ is a 3-dimensional vector

The [Gradient Vector](Gradient%20Vector.md) of a scalar function $f$ is a function that assigns a vector to each point, and so is also   [Vector Field](Vector%20Field)

> A velocity vector field
> ![359](attachments/Pasted%20image%2020240304164440.png)


## Chapter 18
### 18.1 The Idea of a Line Integral

The [Line Integral](Line%20Integral.md), measures the extent to which a curve in a [Vector Field](Vector%20Field) is, overall, going with the vector field or against it. 
	**Formal Definition**
	The **line integral** of a vector field $\vec F$ along an oriented curve $C$ is  $$\int_{C}\vec{F}\cdot d\vec{R}=\lim_{||\Delta \vec{r_{i}}||\rightarrow 0}\sum\limits_{i=0}^{n-1}\vec F(\vec{r_{i}})\cdot\Delta \vec{r}_{i}$$
**Properties**
	Same as properties of [Integrals](Integral.md)
- $\int_{C}\lambda\vec F\cdot \vec{dr}=\lambda\int_{C}\vec F\cdot\vec{dr}$
- $\int_{C}(\vec F+\vec G)\cdot\vec{dr}= \int_{C}\vec F\cdot\vec{dr}+\int_{C}\vec G\cdot\vec{dr}$
- $\int_{-C}\vec F\cdot\vec{dr}=-\int_{C}\vec F\cdot\vec{dr}$
- $\int_{C_{1}+C_{2}}\vec F\cdot\vec{dr}=\int_{C_{1}}\vec F\cdot\vec{dr}+\int_{C_{2}}\vec F\cdot\vec{dr}$

 > The sum of the result of a vector field $\vec F$, on a parameterized Curve $\vec r$

>**Conceptual Idea**
The Line Integral is a measure of the [Vector Field](Vector%20Field) flows for every point along a [Parametric](Parameterization.md) curve. 
So, it is the [Sum](../MAT224%20Notes/Sum.md) of the **Vector Field*** times the amount we move along the curve, at each point. The [Integral](Integral.md) part of it works the same way as a regular integral
The line integral is
	Positive if $\vec F$ is mostly pointing in the same direction as $C$
	Negative if $\vec F$ is mostly pointing in the opposite direction to $C$
	Zero if $\vec F$ is perpendicular to $C$at all points or the positive and negative contributions cancel out
For physics questions, the line integral could represent the the amount of **Work**, done on an object while moving along a curve $C$
	Take someone trying to move through a river, the line integral could represent the total force of the river pushing on them

> Textbook Definition of the [Line Integral](Line%20Integral.md)
> ![650](attachments/Pasted%20image%2020240307185506.png)

### 18.2 Computing Line Integrals over Parameterized Curves

> This section covers how to compute line integrals, will be covered in **Chapter 18 Computations** notes section

Alternative Notation for Line Integrals
	If you define a vector field as:
		$\vec{F}=P(x,y,z)\vec{i}+Q(x,y,z)\vec{j} R(x,y,z)\vec{k}$
	And a curve $C$ as:
		$d\vec{r}=dx\vec{i}+dy\vec{j}+dz\vec{k}$
	Then:
		$\int_{C}\vec{F}\cdot d\vec{r}=\int_{C}P(x,y,z)dx+Q(x,y,z)dy +R(x,y,z)dz$

No matter how you **Parameterize** a curve, the value of a **Line Integral** will remain the same 

### 18.3 Gradient Fields and Path-Independent Fields

If $f$ is a function whose gradient is continuous, or a **Continuous Gradient Field** on the path $C$, 
	then:  $$\int_{C}grad f\cdot d\vec{r}=f(Q)-f(P)$$

>This makes sense because the gradient is the derivative of the function, and the integral of the derivative between two points, would give you the distance between two points
So, this tells us that the [Line Integral](Line%20Integral.md) of the [Gradient Vector](Gradient%20Vector.md) from one point to another, gives us the change from one point to another
There are many paths from $Q$ to $P$, but no matter what path $C$ you take, the value of the formula above will remain the same
	This is only true for **Continuous Gradient Vector Fields**
	This property is called being **Path-Independent**

A [Vector Field](Vector%20Field) $\vec{F}$ is [Path-Independent](Path-Independent) or **Conservative**, if for any two points $P$ and $Q$, the line integral $\int_{C}\vec{F}\cdot d\vec{r}$ has the same value along any piecewise smooth path $C$ from $P$ to $Q$ in the domain of $\vec{F}$
	Otherwise, if the value of the line integral $\int_{C}\vec{F}\cdot d\vec{r}$ depends on the path $C$ joining any two points $P$ and $Q$, then $\vec{F}$ is a [Path-Dependent](Path-Dependent) vector field
	A vector field is **Path-Independent** if it is a **Continuous Gradient Vector Field**
**Properties**
 - A continuous vector field $\vec F$ defined on an open region is **Path Independent** if and only if $\vec F$ is a [Gradient Vector Field](Gradient%20Vector.md)

Let $\vec{F}$ be a **Gradient Vector Field**, then a scalar function $f$ is called a **Potential Function** of $\vec{F}$ if $\vec{F}=grad(f)$

>Physics Applications
	Most vectors fields in nature are path-independent, like the gravitational field.
	Since the gravitational field is path-independent, that means the work done by gravity when an object moves depends only on the starting and ending points, and not on the path taken.
		If you lift an object directly up, vs lift it horizontally on a diagonal path, the work done by gravity is identical
	When a vector field is path-independent, we can define the **potential energy** of a body
		When the body moves to another position, the potential energy changes by an amount equal to the work done by the vector field

### 18.4
Lets say we have the [Vector Field](Vector%20Field) $\vec{F}$. We want to check if it is [Path-Independent](Path-Independent) or if it has a [Potential Function](Potential%20Function) (That it is the gradient function/field of another function)
	We can say that $\vec F= F_{1}\vec i + F_{2}\vec j$
		Separating $\vec F$ into its $x$ and $y$ component
	That means that the **Potential Function $f$** would have:
		$f_{x}=F_{1}$, and $f_{y}=F_{2}$
			The partial derivatives would be $F_{1}$ and $F_{2}$

We know from before, that for a function, the second derivatives $f_{xy}=f_{yx}$
The [Curl Test](Curl%20Test) says that if $\vec F$ is a gradient field, then $F_{1y}-F_{2x}=0$
	Or better notation: $$\frac{\partial F_{1}}{y}-\frac{\partial F_{2}}{x}=0$$
	In 3-Space, we want to check if$$\frac{\partial F_{3}}{\partial y}-\frac{\partial F_{2}}{\partial z}=0, \frac{\partial F_{1}}{\partial z}-\frac{\partial F_{2}}{\partial x}=0 , \frac{\partial F_{2}}{\partial x}-\frac{\partial F_{1}}{\partial y}=0$$
	The **Curl Test** only holds if the [Domain](Domain) of $\vec F$ has no holes

[Green's Theorem](Green's%20Theorem) is a way of calculating the [Potential Function](Potential%20Function) of a gradient field: 
	For a [Vector Field](Vector%20Field) $\vec F$ along the curve $C$, bounded by $a<x<b, c<y<d$ (The region $R$), $$\int_{C}\vec F \cdot d\vec r=\int_{R}^{}(\frac{\partial F_{2}}{x} - \frac{\partial F_{1}}{y})dxdy$$ OR:$$\int_{C}\vec F \cdot d\vec r=\int_{c}^{d}\int_{a}^{b}(\frac{\partial F_{2}}{x} - \frac{\partial F_{1}}{y})dxdy$$
	**Green's Theorem** only applies on a smooth vector field containing $R$ and $C$
		No holes

### Computations

**How to Compute Line Integrals**
Given a [Parametric](Parameterization.md) equation $\vec r$ and a [Vector Field](Vector%20Field) $\vec F$, we want to find the line integral $\int_{C}\vec F\cdot d\vec{r}$
	We need the limits of the parametric equation, where $\vec{r}=f(t), a<t<b$
	We want to solve $\int_{a}^{b}\vec{F}(\vec{r}(t))\cdot\vec{r'}(t)dt$
		

> Example Question from Textbook
> ![650](attachments/Pasted%20image%2020240307193724.png)
> 	Here, the values are:
> 		$\vec{F}=(x+y)\vec{i}+y\vec{j}$
> 		$\vec{r}(t)=x(t)\vec{i}+y(t)\vec{j}=cos(t)\vec{i}+sin(t)\vec{j}$
> 			where $0\leq t\leq \frac{\pi}{2}$
> 	We sub the values into the equation to get
> 		$\int_{c}\vec{F}\cdot d\vec{r}=\int_{0}^{\frac{\pi}{2}}((cos(t)+sin(t))\vec{i}+sin(t)\vec{j})\cdot(-sin(t)\vec{i}+cos(t)\vec{j})dt$ 
> 	Then we solve the equation, and get the answer

> Example of computing line integral with alternative notation
> ![Pasted image 20240307194819](attachments/Pasted%20image%2020240307194819.png)

How to check if [Vector Field](Vector%20Field) has a potential function/is [Path-Independent](Path-Independent)

## Chapter 19
### 19.1 The Idea of a Flux Integral

> We start with an example of the idea of **Flux Integrals**
> 	![375](attachments/Pasted%20image%2020240415154950.png)
> 	The general premise we are looking for, is the idea of how much a function "flows" through an area.

[Flux](Flux) describes the "flow rate" of a vector field $\vec v$ through an area (defined by an [Area Vector](Area%20Vector))
**Properties**
- If the vector field is constant and perpendicular to the surface, and if the surface is flat, the flux is obtained by multiplying the speed by the area

> Flux can be computed for vector fields, such as electric and magnetic fields, where no flow is actually taking place.

Surfaces have an orientation, one which is is positive and one which is negative.
We say the flux through a piece of surface is positive if the flow is in the direction of the orientation and negative if it is in the opposite direction

> Surface Orientation 
> 	![Pasted image 20240415154840](attachments/Pasted%20image%2020240415154840.png)

The [Area Vector](Area%20Vector) of a flat, oriented surface is a vector $\vec A$ such that 
- The magnitude of $\vec A$ is the area of the surface
- The direction of $\vec A$ is the direction of the orientation vector $\vec n$

The area vector represents the entire area of a surface, and the general direction it points in. $\Delta \vec A$ represents a subsection of the surface, and the direction that it faces in

> The area vector just generally refers to the area that we are looking for, being a flat plane, a graph, or 3D construction
> $\Delta \vec A$ represents a section of that area with its magnitude and direction, or $d\vec A$ represents a infinitely minute section of that area, with its direction
> You can also pull out the direction of the area vector, such that $\vec A=\vec n A$, or $\Delta \vec A=\vec n \Delta A$, this can be helpful for calculations

> If the vector field $\vec F$ is constant, and $\vec A$ is the area vector of a flat surface, then the flux through the surface = $\vec F \cdot \vec A$
> Example of calculating a simple flux integral
> 	![Pasted image 20240415201233](attachments/Pasted%20image%2020240415201233.png)
> Conceptually this makes sense, if the flow rate is constant and $A$ is flat, the [Dot Product](../MAT223%20Notes/Dot%20Product.md) already gives us information about how "aligned" two vectors are, so the flux of the surface would be as given above

If the vector field $\vec F$ is not constant, or the surface $S$ is not flat, then we use the **Flux Integral**

The [Flux Integral](Flux%20Integral) of the vector field $\vec F$ through the oriented surface $S$ is
	$\int_{S}\vec F \cdot d\vec A = \lim_{||\Delta \vec A || \rightarrow 0}\sum\limits\vec F\cdot \Delta \vec A$ 
If $S$ is a closed surface oriented outward, we describe the flux through $S$ as the flux out of $S$

> **Setting up the Flux Integral**
> We're looking for the amount that a vector field $\vec F$ is flowing through an area $A$
> To calculate the flux through a small patch of $A$, $\Delta A$, we can use $\text{Flux through patch} \approx \vec F\cdot \Delta \vec A$
> 	Or, the flux on a region, multiplied by the size of the area of that region
> We want to add up all the fluxes of all the small pieces with $\text{Flux through whole surface}\approx \sum\limits \vec F \cdot \Delta \vec A$
> And as each patch becomes smaller and $||\Delta \vec A || \rightarrow 0$, the approximation gets better and we get $\text{Flux through S}= \lim_{||\Delta \vec A || \rightarrow 0}\sum\limits\vec F\cdot \Delta \vec A =\int_{S}\vec F \cdot d\vec A$

> Remember, that when calculating flux integrals, the functions involved are [Vector Fields](Vector%20Field), and return **Vectors**, not **Scalars** 
> Also remember to include $dA$ in the equation when calculating
### 19.2 Flux Integrals for Graphs, Cylinders, and Spheres

#### Graphs
For $\Delta \vec A$, or a section of the [Area Vector](Area%20Vector) of a graph, we can't calculate it as easily as a simple flat plane. 
Instead, given a function $z=f(x,y)$, we can approximate $\Delta \vec A$ with $d\vec A=(-f_{x}\vec i-f_{y}\vec j+\vec k)$ 

> This is because something something cross product area something something
> 	Just know, that this means that the direction and size of a point of an area of the graph given by $z=f(x,y)$, can be given by the equation above
> 	It is the derivative of the area
> Since the magnitude of an area vector is area, we can find area of a surface by integrating the magnitude $||d\vec A||$. 

If a surface is the graph of a function $z=f(x,y)$, then the magnitude of the area will be:

$$||d\vec A||=||-f_{x}\vec i-f_{y}\vec j+\vec k||dxdy=\sqrt{(f_{x})^{2}+f_{y}^{2}+1}dxdy$$

And the area of the a region $S$, on the function $z=f(x,y)$ is:

$$\text{Area of S}=\int_{R}\sqrt{(f_{x})^{2}+f_{y}^{2}+1}dxdy$$
> Calculating the surface of a graph
> 	![Pasted image 20240415203933](attachments/Pasted%20image%2020240415203933.png)


The [Vector Field](Vector%20Field) $\vec F(x,y,z)$ of a graph given by $z=f(x,y)$ can also be found with $\vec F(x,y,f(x,y))$

With those two pieces, The [Flux](Flux) of $\vec F$ through a surface given by a graph of $z=f(x,y)$ can be given by:
$$\int_{S}\vec F\cdot d\vec A=\int_{R}\vec F(x,y,f(x,y))\cdot(-f_{x}\vec i-f_{y}\vec j+\vec k)dxdy$$

> **Calculating Flux Integral through a surface given by a graph**
> 	![Pasted image 20240415203016](attachments/Pasted%20image%2020240415203016.png)

#### Cylinders

>For a calculating flux integrals with cylinders, we return to [Cylindrical Coordinates](Cylindrical%20Coordinates.md)

A section of the [Area Vector](Area%20Vector), or $d\vec A$ here can be calculated as 
	$d\vec A = (\cos \theta\vec i + \sin \theta\vec j)Rdzd \theta$

The [Flux Integral](Flux%20Integral) through a cylindrical surface $S$, of radius $R$ and oriented away from the $z$-axis is given by
$$\int_{S}\vec F\cdot d\vec A=\int_{T}\vec F(R,\theta,z)\cdot(\cos \theta\vec i+\sin \theta\vec j)Rdzd \theta$$
Where $T$ is the $\theta z$-region corresponding to $S$
	Also remember to convert to Cartesian coordinates before passing values to the [Vector Field](Vector%20Field)

> Example of Calculating Flux through a Cylinder
> 	![Pasted image 20240415205025](attachments/Pasted%20image%2020240415205025.png)

#### Spheres

> As with calculating flux integrals with cylinders, calculating flux integrals with spheres requires [Spherical Coordinates](Spherical%20Coordinates.md)

A section of the [Area Vector](Area%20Vector), or $d\vec A$ here can be calculated as 
	$d\vec A = (\sin \phi\cos \theta\vec i+\sin \phi\sin \theta\vec j+\cos \phi\vec k)R^{2}\sin \phi d \phi d \theta$

The [Flux Integral](Flux%20Integral) through the spherical surface $S$, with radius $R$ and oriented away from the origin, is given by:
$$\int_{S}\vec F\cdot d\vec A=\int_{T}\vec F(R,\theta,\phi)\cdot((\sin \phi\cos \theta\vec i+\sin \phi\sin \theta\vec j+\cos \phi\vec k)R^{2}\sin \phi d \phi d \theta)$$
Where $T$ is the $\theta \phi$-region corresponding to $S$

> Example of Calculating Flux through a spherical region
> 	![Pasted image 20240415214304](attachments/Pasted%20image%2020240415214304.png)

> How to set up flux integrals (generally)
> 1. Set up $d\vec A$, for each type of flux integral is different, for ones defined by the graph of $z=f(x,y)$, $d\vec A=-f_{x}\vec i-f_{y}\vec j+\vec k$
> 2. Set up the integral $\int_{S}\vec F(x,y,z)\cdot dAdxdy$
> 	Make sure to set up the [Double Integral](Integral.md), with the correct shape for the area
> 	For graph ones, sub in $z$ after next step
> 3. Calculate the dot product in the middle, and simplify
> 4. Solve integral 

### 19.3 The Divergence of a Vector Field

> When calculating flux, our initial metaphor was that of a liquid flowing, and flux being the rate of flow through an area.
> Keeping with that idea, **Divergence** is the outflow from a single point
> 	![287](attachments/Pasted%20image%2020240415223117.png)
> 	The divergence for the first graph at $\vec 0$ would be negative, and the divergence for the second graph at the $\vec 0$ would be positive
> 	That's because the first one has overall negative inflow, the vector field is "flowing out" and the second one has overall positive outflow, the vector field is "flowing in"

The [Divergence](Divergence), or **Flux Density** of a smooth vector field $\vec F$, written $div\vec F$, is a scalar valued function defined by:
$$div\vec F(x,y,z)=\lim_{\text{Volume}\rightarrow 0}\frac{\int_{S}\vec F\cdot d\vec A}{\text{Volume of S}}
$$
	$S$ being a sphere centered at $(x,y,z)$, oriented outward, that contracts down to $(x,y,z)$ in the limit
In Cartesian coordinates, the divergence can also be calculated using:
If $\vec F=F_{1}\vec i+F_{2}\vec j+F_{3}\vec k$, then
$$div \vec F=\frac{\partial F_{1}}{\partial x}+\frac{\partial F_{2}}{\partial y}+\frac{\partial F_{3}}{\partial z}$$
**Properties**
- A vector field $\vec F$ is [Divergence Free](Divergence%20Free), or **Solenoidal** if $div \vec F=0$ everywhere that $\vec F$ is defined

> The divergence can be thought of the scalar [Derivative](Derivative.md) of a [Vector Field](Vector%20Field). This is directly seen in the Cartesian definition of Divergence
> 	The idea of being **Divergence Free** relates to the idea of inflow and outflow, and means that there is no inflow or outflow point anywhere in the vector field, there is constant flow everywhere such that the inflow and outflow at every point balances out
> 	This idea may also relate to how when a [Function of One Variable](Function%20of%20One%20Variable.md) has a derivative of 0, its a constant function? because being divergence free means that the derivative is 0?

>Magnetic fields are Divergence free? That's cool I guess?

### 19.4 The Divergence Theorem

> The Divergence Theorem is analogous to the [Fundamental Theorem of Calculus](Fundamental%20Theorem%20of%20Calculus)
> 	How the anti-derivative of a functions derivative, or adding up its derivative ends up being equal to the original function
> Instead it exists in a 3D Space, and says how the total divergence for the volume of an area, is the same as if you calculated the flux out of the same area
> 	So, calculating the inflow outflow of every point of a volume, is the same as calculating the total outflow out of its boundary

There are two ways to find the total flux of a vector field $\vec F$ out of a solid region $W$ in 3-Space, with the boundary $S$

Using the method devised earlier with calculating flux out of the boundaries, where:
$$\text{Flux out of W}=\int_{S}\vec F\cdot d\vec A$$
You can also calculate [Flux](Flux) with the volume of the [Divergence](Divergence)
$$\text{Flux out of W}=\text{Flux density}\cdot\text{Volume}=\int_{W}div\vec F dV$$

If $\vec F$ is a **divergence-free vector field**, and if $S$ is the boundary of a solid region $W$, then by the Divergence Theorem,
$\int_{S} \vec F\cdot d \vec A=\int_{W}div\vec F dV=0$


## Chapter 20
### 20.1 The Curl of a Vector Field

> The curl essentially measure the circulation of a vector field, in past chapters, the curl test was used for verifying if a vector field was path independent, now we are analyzing and graphing the curl.

The [Circulation Density](Circulation%20Density) is a measure of how "fast" or "strong" a vector field rotates. 
Provided the limit exists, the **Circulation Density** of a smooth vector field $\vec F$ at $(x,y,z)$ around the direction of the unit vector $\vec n$ is defined:
$$circ_{\vec n}\vec F(x,y,z)=\lim_{\text{Area}\rightarrow 0}\frac{\text{Circulation around C}}{\text{Area inside C}}=\lim_{\text{Area}\rightarrow 0}\frac{\int_{C}\vec F\cdot d\vec r}{\text{Area inside C}}$$
The circle $C$ is in the plane perpendicular to $\vec n$, and oriented by the right hand rule

> Other closed curves also work for $C$ here, such as rectangles that lie in a plane perpendicular to $\vec n$ and include the point $(x,y,z)$


The [Curl](Curl) of a smooth vector field $\vec F$ , written $curl\vec F$ is the vector field with the **Properties**
- The direction of $curl\vec F(x,y,z)$ is the direction $\vec n$ for which $circ_{\vec n}\vec F(x,y,z)$ is the greatest
- The magnitude of $curl\vec F(x,y,z)$ is the circulation density of $\vec F$ around that direction
If the circulation density is zero around every direction, then we define th curl to be $\vec 0$

The Cartesian Coordinate Definition of the **Curl** is:
If $\vec F=F_{1}\vec i + F_{2}\vec j+F_{3}\vec k$, then
$$curl\vec F=(\frac{\partial F_{3}}{\partial y}-\frac{\partial F_{2}}{\partial z})\vec i+(\frac{\partial F_{1}}{\partial z}-\frac{\partial F_{3}}{\partial x})\vec j+(\frac{\partial F_{2}}{\partial x}-\frac{\partial F_{1}}{\partial y})\vec k$$

> We can use the cross product to help us remember the Cartesian Coordinate Definition easier
> 	![Pasted image 20240415232638](attachments/Pasted%20image%2020240415232638.png)

**Properties of the Curl**
- Using [Green's Theorem](Green's%20Theorem) we can prove that: 
$$curl\vec F\cdot \vec n=circ_{\vec n}\vec F$$
- A vector field is *curl free* or *irrotational* if $\text{curl}\vec F=\vec 0$ everywhere that$\vec F$ is defined

### 20.2 Stokes' Theorem

If $S$ is a smooth oriented surface with boundary $C$, and if $\vec F$ is a smooth vector field on a solid region containing $S$ and $C$, then
$$\int_{C}\vec F\cdot d\vec r=\int_{S}\text{curl}\vec F\cdot d \vec A$$

A vector field $\vec F$ is a **Curl Vector Field** if $\vec F=\text{curl } \vec G$ for some vector field $\vec G$










