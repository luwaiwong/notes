#mathematics/group-theory  #uoft/mat301 

**Cayley's Theorem** says that that every  [Group](Group.md) is [Isomorphic](../MAT224%20Notes/Isomorphic.md) to some [Permutation Group](Permutation%20Group.md)  
	The reason this is true, is because every group can have as many *permutations* as elements  
	And a map can be created which maps elements from the group, to permutations of that group?

And thus by extension, every subgroup of a symmetric group is still a symmetric group

> Subgroups of symmetric groups are *every group*., any group is isomorphic to a subgroup of a permutation group

The isomorphism which creates the *permutation representation* of a group $G$ is  
$$F:G\rightarrow Sym(G), g\to f_{g}$$  
Where  
$$f_{g}:G\rightarrow G, f_{g}(x)=g \ .x$$
- $f_{g}$ is a self map, and can be proved to be *bijective*, thus it is a [Permutation](../../Statistics/STA237%20Notes/Permutation.md)
- $F$ can be proved to be an [Isomorphism](../MAT224%20Notes/Isomorphism.md), and maps $G$ to permutations, thus $G$ is isomorphic to some permutation group
