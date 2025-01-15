#mathematics/group-theory  #uoft/mat301 


The **Center** of a [[Group]] $G$ is the set
$$Z(G)=\{g\in G:gh=hg \ \text{ for all $h$ in $G$ }\}$$
Elements in the center of a group are called **central**


>Explanation:
>	The center of the group is the group of elements in $G$ which [[Commutative|Commute]] with one another
>	Its a way to measure the "non-[[Abelian|Abelianness]]" of a group
>	The less elements in the *center* of a group, the less abelian it is

---

## Properties
- $Z(G)\leq G$, with equality if and only if $G$ is [[Abelian]]
- If a group's center is [[Trivial]], we say the group is **centerless**

## Centers of Groups
### $D_{n}$
The center of $D_{n}$ is:
$$Z(D_{n})=\begin{cases} \langle e\rangle  \ \text{if $n$ is odd} \\ \langle r^{\frac{n}{2}}\rangle \ \text{if $n$ is even} \end{cases}$$