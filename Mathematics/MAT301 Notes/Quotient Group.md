#mathematics/group-theory #uoft/mat301 

A **Quotient Group** is a [Group](Group.md) of [Cosets](Coset.md) under [](Coset.md#^69cd89|Coset%20Multiplication)
	Any group of cosets can be called a *Quotient Group*

Let a $H\trianglelefteq G$ (A [Subgroup](Subgroup.md) $H$ be [Normal](../MAT235%20Notes/Normal.md) under $G$), then $G/H$ (Set of cosets of $H$ under $G$) is a **Quotient Group

If a set of cosets is a group under coset multiplication, then the following hold:
- $H\trianglelefteq G$. That is, $gHg^{-1}\subseteq H$ for all $g\in G$ [Normality](../MAT235%20Notes/Normal.md)
- $gH = Hg$ for all $g\in G$
- $H$ is self-conjugate: $gHg^{-1}=H$ for all $g\in G$ ([Conjugation](Conjugation.md))

**Properties**
- Taking the quotient of a finite group by a (proper) nontrivial normal subgroup always yields a smaller (nontrivial) group**
	If $f:G\to H$ is a [Homomorphism](Homomorphism.md), then $G /ker \ f \cong im \ f$