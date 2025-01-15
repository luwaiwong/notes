#mathematics #uoft/mat235 

The [[Projection]] of a [[Vector]] $\vec{v}$ on a vector $\vec{u}$ measures (in some sense) how much the vector $\vec{v}$ is aligned with the vector $\vec{u}$.

The **projection** of a vector is similar to its [[Components]], but projected along another vector, instead of its axes


---
# Definition
The [[Projection]] $P_{w}(v)=w$ of a vector $v$ on a line $W$ is point where, if you create a [[Perpendicular]] line from the head of $v$, to $W$, $w$ is the point on $W$ where the line intersects 
## Properties
If $\vec u$ is already a unit vector
	$\vec v_{\text{parallel}}=(\vec v\cdot \vec u)\vec u$
	And: 
	$\vec{v}_\text{perp}=\vec v - \vec{v}_\text{parallel}$

# Calculation
>When **projecting** a vector $\vec{v}$ onto a vector $\vec{u}$, we resolve $\vec{v}$ into [[Components]], called $\vec{v}_{\text{parallel}}$  and $\vec{v}_{\text{perp}}$ , which are parallel and [[Orthogonal|perpendicular/orthogonal]] respectively, to a given nonzero vector, $\vec{u}$

>The projection of $\vec{v}$ on $\vec{u}$, written $\vec{v}_{\text{parallel}}$, measures (in some sense) how much the vector $\vec{v}$ is aligned with the vector $\vec{u}$. And $\vec{v}_{\text{perp}}$ measures how much the vector isn't aligned with $\vec{u}$

Links
- [[Orthogonal#^62d748|Finding Projection Matrix of Vectors Orthogonal to n]]


The projection of a vector $\vec v$ on $\vec u$ can be calculated by: $$P_{u}(v)=\frac{\vec{u}\cdot\vec{v}}{\vec{u}\cdot\vec{u}}\vec{u}$$
Another formula can be given by
	$P_{w}(v)=\frac{1}{w_{1}^{2}+w_{2}^{2}}(w_{1}^{2}v_{1}+w_{1}w_{2}v_{2},w_{1}w_{2}v_{1}+w^{2}_{2}v_{2})$ 

> This equation comes from $P_{w}(v)=\frac{\langle w,b\rangle}{\langle w,w \rangle}w=\frac{w_{1}v_{1}+w_{2}v_{2}}{w^{2}_{1}+w_{2}^{2}}(w_{1},w_{2})=\frac{1}{w_{1}^{2}+w_{2}^{2}}(w_{1}^{2}v_{1}+w_{1}w_{2}v_{2},w_{1}w_{2}v_{1}+w^{2}_{2}v_{2})$

## Computing $\vec{v}_\text{parallel}$ and $\vec{v}_\text{perp}$
To compute $\vec{v}_{\text{parallel}}$, we must first have $\vec{u}$ as a unit vector
Then, if $0\leq \theta \leq \frac{\pi}{2}$ or $\frac{\pi}{2} < \theta \leq \pi$: $$||\vec{v}_{\text{parallel}}||=||\vec{v}||cos\theta=\vec{v}\cdot\vec{u}$$Since $\vec{v}_\text{parallel}$ is a scalar multiple of $\vec{u}$, and since $\vec{u}$ is a unit vector, $$\vec{v}_\text{parallel}=(||\vec{v}_{\text{parallel}}||)\vec{u}=(||\vec{v}_{\text{parallel}}||)\vec{u}$$Or,
$$\vec{v}_\text{parallel}=(||\vec{v}||cos\theta )\vec{u}=(\vec{v}\cdot\vec{u})\vec{u}$$
Related: [[Dot Product]] 

The Vector $\vec{v}_\text{perp}$ is specified by $$\vec{v}_\text{perp}=\vec{v}-\vec{v}_\text{parallel}$$
