#statistics 
#uoft/sta238 

The [[Empirical]] [[Quantile(Percentile)]] is the [[Quantile(Percentile)]] of a defined [[Data Set]]

To compute the [[Empirical Quantile]], we use:
	$q_{n}(p)=x_{(k)}+\alpha(x_{(k+1)}-x_{(k)})$
	Where $k=\lfloor{p(n+1)} \rfloor$ and $\alpha=p(n+1)-k$

 > So, if calculating 25th quantile of a dataset with 11 values, since $11 \cdot 0.25$ = 2.75, the empirical quantile is the 2nd value of the dataset, + 0.75 the difference between the 2nd and third value.
