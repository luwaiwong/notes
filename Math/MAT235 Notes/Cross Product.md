#mathematics 
#uoft/mat235 
## Definition
The **Cross Product** combines two [Vector](../MAT223%20Notes/Vector.md)s and returns the vector perpendicular to both vectors.

The **cross product** has two equivalent definitions
Geometric
	If $\vec{v}$ and $\vec{w}$ are not parallel, then $$\vec{v}\times\vec{w}=(\text{Area of parallelogram})\vec{n}=(||\vec{v}|| \ ||\vec{w}|| \ sin \theta) \vec{n}$$where $0\leq\theta\leq\pi$ is the angle between $\vec{v}$ and $\vec{w}$ and $\vec{n}$ is the unit vector perpendicular to $\vec{v}$ and $\vec{w}$ pointing in the direction given by the right hand 
Algebraic $$\vec{v}\times\vec{w}=(v_2w_2-v_3w_3)\vec{i}+(v_3w_1-v_1w_3)\vec{j}+(v_1w_2-v_2w_1)\vec{k}$$where $\vec{v}=\vec{v_1i}+\vec{v_2j}+\vec{v_3k}$ and $\vec{w}=\vec{w_1i}+\vec{w_2j}+\vec{w_3k}$

The **cross product** can be used to calculate the area of a parallelogram with the sides of its inputs. We say that $\vec{v}\times\vec{w}$ is the *area vector* of the parallelogram, and $||\vec{v}\times\vec{w}||$ is the area of the parallelogram
The **volume** of a parallelepiped with edges $\vec{a}\vec{b},\vec{c}$ is given by $|(\vec{b}\times\vec{c}\cdot\vec{a})$

![Pasted image 20240412145112](attachments/Pasted%20image%2020240412145112.png)
## Properties
For vectors $\vec{u},\vec{v},\vec{w}$ and [Scalar](../MAT223%20Notes/Scalar.md) $\lambda$,
1. $\vec{w}\times\vec{v}=-(\vec{v}\times\vec{w})$
2. $(\lambda\vec{v})\times\vec{w}=\lambda(\vec{v}\times\vec{w})=\vec{v}\times(\lambda\vec{w})$
3. $\vec{u}\times(\vec{v}+\vec{w})=\vec{u}\times\vec{v}+\vec{u}\times\vec{w}$