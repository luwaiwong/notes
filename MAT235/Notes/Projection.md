#mathematics #uoft/mat235 

The [Projection](.md) of a [Vector](../../MAT223/Vector.md) $\vec{v}$ on a vector $\vec{u}$ measures (in some sense) how much the vector $\vec{v}$ is aligned with the vector $\vec{u}$.

The **projection** of a vector is similar to its [Components](../../MAT223/Components.md), but projected along another vector, instead of its axes


---
# How to calculate Projection
When **projecting** a vector $\vec{v}$ onto a vector $\vec{u}$, we resolve $\vec{v}$ into [Components](../../MAT223/Components.md), called $\vec{v}_{\text{parallel}}$  and $\vec{v}_{\text{perp}}$ , which are parallel and [perpendicular/orthogonal](../../MAT223/Orthogonal.md) respectively, to a given nonzero vector, $\vec{u}$

>The projection of $\vec{v}$ on $\vec{u}$, written $\vec{v}_{\text{parallel}}$, measures (in some sense) how much the vector $\vec{v}$ is aligned with the vector $\vec{u}$. And $\vec{v}_{\text{perp}}$ measures how much the vector isn't aligned with $\vec{u}$

The projection of a vector $\vec v$ on $\vec u$ can be calculated by: $$P_{u}(v)=\frac{\vec{u}\cdot\vec{v}}{\vec{u}\cdot\vec{u}}\vec{u}$$

If $\vec u$ is already a unit vector
	$\vec v_{\text{parallel}}=(\vec v\cdot \vec u)\vec u$
	And: 
	$\vec{v}_\text{perp}=\vec v - \vec{v}_\text{parallel}$


## Computing $\vec{v}_\text{parallel}$ and $\vec{v}_\text{perp}$
To compute $\vec{v}_{\text{parallel}}$, we must first have $\vec{u}$ as a unit vector
Then, if $0\leq \theta \leq \frac{\pi}{2}$ or $\frac{\pi}{2} < \theta \leq \pi$: $$||\vec{v}_{\text{parallel}}||=||\vec{v}||cos\theta=\vec{v}\cdot\vec{u}$$Since $\vec{v}_\text{parallel}$ is a scalar multiple of $\vec{u}$, and since $\vec{u}$ is a unit vector, $$\vec{v}_\text{parallel}=(||\vec{v}_{\text{parallel}}||)\vec{u}=(||\vec{v}_{\text{parallel}}||)\vec{u}$$Or,
$$\vec{v}_\text{parallel}=(||\vec{v}||cos\theta )\vec{u}=(\vec{v}\cdot\vec{u})\vec{u}$$
Related: [Dot Product](../../MAT223/Dot%20Product.md) 

The Vector $\vec{v}_\text{perp}$ is specified by $$\vec{v}_\text{perp}=\vec{v}-\vec{v}_\text{parallel}$$
