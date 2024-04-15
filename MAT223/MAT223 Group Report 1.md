#mathematics
#uoft/mat223 
#assignment 
![Group Report 1](Group%20Report%201.pdf)

3. The context for this problem is R3. Find two or more ways to convert the equation of a plane in Cartesian form, $ax + by + cz = d$into vector form. Write your process as if you were writing a textbook manual. Your audience is students learning your method for the first time
	
	Converting the equation of a plane in cartesian form, $ax + by + cz = d$, into vector form
	
	Vector form of the plane:
	With direction vectors $d_1=\vec{AB}$ and $d_2=\vec{AC}$, and a point $\vec{p}$, a plane can be expressed in *vector form* if it is expressed as:$$\begin{bmatrix} x\\y\\z\end{bmatrix}=t\vec{d_1}+s\vec{d_2}+\vec{p}$$
	1. First Technique
		To begin, isolate the z variable,$$\begin{aligned}  ax+by+cz &= d \\ ax+by-d &=-cz \\ (\frac{a}{-c})x+(\frac{b}{-c})y+\frac{d}{c} &= z\end{aligned}$$Now, the vector form can be derived as $$\vec{v} = t\begin{bmatrix}1\\0\\\frac{a}{-c} \end{bmatrix}+s\begin{bmatrix} 0\\1\\\frac{b}{-c}\end{bmatrix}+\begin{bmatrix} 1\\1\\1\end{bmatrix}$$
	2. Second Technique
		Find 3 points on the plane. This can be done by substituting x and y in the cartesian form of the plane with different values, such as 0, or 1, and solving for z.
		For Example,
		$\vec{a}$: x = 0, y = 1: $$\begin{aligned} a(0)+b(1)+cz &=  d \\ z &= \frac{d-b}{c} \\\vec{a}&=\begin{bmatrix}0 \\1\\\frac{d-b}{c}\end{bmatrix}\end{aligned}$$$\vec{b}$: x=1, y=0: $$\begin{aligned} a(1)+b(0)+cz &=  d \\ z &= \frac{d-a}{c} \\\vec{b}&=\begin{bmatrix}1 \\0\\\frac{d-a}{c}\end{bmatrix}\end{aligned}$$$\vec{c}$: x=0, y=0: $$\begin{aligned} a(0)+b(0)+cz &=  d \\ z &= \frac{d}{c} \\ \vec{c}&=\begin{bmatrix}0 \\0\\\frac{d}{c} \end{bmatrix}\end{aligned} $$Then, find the vectors $\vec{d}=\vec{ab}$ and $\vec{e}=\vec{ac}$
		Finally, the vector form of the plane can be defined as $$\vec{x}=t\vec{d}+s\vec{e}+\vec{a}$$ Any other 3 points, as long as they are not parallel, can be used to find the equation of the plane. 
