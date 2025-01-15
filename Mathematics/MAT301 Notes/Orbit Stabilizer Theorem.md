#mathematics/group-theory #uoft/mat301 

The **Orbit Stabilizer Theorem** states the relationship between [Orbits](Orbit.md) and [Stabilizer](Stabilizer.md), where if $G\curvearrowright X$ and $x\in X$  
$$[G:G_{x}]=|Gx|$$  
In particular, $G$ is finite iff both $Gx$ and $G_{x}$ are finite, in which case  
$$o(G)=|Gx|\cdot o(G_{x})$$

> Simplifying:  
> 	The relationship between orbits and stabilizers is very close.  
> 		If $x$ has a large orbits, then most elements of $G$ are busy moving $x$ around, while if $x$ has a small orbit, then most of the elements of $G$ leave $x$ alone  
> 	The above is true, because we already know from lagranges theorem, $o(G)=[G:G_{x}]o(G_{x})$  
> 		Thus if $o(G)=|Gx|\cdot o(G_{x})$, then $[G:G_{x}]=|Gx|$  
> 	The product of the size of the orbit of an element, with the order of its stabilizer, is always the order of the group  
> 		You can view this anecdotally in examples of orbits and stabilizers
