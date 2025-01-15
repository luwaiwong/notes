#mathematics  
#uoft/mat301 

The **Order** of a [Group](Group.md) $G$ is the number of elements in $G$  
	Denoted $o(G)$, or $|G|$

The **Order** of an element $g$, is the *least positive integer exponent $n$, such that $g^{n}=e$*  
	Denoted $o(g)$ or $|g|$
- $o(g)=2$ if an only if $g$ is an [Involution](Involution.md), and not the identity 

---
## Properties
Elements
- $o(g)=o(g^{-1})$
- $o(g)=2$ [IFF](IFF) $g$ is an [Involution](Involution.md) and is not the identity
- $o(g^{k})= \frac{o(g)}{gcd(o(g),k)}$ (if $g$ is an element of finite order)
- If $a$ and $b$ commute, and have *finite order* $o(ab) \ | \  lcm(o(a),o(b))$
- If $a$ and $b$ are disjoint [Permutations](../../Statistics/STA237%20Notes/Permutation.md) of *finite order* $o(ab)=lcm(o(a),o(b))$
- Let $g\in G$ be an element of finite order. $g^{m}=e$ if and only if $o(g)\ | \ m$   
- Let $n=o(g)$ be finite, $g^{i}=g^{j}$ [IFF](IFF) $i=j \ (\text{mod } n)$
- If $x$ and $y$ [Commute](Commutative.md), and have [Coprime](Coprime.md) orders, $o(xy)=o(x)o(y)$
- for an [Isomorphism](../MAT224%20Notes/Isomorphism.md) $\varphi$, $o(g)=o(\varphi(g))$
- Order of any element ![#^b64e16](#^b64e16)

Groups
- The order of any subset $H\leq G$ or element $g\in G$, [Divides](Division.md) the order of its parent group $G$ ^b64e16
	- $o(H) \ | \  o(G)$
	- $o(g) \ | \ o(G)$
- $o(G)=[G \ : \ H]o(H)$
	- The [Index](Index.md) of any subgroup $H$ under any action, divides the order of the group $G$
- If $h^{n}=e$, then $o(h)  \ |\ n$ 

Cosets
- $o(G/K)=[G:K]$

Cyclic Groups
- If the [Order](.md) of a cyclic group is even, it has [Involutions](Involution.md) $g^\frac{n}{2}$ and $e$, otherwise it has no [Involutions](Involution.md) other than $e$
- The order of any element in a cyclic group can be determined with $o(g^{k})=\frac{o(g)}{gcd(o(g),k)}$
- If the order of an element in a cyclic group is $n$, then it generates the entire group