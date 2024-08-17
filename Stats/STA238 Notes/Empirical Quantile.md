#statistics  
#uoft/sta238 

The [Empirical](Empirical.md) [Quantile(Percentile)](../STA237%20Notes/Quantile(Percentile).md) is the [Quantile(Percentile)](../STA237%20Notes/Quantile(Percentile).md) of a defined [Data Set](Data%20Set.md)

To compute the [Empirical Quantile](.md), we use:  
	$q_{n}(p)=x_{(k)}+\alpha(x_{(k+1)}-x_{(k)})$  
	Where $k=\lfloor{p(n+1)} \rfloor$ and $\alpha=p(n+1)-k$

 > So, if calculating 25th quantile of a dataset with 11 values, since $11 \cdot 0.25$ = 2.75, the empirical quantile is the 2nd value of the dataset, + 0.75 the difference between the 2nd and third value.
