mathematics/linear-algebra 
#uoft/mat223 #uoft/mat235 #uoft/mat224 

A **vector** is a value representing the relationship between two points.

---
# Definition
>There are many different interpretations of what a vector is, especially in different sub-fields of mathematics, vectors can be coordinates, arrows, here are some definitions

### Linear Algebra
A **Vector** is a directed line segment or "arrow", with one point distinguished  as the "head", and the other distinguished as the "tail"
	Vectors have two operations which can be done on them are **vector addition**, and **vector multiplication** (See [Vector Operations](#^1828f1))
	These operations give rise to various [](.md#^a7e263|properties) of vectors

> Vectors are a mathematical object, with the above operations, following a specific set of properties 
> Any object which satisfies those properties, can be considered a vector

### Displacement Vectors

A **displacement vector** from one point to another is an arrow with the tail at the first point and the tip at the second.

The **magnitude**(length) of the displacement vector is the distance between the points, represented by length of the arrow
The **direction** of the **vector** is the direction of the arrow

- Two vectors are **parallel** if one is a [scalar multiple](#^6a18a3) of the other. 
- A displacement vector whose **tail is at the origin** is called a *position vector*

## Calculations
To calculate the angle between two vectors $\vec{a}$ and $\vec{b}$, you can use the formula
$$cos(\theta)=\frac{\vec{a}\cdot\vec{b}}{||\vec{a}|| \ ||\vec{b}||}$$
To calculate the length of a vector $\vec v$:
$$||\vec{v}||=\sqrt{v_{1}^{2}+v_{2}^{2}+v_{3}^{2}}$$
## Notation
Vectors can be written with an arrow over them $\vec{v}$ to distinguish them from [Scalar](Scalar.md)s, or a bold **v** to denote a vector, or the notation $\vec{PQ}$ to denote the **displacement vector** from a point P to a point Q. (first and last most common) 

Vectors can also be written as $\vec{v} = (v_{1},v_{2},v_{3})$, or $\vec{v}=v_{1}\vec{i}+ v_{2}\vec{j} + v_{3}\vec{k}$ (components)

The **magnitude**/length of a vector $\vec{v}$ is written $||\vec{v}||$. This value is a [Scalar](Scalar.md)


## Components 
The **component vectors** $\vec{i}, \vec{j}, \vec{k}$ are unit vectors that point in the direction of the positive x,y, and z-axes, respectively

Vectors can be resolved to [Components](Components.md). Resolving vectors onto components parallel to the axes converts a vector from its **magnitude** and **direction** into a direction defined by points in a Cartesian Coordinates System.


---
# Vector Operations
^1828f1

### Addition
The **sum**, $\vec{v}+\vec{w}$ of two vectors $\vec{v}$ and $\vec{w}$ is the combined displacement from first applying $\vec{v}$ and then $\vec{w}$. This can be described as adding the vectors "tip to tip"

### Subtraction
The **difference**, $\vec{w}-\vec{v}$ is the displacement vector that, when added to $\vec{v}$, gives $\vec{w}$. Or, $\vec{w}=\vec{v}+(\vec{w}-\vec{v})$. This can be described as adding the vectors "tail to tail"

### Multiplication
The **scalar multiple** of $\vec{v}$ by $\lambda$, written $\lambda\vec{v}$ is the displacement vectors with the following properties ^6a18a3
- $\lambda\vec{v}$ is parallel to $\vec{v}$, and pointing in the same direction if $\lambda$ > 0  and pointing in the opposite direction if $\lambda$ < 0
- And the **magnitude** of $\lambda \vec{v}$ is $|\lambda|$ times the magnitude of $\vec{v}$
# Properties 
^a7e263
### Commutativity
- $\vec{v}+\vec{w}=\vec{w}+\vec{v}$
### Associativity
- $(\vec{u}+\vec{v})+\vec{w}=\vec{u}+(\vec{v}+\vec{w})$
- $\alpha(\beta\vec{v}=(\alpha\beta)\vec{v}$
### Distributivity
- $(\alpha+\beta)\vec{v}=\alpha\vec{v}+\beta\vec{v}$
- $\alpha(\vec{v}+\vec{w})=\alpha\vec{v}+\alpha\vec{w}$
### Identity
- $1\vec{v}=\vec{v}$
- $0\vec{v}=\vec{0}$
- $\vec{v}+0=\vec{v}$
- $\vec{w}+(-1)\vec{v}=\vec{w}-\vec{v}$

---
---
# Types of Vectors

The **zero vector**, written as $\vec{0}$, is the vector with no magnitude. The zero vector does not have a well defined direction, and either points in *no direction* or *every direction*

A **unit vector** is any vector with the **magnitude** or length 1. 
if $\vec{v}$ is nonzero, then $\frac{1}{||\vec{v}||}\vec{v}$ is a unit vector in the same direction as $\vec{v}$ 


