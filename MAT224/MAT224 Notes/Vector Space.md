#mathematics/linear-algebra 
#uoft/mat224 


A **Vector Space** $\mathbb{V}$ is a [Set](../../MAT223/Set.md), whose elements are called [Vectors](../../MAT223/Vector.md), and satisfies the requirements: 
	The set has the operations of vector addition and vector multiplication
	The set follows a set of [](../../MAT223/Vector.md#^a7e263|axioms) (The properties of vector addition and multiplication)

The elements of a vector space can be anything which fufill its definitions
	For example, the set of all [Functions](../../MAT235/Notes/Function.md) fulfill the definition of a **Vector Space**

---
# Properties
The operations of vector addition and multiplication for a vector space must follow the following **axioms**:
- For all vectors $x,y$ and $z\in \mathbb{V}, (x,y)+z=x+(y+z)$
- For all vectors $x$ and $y\in \mathbb{V}, x+y=y+x$
- There exists a vector $0\in \mathbb{V}$ with the property that $x+0=x$ for all vectors $x\in \mathbb{V}$
- For each vector $x\in \mathbb{V}$, there exists a vector denoted $-x$ with the property that $x+-x=0$
- For all vectors $x$ and $y\in \mathbb{V}$, and all $c\in \mathbb{R}, c(x+y)=xc+xy$
- For all vectors $x\in \mathbb{V}$, and $c,d\in \mathbb{R}, (c+d)x=cx+dx$
- For all vectors $x\in \mathbb{V}$ and all $c,d\in \mathbb{R}, (cd)x=c(dx)$
- For all vectors $x\in \mathbb{V},1x=x$

**Other Properties**
- The zero vector $0$ is unique
- For all $x\in \mathbb{V}, 0x=0$
- For each $x\in \mathbb{V}$, the additive inverse $-x$ is unique
	There is only one other vector $a$, where $x-a=0$
- For all $x\in \mathbb{V}$, and all $c\in \mathbb{R}$, $(-c)x=-(cx)$


> This definition of a Vector Space is based of the properties that vectors do. 
> We use the definition of a Vector Space, because there are many other mathematical concepts(such as functions), which also satisfy the definition of a Vector Space, and it helps to generalize this idea of spaces which follow the properties of vectors. 


# Examples of Vector Spaces

An example of a vector space, with different definition of the operation of addition and multiplication

>$V=\mathbb{R}^{2}$, where $x+y=x\cdot y$, and $cx=x^{c}$

Vector space of all Polynomials
$P_{n}(\mathbb{R})$ is the set of all polynomials, with a *degree no larger than $n$*, where:
	$P_{n}(R)=\{p:\mathbb{R}\rightarrow \mathbb{R}|p(x)=a_{n}x^{n}+a_{n-1}x^{n-1}+...+a_{0} \text{ where }a_{i}\in \mathbb{R}\}$
	Operations (Addition and Multiplication)
		For two polynomials $p(x), q(x)$, $(p+q)(x)=p(x)+q(x)=(a_{n}+b_{n})x^{n}+...+(a_{0}+b_{0})\in P_{n}(\mathbb{R})$
		for $c\in \mathbb{R}$, $cp(x)=ca_{n}x^{n}+...+ca_{0}\in P_{n}(\mathbb{R})$
