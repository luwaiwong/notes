#mathematics 
#uoft/mat301 

The **Order** of a [[Group]] $G$ is the number of elements in $G$
	Denoted $o(G)$, or $|G|$

The **Order** of an element $g$, is the *least positive integer exponent $n$, such that $g^{n}=e$*
	Denoted $o(g)$ or $|g|$
- $o(g)=2$ if an only if $g$ is an [[Involution]], and not the identity 

---
## Properties
Elements
- $o(g)=o(g^{-1})$
- $o(g)=2$ [[IFF]] $g$ is an [[Involution]] and is not the identity
- $o(g^{k})= \frac{o(g)}{gcd(o(g),k)}$ (if $g$ is an element of finite order)
- If $a$ and $b$ commute, and have *finite order* $o(ab) \ | \  lcm(o(a),o(b))$
- If $a$ and $b$ are disjoint [[Permutation|Permutations]] of *finite order* $o(ab)=lcm(o(a),o(b))$
- Let $g\in G$ be an element of finite order. $g^{m}=e$ if and only if $o(g)\ | \ m$   
- Let $n=o(g)$ be finite, $g^{i}=g^{j}$ [[IFF]] $i=j \ (\text{mod } n)$
- If $x$ and $y$ [[Commutative|Commute]], and have [[Coprime]] orders, $o(xy)=o(x)o(y)$
- for an [[Isomorphism]] $\varphi$, $o(g)=o(\varphi(g))$
- Order of any element ![[#^b64e16]]

Groups
- The order of any subset $H\leq G$ or element $g\in G$, [[Division|Divides]] the order of its parent group $G$ ^b64e16
	- $o(H) \ | \  o(G)$
	- $o(g) \ | \ o(G)$
- $o(G)=[G \ : \ H]o(H)$
	- The [[Index]] of any subgroup $H$ under any action, divides the order of the group $G$
- If $h^{n}=e$, then $o(h)  \ |\ n$ 

Cosets
- $o(G/K)=[G:K]$

Cyclic Groups
- If the [[Order]] of a cyclic group is even, it has [[Involution|Involutions]] $g^\frac{n}{2}$ and $e$, otherwise it has no [[Involution|Involutions]] other than $e$
- The order of any element in a cyclic group can be determined with $o(g^{k})=\frac{o(g)}{gcd(o(g),k)}$
- If the order of an element in a cyclic group is $n$, then it generates the entire group