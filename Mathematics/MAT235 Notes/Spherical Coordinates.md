#mathematics  
#uoft/mat235 

**Spherical Coordinates** are a coordinate system based off the radius and angles of a sphere.

One coordinate ($\rho$) represents the distance from $(0,0)$, one coordinate ($\theta$) represents the angle from the x-axis, and one coordinate ($\phi$) represents the angel from the z-axis.

> This system of coordinates is useful when there is spherical symmetry with respect to the origin, either in the region of integration or in the integrand.  
 >How Spherical Coordinates work  
> 	Red = $\theta$, Green = $\rho$, Orange = $\phi$  
> 	![Pasted image 20240205183752](attachments/Pasted%20image%2020240205183752.png)

---
## Conversion
**Spherical Coordinates** can be converted to typical Cartesian coordinates with:
- $x=\rho\sin\phi\cos \theta$
- $y=\rho\sin \phi\sin \theta$
- $z=\rho\cos \phi$

## Integration
[Integrating](Integral.md) with **Spherical Coordinates** is similar to integrating with [Polar Coordinates](Polar%20Coordinates.md), and [Cylindrical Coordinates](Cylindrical%20Coordinates.md).

Since **Spherical Coordinates** exist in 3-Space, most integration done with spherical coordinates will be computing **Triple Integrals**  
When computing triple integrals in spherical coordinates, covert the *integrand* to be in terms of $\rho, \theta, \phi$, and set $dV=\rho^{2}\sin \phi d \rho d \phi d \theta$

> Example of Triple Integration with spherical coordinates  
> 	![Pasted image 20240412215350](attachments/Pasted%20image%2020240412215350.png)