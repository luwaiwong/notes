#computer-science #uoft/csc207

[Solid Relevance Uncle Bob](https://blog.cleancoder.com/uncle-bob/2020/10/18/Solid-Relevance.html)
## SRP: The Single Responsibility Principle
	Gather together the things that change for the same reasons
	Separate things that change for different reasons
Separate code into easily understandable separated modules
## OCP: The Open-Closed Principle
	A Module should be open for extension,
	but closed for modification
Separate abstract concepts from detailed concepts, and create modules that can be extend without being modified. Then we can build upon existing code rather than constantly changing it.
## LSP: The Liskov Substitution Principle
	A program that uses an interface,
	must not be confused by an implementation of that interface
Keep abstractions crisp and well defined.
## ISP: The Interface Segregation Principle
	Keep interfaces small so that users don’t end up depending on things 
	they don’t need.
Whenever interfaces are changed, it forces complied languages (like java), to have to be recompiled and redeployed. Keep interfaces small and segregated so that users do not end up with unnecessary dependencies.  
## DIP: The Dependency Inversion Principle
	Depend in the direction of abstraction. High level modules should not 
	depend upon low level details
Keep high level code isolated from low level details.