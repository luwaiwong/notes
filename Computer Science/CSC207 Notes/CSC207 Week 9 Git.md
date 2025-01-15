%% #uoft/csc207 #assignment %% 


# UML Class Diagram
![Pasted image 20231125214945](Pasted%20image%2020231125214945.png)


---
# Design Pattern
One of the design patterns I implemented was the *Strategy Design Pattern*. This design pattern is used for multiple classes which are different in only behaviour, such as different versions of algorithms. I applied this design pattern with the *CaeserCipher* script, using the pre-provided *EncryptionAlgorithm* interface. This means it should be easy to implement new encryption algorithms into this framework, by creating a new class which implements the *EncryptionAlgorithm* interface and its functions, and changing the algorithms and behaviours to suit different encryption algorithms.