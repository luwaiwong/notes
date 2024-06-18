#mathematics  
#uoft/mat235 

**Polar Coordinates** are a coordinate system based off of the radius and angles around a circle  
With one coordinate based on the angle from the x-axis, $\theta$, and the other based on the distance from $(0,0)$, being $r$ 

---
## Related
[Cylindrical Coordinates](Cylindrical%20Coordinates.md)

## Conversion
To convert from polar coordinates to typical Cartesian coordinates, use:  
	$x=\cos \theta$  
	$y=r\sin \theta$  
	And $r=\sqrt{x^{2}+y^{2}}$

## Computing Integrals
[Integrals](Integral.md) and **Double Integrals** can be computed basically normally, using $\theta$ and $r$ instead of $x$ and $y$

When computing $\int_{R}f(x,y)dA$ in polar coordinates:
- Convert the integrand to $r,\theta$ by using $x=r \cos \theta, y = r \sin \theta$
- put $dA=r \ dr \ d \theta$ or $dA = r \ d \theta \ dr$

> If calculating integral with a function which normally uses $f(x,y)$, convert from polar coordinates to regular coordinates, and sub those values into $x$ and $y$  
> The second part of the requirements above dictate the order of integration

>  Calculating the area of shapes using polar coordinates  
> 	![Pasted image 20240205181433](attachments/Pasted%20image%2020240205181433.png)

