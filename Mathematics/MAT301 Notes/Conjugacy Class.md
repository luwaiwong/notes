#mathematics/group-theory #uoft/mat301 

The **Conjugacy Class** of an element $x\in G$ is the [Orbit](Orbit.md) of $x$ under [Conjugation](Conjugation.md)

---

## Definition
The [Conjugacy Class](.md) of an element $x\in G$ is the [Orbit](Orbit.md) of $x$ under [Conjugation](Conjugation.md)

### Notation
- Denoted $cl(x)$
- The number of conjugacy classes in $G$ is called the [Class Number](Class%20Number.md) of $G$, denoted $k(G)$
	Number of conjugacy classes in $G$, can also be reworded as
	- the number of orbits in $G$ under conjugation

### Properties
- If $G$ is abelian, $cl(x)=\{x\}$ for all $x\in G$, so $k(G)=o(G)$
- This action is neither transitive, nor free, nor faithful
- Let $G$ be group an $H\leq G$. $H\trianglelefteq G$ iff $cl(x)\subseteq H$ for all  $x\in H$
- $|cl(x)|=[G:C_{G}(x)]$
	- $C_{G}$ is the [Centralizer](Centralizer.md)
	- This states essentially the same thing as the [Orbit Stabilizer Theorem](Orbit%20Stabilizer%20Theorem.md) but for specifically conjugacy classes