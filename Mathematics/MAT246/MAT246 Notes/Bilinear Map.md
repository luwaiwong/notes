#mathematics/linear-algebra #uoft/mat246 

A [[Bilinear Map]] from $V\times W$ to a vector space $U$ is a function $\Gamma:V\times W\rightarrow U$ such that:
- $v\rightarrow \Gamma(v,w)$ is a linear map from $V$ to $U$  for each $w\in W$, and
- $w\rightarrow \Gamma(v,w)$ is a linear map from $W$ to $U$ for each $v\in V$
Properties
- Every [[Bilinear Functional]] on $V\times W$ is a **Bilinear map** from $V\times W$ to $F$
- For any Bilinear Map $\Gamma:V\times W\rightarrow U$, there exists a linear map $\hat\Gamma:V\otimes W\rightarrow U$ where $\hat\Gamma(v\otimes w)=\Gamma(v,w)$ for all $(v,w)\in V\times W$
- And for any Linear Map $T:V\otimes W\rightarrow U$, there exists a [[Bilinear Map]] $\hat T:V\otimes W\rightarrow U$ where  $\hat T(v, w)=T(v\otimes w)$ for all $(v,w)\in V\times W$

> Simplification:
> 	Bilinear maps are essentially just a broader definition of [[Bilinear Functional|Bilinear Functionals]]