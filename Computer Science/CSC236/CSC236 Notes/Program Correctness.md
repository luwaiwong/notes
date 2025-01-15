#computer-science 
#uoft/csc236 

For a [Function](../../../Mathematics/MAT235%20Notes/Function.md)/**Program**, **Program Correctness** determines if it behaves as expected, delivers the correct result.

A **Function** $f$ is **Correct** if for every input $I$ to $f$, if $I$ satisfies the [Preconditions](Precondition.md), then $f(I)$ terminates, and all the [Postconditions](Postcondition.md) hold after it terminates

---
# Definition

For every input $I$ to $f$, if $I$ satisfies the [Preconditions](Precondition.md), then $f(I)$ terminates, and all the [Postconditions](Postcondition.md) hold after it terminates


 >An example of the preconditions and the postcondition of a function
> ![650](attachments/Pasted%20image%2020240612160719.png)
> This code is correct, its **Statement of Correctness** is such:
> 	For all $a,b\in \mathbb{Z}^{+}$ such that $a\geq b$, `gcd_rec(a,b)` terminates and returns `gcd(a,b)`


## Analyzing
How to analyze **Program Correctness** for recursive programs
For each program path from the first line to a *return* statement, show that it terminates, and postconditions are satisfied 
- If path contains no recursive calls or loops, analyze code line by line until return statement
- For each recursive call, argue why preconditions are satisfied at time of recursion, then assume postconditions are satisfied when recursive call terminates
	Also show that the recursive call is on a *smaller instance*, so program does not recursively call forever
- Argue from last recursive call to end of the function why the postconditions *of the original function call* will hold
- For loops, use a "loop invariant"

> Example of analyzing program correctness
> Check [Hadzilacos](attachments/CSC236%20Textbook%20Hadzilacos.pdf) page 50 for an example of a program correctness proof
> Proving that the `gcd_rec(a,b)` above is correct
> 	- Path 1: the program terminates at line 7. If the program goes into this block, then a = 1 or b = 1. But in these cases, gcd(a, b) = 1, because gcd(x, 1) = 1 for all x. Then the postcondition holds, since at line 7 the program returns 1. 
> 	- Path 2: the program terminates at line 9. If the program goes into this block, b divides a. Since b is the greatest possible divisor of itself, this means that gcd(a, b) = b, and b is returned at line 9.
> 	- Path 3: the program terminates at line 11. We need to check that the recursive call satisfies its preconditions and is called on a smaller instance. Note that b and (a mod b) are both at least 1, and (a mod b) < b, so the preconditions are satisfied. Since a + b > (a mod b) + b, the sum of the inputs decreases, and so the recursive call is made on a smaller instance. If you recall the example of using complete induction on ordered pairs, taking the sum of the two components was the size measure we used there, too. 
> 	Therefore when the call completes, it returns gcd(b, a mod b). Now we use the identity that gcd(a, b) = gcd(b,a mod b) to conclude that the original call returns the correct answer

## Proving
The Structure of a [Program Correctness](.md) proof would be
1. Find the appropriate post-condition (if not given)
2. If there are loops in your algorithm, give an appropriate [Loop Invariant](Loop%20Invariant.md) (LI) for the loop, and prove your loop invariant
3. Use your LI and the loop exit condition to prove partial correctness
4. Define an appropriate loop measure to prove termination of the loop
5. Running time analysis
	This is not officially part of the proof. but may be useful to correctness, think about for termination
