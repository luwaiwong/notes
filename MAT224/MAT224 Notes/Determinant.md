#mathematics/linear-algebra #uoft/mat224 

The **Determinant** is a property which can be used to determine whether a [Matrix](Matrix.md) or [Linear Transformation](../../MAT223/Linear%20Transformations.md) is [Invertible](Invertible.md)

The Determinant is a function of a matrix which satisfies certain properties. for a $2\times 2$ Matrix, it is easily understood as the **Area**  make by constructing a parallelogram using the *rows of the matrix*

[](MAT224%20Notes.md#^aecd7a|MAT224%20Notes%20Reference)

---
# Properties
The [Determinant](.md) of a $2\times 2$ matrix $A$ , is the unique functions of the rows of $A$ which satisfies the properties: **(3.1.5, 128)**
- $det(ba_{1}+ca_{1}', a_{2})=bdet(a_{1},a_{2})+cdet(a_{1}',a_{2})$ for $b,c\in \mathbb{R}$ | Or, also known as **Multilinearity**
- $det(a_{1},a_{2})=-det(a_{2},a_{1})$ | **Alternating**
- $det(e_{1},e_{2})=1$ | **Normalization**