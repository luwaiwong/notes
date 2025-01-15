#statistics  
#uoft/sta238 

A **Kernel Density Estimate** (**KDE**) is a type of graph used to visualize [Probability](../STA237%20Notes/Probability.md) in [Data sets](Data%20Set.md).

>It is similar, but not exactly the same as a [Histogram](Histogram.md) in the information it presents.  
>The **KDE** is different from a [Histogram](Histogram.md) in that it:
>	- Smooths the data
>	- Weights each data point by a density function called the [Kernel](../../Mathematics/MAT224%20Notes/Kernel.md)

>Think of placing a function, which has its largest value in the center, on each point of data, and then getting sum of those functions at a point.  
>If the point is somewhere with lots of points nearby, then the value will be high with lots of sum, and if the point is somewhere with no points nearby, the value will be low  
>Or "putting a pile of sand", around each element of the dataset. At places where the elements accumulate, the sand will pile up  
>	The piles of sand fall to the side, creating a smooth graph


---
# Construction
When we create a Kernel Density Estimate plot,we choose
- A [Kernel](../../Mathematics/MAT224%20Notes/Kernel.md) $K$
	- Represents the shape, that each element represents in the KDE takes, to create the graph
- A [Bandwidth](Bandwidth.md) $h$
	- A parameter that determines how wide the kernel in the KDE is

> Examples of different Kernels, and how a **KDE** graph is constructed  
> ![225](attachments/Pasted%20image%2020240708102514.png) ![325](attachments/Pasted%20image%2020240708103036.png)


To construct a [Kernel Density Estimate](.md) graph, given a [Data Set](Data%20Set.md), and after selecting a [Kernel](../../Mathematics/MAT224%20Notes/Kernel.md) $K$ and [Bandwidth](Bandwidth.md) $h$ we need to:
1. Scale the Kernel, according to the bandwidth. To do this, we want to scale the width and the height with  
	$\frac{1}{h}K(\frac{x}{h})$  
	We scale it like this so the width is set to the bandwidth, while retaining all information  
		We scale down the value so each data point isn't over weighted
2. For each data value $x_{i}$, apply the kernel to that point by shifting its center to the data value  
	$\frac{1}{h}K(\frac{t-x_{i}}{h})$  
		This sets it so that the heaviest weight is at the data point itself
3. Then to calculate the value of the **KDE** graph at any point, we calculate:  
	$f_{n,h}(t)=\frac{1}{n}\{\frac{1}{h}K(\frac{t-x_{1}}{h})+ \frac{1}{h}K\left(\frac{t-x_{2}}{h}\right)+...+ \frac{1}{h}K(\frac{t-x_{n}}{h})\}$    

> So for any point, its value is the sum of its distance from the points on the dataset, plugged into the kernel.  
> Since kernels typically decay as the distance grows, for an area with more points, there will be more larger sums, and so the value of an area with more points will be higher  
> The choice of the bandwidth also plays a similar role for the **KDE**, as **bin width** does for [Histograms](Histogram.md)