#uoft/mat334 

Notes for [[MAT334]]

---
# Table of Contents
[[#Week 1]]

---
# Notes
> REMEMBER: Computations are very important in this course, make sure to practice computations, don't just write notes
## Week 1
> Practice Questions
> 	Fisher: 1.1: 1-9, 11
> 	Ablowitz and Fokas: 1.1: 1-3

### Definition of Complex Numbers
A [[Complex Numbers|Complex Number]] is a "number" of the form $z=x+iy$, where $i$ is the square root of $-1$
- $x$ is the *real part*, denoted $Re(z)$
- $y$ is the *imaginary part*, denoted $Im(z)$
- Complex numbers have the operations
	-  Addition/Subtraction
		- $z_{1}\pm z_{2}=(x_{1}+iy_{1})+\pm (x_{2}+iy_{2})=(x_{1}\pm x_{2})+i(y_{1}\pm y_{2})$
	- Multiplication by scalar
	- Multiplication
		- $z_{1}z_{2}=x_{1}x_{2}+ix_{1}y_{2}+iy_{1}x_{2}+i^{2}y_{1}y_{2}= x_{1}x_{2}-y_{1}y_{2}+i(x_{1}y_{2}+y_{1}x_{2})$ 
		- Note that multiplication of two complex numbers results in another complex number, while you cannot typically multiply two vectors, and get another vector
	- [[Norm]]/Absolute value 
		- The *norm* of $z$ is $|z| =\sqrt{ x^{2}+y^{2} }$
		- Norm of complex numbers is *multiplicative*
			- $|z_{1}z_{2}|=|z_{1}||z_{2}|$
	- Conjugation
		- The *conjugate* $z=x+iy$ is $\overline z=x-iy$
		- $z\overline z=|z|^{2}$
		- We can find the multiplicative inverse of $z$, as $\frac{\overline z}{|z|^{2}}$, where $z \frac{\overline z}{|z|^{2}}=1$ 
		- $x= \frac{z+\overline z}{2}$
		- $y=\frac{z-\overline z}{2i}$ 

### Complex Numbers Geometrically
We can visualize complex numbers as a point in $\mathbb{R}^{2}$, where $z=x+iy$ is represented by the coordinates $(x,y)$

> Notes:
> 	 In our geometrical representation, the $x$ axis is the *real axis*, and the $y$ axis is the *imaginary axis*
> 	 For the below, let $z=x+iy$

We can interpret different complex operations *geometrically*
- Multiplication by $i$ 
	- Can be Interpreted as a 90 degree rotation counterclockwise
	- $\begin{aligned} iz&=i(x+iy) \\ &=ix-y \end{aligned}$
	- You can represent this *transformation* with the matrix $\begin{bmatrix} 0 & 1 \\ -1 & 0\end{bmatrix}$
- Multiplication by $-1$
	- Interpreted as a 180 degree rotation
	- Since $iz$ is a 90 degree rotation, $i^2z=-z$ is a 180 degree rotation
- Multiplication by $\cos \theta+i\sin\theta$ 
	- A rotation by $\theta$
	- Write more
- Multiplication by $1+i$
	- Rotates by 45 degrees, stretches by 2
	- $(1+i)(x+iy)=x-y+i(x+y)$
	- Thus we are applying the transformation $\begin{pmatrix} 1 & -1 \\ 1 & 1\end{pmatrix}\begin{pmatrix}x \\ y\end{pmatrix}$
- Conjugation is a *reflection* on the y/imaginary axis

From our above examples, 

Other geometric interpretations
- $|z|=1$ is a unit circle
- Any circle can be represented in *complex notation* with $|z-a|=r$, where:
	- $a$ is the center
	- $r$ is the radius
- A line can be represented as  $z(a-bi)+$
	- Derived from $a\left( \frac{z+\overline z}{2} \right)+b(\frac{z-\overline z}{2})=c$
	- Also remember that $x= \frac{z+\overline z}{2}$ and $y=\frac{z-\overline z}{2i}$

> Explanation
> 	Since $x^{2}+y^{2}=1$ is a unit circle, then $|z|=\sqrt{ x^{2}+y^{2} }=1$ describes all the values in a unit circle
> 	We can also describe any circle, with complex notation
> 	For example:
> 		"Describe a circle of radius 4 centered at $(1,2)$ in *complex notation*"
> 		 Answer:$|z-(1+2i)|=4$ 

If you want to find the "orthogonal" complex numbers to the number $z$, we can use $\mathrm{Re}(\overline w z)=0$, where $w$ is the complex number perpendicular to $z$ which intersects $z$


> Rough Notes
> 	When representing complex numbers geometrically, the [[Eigenvalue]] of the transformation matrix from multiplying $z$ by a complex number, is that complex number. 
> 	For multiplication by $1+i$, matrix created is $\begin{pmatrix}1 & -1 \\ 1 & 1\end{pmatrix}$, eigenvalue of that matrix is $1\pm i$
> 	line represented as $z(a-bi)+\overline z(a+bi)=2c$, $w=(a-bi), \overline w=(a+bi)$, 
> 	equation of a line is $\mathrm{Re}(wz)=C$
> 	A lines between points $p$ and $q$ can be *parameterized* with equation $\alpha(t)=(1-t)p+qt$ 
