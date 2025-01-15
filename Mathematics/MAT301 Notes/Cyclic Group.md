#mathematics  
#uoft/mat301 

A **Cyclic [Group](Group.md)** is a group in which every element is a [](Group.md#^dcf485|Power) of a single element, called a [Generator](Generator.md)  
	In a cyclic group, every element is of the form $g^{i}$  
	Denoted $G=\langle g\rangle$, where $g$ is the generator for $G$

---
# Definition
A **Cyclic Group** is a [Group](Group.md) in which every element is a power [](Group.md#^dcf485|Power) of a single element, called a [Generator](Generator.md)  
We write:  
$$G=\langle g\rangle$$  
to mean $G$ is cyclic with generator $g$
## Properties
- If the [Order](Order.md) of a cyclic group is even, it has [Involutions](Involution.md) $g^\frac{n}{2}$ and $e$, otherwise it has no [Involutions](Involution.md) other than $e$
- The order of any element in a cyclic group can be determined with $o(g^{k})=\frac{o(g)}{gcd(o(g),k)}$
	- Number of generators of $\mathbb{Z}/ n \mathbb{Z}$ is the [Totient](Totient.md)
- A finite [Group](Group.md) of [Order](Order.md) $n$ is **Cyclic** if and only if it has an element of order $n$
	- If the order of an element in a cyclic group is $n$, then it generates the entire group
- Any two cyclic groups of the same order are [Isomorphic](../MAT224%20Notes/Isomorphic.md)
	- Any two infinite cyclic groups are isomorphic


## Subgroups
The *Fundamental Theorem of Cyclic Groups* says:  
	**Every Subgroup of a Cyclic Group is Cyclic**

### Properties of Subgroups
- Let $G=\langle g \rangle$ be a cyclic group and let $H\leq G$ have finite [Index](Index.md) $k$, then $H=\langle g^{k}\rangle$
- If $H_{1}$ and $H_{2}$ have the same [Index](Index.md) in $G$, then $H_{1}=H_{2}$
- If a group $G$ has at most one subgroup of each index, then $G$ is cyclic
- If $G=\langle g\rangle$ and $k$ is a fixed integer, any integer power of $g^{k}$ generates a [Subgroup](Subgroup.md) of $G$:  
$$\langle g^{k}\rangle \leq G$$
# Cyclic Groups
## $\mathbb{Z}/n \mathbb{Z}$
^9baa47

$\mathbb{Z}/n \mathbb{Z}$ means the "Additive Group of integers [Modulus](Modulus) $n$", where every element becomes its *remainder* to $n$.
- For numbers $<n$,they remain the same

> For an example take $\mathbb{Z}/12 \mathbb{Z}$  
> 	$[6]+[7]=[13]=[1]$  
> 	$[6]+[6]=[12]=[0]$

### Properties
- Any integer $a$ generates $\mathbb{Z}/n \mathbb{Z}$ if and only if $gcd(a,n)=1$
- If $[a]=[b]$, then $gcd(a,n)=gcd(b,n)$
- The Euler-Fermat theorem states that if $a$ and $n$ are coprime, then  
$$a^{\varphi(n)}\equiv1 \text{ mod($n$)}$$  
	This is because $a^{o(G)}=e$ in any group $G$
- $\mathbb{Z}/n \mathbb{Z}$ is [Abelian](Abelian.md) (because addition is abelian)

## $(\mathbb{Z} /n \mathbb{Z})^{x}$, $U(n)$
^5da85d  
$(\mathbb{Z} /n \mathbb{Z})^{x}$, or  $U(n)$ is the "Multiplicative Group of Integers [Modulus](Modulus) $n$",  
$U(n)$ is the group of integers [Modulus](Modulus) $n$ which are [Invertible](../MAT224%20Notes/Invertible.md) under multiplication 

> Under multiplication, many elements in $\mathbb{Z} /n \mathbb{Z}$ are not invertible  
> Take $\mathbb{Z} /16 \mathbb{Z}$. $[2][8]=[16]=[0]$, thus $[2]$ and $[8]$ are not invertible here, because there is nothing that can multiply $[0]$ to get $[2]$ and $[8]$ again  
> $U(n)$ excludes elements which would result in multiplying to get $0$  
> Two examples  
> 	$(\mathbb{Z} /6 \mathbb{Z})^{x}=\{1,5\}$, and $(\mathbb{Z} /8 \mathbb{Z})^{x}=\{1,3,5,7\}$  
> 	All numbers which cannot multiply to be $n$, and thus 0

### Determining if an [Residue Class](Residue%20Class.md)  $[a]$ in $\mathbb{Z}/n \mathbb{Z}$ is [Invertible](../MAT224%20Notes/Invertible.md)
- If $[a][b]=[0]$ but $[a],[b] \neq [0]$, then neither $[a]$ nor $[b]$ are invertible modulo $n$
- If $gcd(a,n)>1$, then $[a]$ is not invertible under $(\mathbb{Z}/n \mathbb{Z})^x$
- If $gcd(a,n)=1$, then $[a]$ is invertible modulo $n$
### Properties
- $U(n)$ is cyclic [IFF](IFF) $n=2,4,p^{k}$ or $2p^{k}$ for some odd prime and positive integer $k$
- $U(n)$ is abelian
- An element $[a]\in (\mathbb{Z}/n \mathbb{Z})^x$ if and only if $gcd(a,n)=1$
	- An element $[a]\in (\mathbb{Z}/n \mathbb{Z})^x$ if and only if it generates $\mathbb{Z}/n \mathbb{Z}$
- If $a$ and $n$ are coprime, then $a^{\varphi (n)}= 1 \text{ mod(n)}$
	- This is because $a^{o(G)}=e$ in any group $G$
- $o(U(n))=\varphi (n)$ ([Totient](Totient.md))
	- This is because we know if $gcd(a,n)=1$, then $[a]$ is invertible modulo $n$. So obviously number of elements where $gcd(a,n)=1$ is its order
- The Euler-Fermat theorem states that if $a$ and $n$ are coprime, then  
$$a^{\varphi(n)}\equiv1 \text{ mod($n$)}$$  
	This is because $a^{o(G)}=e$ in any group $G$

> The properties of $\mathbb{Z}/n \mathbb{Z}$ and $(\mathbb{Z}/n \mathbb{Z})^x$ are very connected to the greatest common divisor