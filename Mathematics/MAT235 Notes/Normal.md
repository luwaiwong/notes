#mathematics #uoft/mat235 

The **Normal** of a [Vector](../MAT223%20Notes/Vector.md) or a **Plane** is a vector or a plane [perpendicular/orthogonal](../MAT223%20Notes/Orthogonal.md) to it.

The **normal** of a vector can be determined using the [Dot Product](../MAT223%20Notes/Dot%20Product.md). A vector $\vec{n}$ is **normal** to another vector $\vec{v}$ if and only if: $$\vec{v}\cdot\vec{n}=0$$

---
# Normal Vectors and Planes
A **normal vector to a plane** is a vector that is [perpendicular](../MAT223%20Notes/Orthogonal.md) to every displacement vector between any two points to a plane

Given two points on a plane $P=(x,y,z)$ and $P_{0}=(x_{0},y_{0},z_{0})$, $\vec{P_{0}P}=(x-x_{0})\vec{i}+(y-y_{0})\vec{j}+(z-z_{0})\vec{k}$  is a vector whose head and tail both lie in the plane.  
The normal vector $\vec{n}$ is by definition, [Orthogonal](../MAT223%20Notes/Orthogonal.md) to $\vec{P_{0}P}$, so $\vec{n}\cdot\vec{P_{0}P}=0$ 

The equation of the plane with normal vector $\vec{n}=\vec{ai}+\vec{bj}+\vec{ck}$ and containing the point $P_{0}={x_{0},y_{0},z_{0}}$ can be calculated as $$a(x-x_0)+b(y-y_0)+c(z-z_0)=0$$  
Rewriting $d=ax_0+by_0+cz_0$, we can write the equation of the plane in the form $$ax+by+cz=d$$