#mathematics/linear-algebra  
#uoft/mat224 

**Norm** is another word for **Length**

For a [Dot Product](../MAT223%20Notes/Dot%20Product.md), or a [Hermitian Inner Product](Hermitian%20Inner%20Product.md)  
The *Norm* or *length* of a vector $v\in V$ is $||v||=\langle v,v\rangle^{\frac{1}{2}}$

A function is a norm if it satisfies
- **Positive Definiteness**: $||v||=0$ if and only if $v=0$
- **Positive Homogeneity:** $||av||=|a| \ ||v||$ for all  $a\in \mathbb{F}$ and $v\in V$
- **Triangle Inequality:** $||v+w|| \leq ||v||+||w||$ for all $v,w\in V$

Properties
- The norm is *multiplicative*?, where $|v_{1}v_{2}|=|v_{1}||v_{2}|$