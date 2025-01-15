#mathematics/group-theory #uoft/mat301 

The **Cycle Type** of a [Permutation](../../Statistics/STA237%20Notes/Permutation.md) is a list of the number of cycles of every possible length, for that permutation

Formally, Let $\sigma\in S_{X}$ for each $k=1,2,\dots,\infty$ let $c_{k}$ be the number of orbits of size $k$. The *Cycle Type* of $\sigma$ is the ordered list of the $c_{k}$'s  
**Properties**
- When $X$ is finite of order $n$, then so is every orbit, and $\sum\limits_{k\geq 1}kc_{k}=n$

> Example of Cycle Type  
> 	The cycle type of $\sigma=\begin{pmatrix}1 & 2 & 3 & 4 & 5 \\ 2 & 1 & 4 & 5 & 3 \end{pmatrix}$ is $(0,1,1,0,0)$  
> 	The cycle type of $\uptau=\begin{pmatrix}1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\ 4 & 7 & 1 & 3 & 8 & 6 & 2 & 5 \end{pmatrix}$ is $(1,2,1,0,0,0,0,0)$
