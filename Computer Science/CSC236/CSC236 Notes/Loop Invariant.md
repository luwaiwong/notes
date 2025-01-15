#computer-science  
#uoft/csc236 

A **Loop Invariant** is a property used to prove partial correctness for a iterative loop in a [Function](../../../Mathematics/MAT235%20Notes/Function.md)/Program/Algorithm

It is a condition that guarantees that during the execution of the algorithm, you are making progress towards the goal

>Basically, when proving a program with a loop, we treat the entire loop as a single unit, and give a correctness argument for it separately, and loop invariants are the way of defining if a loop is "correct"

---
# Definition

The **Loop Invariant** is a [Predicate](Predicate.md) that is true every time the loop-condition is checked (including the check that terminates the loop)  
Usually, the predicate depends on which iteration the loop is on

A loop follows the **Loop Invariant** if it is always true at the beginning of every loop iteration  
	This includes the loop check that fails, and causes the loop to terminate

> Example of the loop invariant of a function like this:  
> 	![Pasted image 20240616180319](attachments/Pasted%20image%2020240616180319.png)  
> Could be $Inv(i,\text{sum}):0\leq i \leq len(A) \land\text{sum}=\sum\limits_{k=0}^{i-1}A[k]$  
> 	The first part is important, defines the loop *termination*/bounds, and then second part defines the value of sum at each point in the loop  
> Defining the current state of sum at every point in the loop

## Proofs
Proving Loop Invariants are correct.
1. Argue that the loop invariant is satisfied when the loop is reached  
	Preconditions satisfy loop invariant  
	Sort of like the first step (base case) of induction
2. Show for any iteration of the loop which satisfies the loop invariant, after another iteration, the loop invariant still holds  
	Induction step + Inductive Hypothesis
3. Prove if invariant holds, the postcondition will be satisfied