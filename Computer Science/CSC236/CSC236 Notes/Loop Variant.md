#computer-science 
#uoft/csc236 

A [Loop Variant](.md) is a formal method of proving Loop [Termination](Termination.md)

---
# Definition
> The Loop Variant relies on defining a number which, on each iteration of the loop decreases to 0, and causes the loop to end. If you can determine such a number, then the loop is proved to end
> This idea is analogous to inputs for recursive calls but for iterative loops, where inputs get smaller and smaller until a recursive call can no longer happen


A [Loop Variant](.md) $v$ is an has two properties
- $v$ decreases with each iteration of the loop
- $v$ is always a natural number at the beginning of each loop iteration

If such a $v$ exists, then at some point $v$ won't be able to decrease any further, and the loop can't have any more iterations

> The goal is to establish that $v$ is a decreasing, bounded value in the loop, and thus will end
> Establish that $v$ is **bounded** and that it is constantly **decreasing**


