#uoft/eco200 #economics 

**Game Theory** is the study of strategic interactions among two or more actors

---
# Basic Terms/Goals
**Players** are participants in game  
A **Strategy** is a player's plan of action for a game  
**Payoffs** are the outcomes players receive from playing the game

We want to find a player's **optimal strategy**  
A strategy that is always the best thing for a player to do is called a **Dominant Strategy**  
Strategies that are never the right thing for for a player to do are called **Dominated Strategies**

A strategy that a player will always choose with certainty is a **Pure Strategy**  
A strategy where the player randomizes their actions is a **Mixed Strategy**

# Strategies
A [Nash Equilibrium](Nash%20Equilibrium) is an option in a game where neither player would want to change their strategy given whatever the other player is choosing  
	Sometimes there may be **No Nash Equilibrium**, that would be considered a **Mixed Strategy Game**

Sometimes there may be **Multiple Nash Equilibria**  
	In that case, then we don't know which the companies will settle on, it is essentially random
 
> Multiple Nash Equilibrium Example  
> ![400](attachments/Pasted%20image%2020240305134248.png)  
> 	Here, for both companies, *March* is a **dominated strategy**  
> 	The companies will never pick March

## Maximin Strategy
The **Maximin Strategy** is where the player minimizes their exposure to risk. The player is not going for the highest payoff, but just for the least loss  
	For the example 12.2 below, a **Maximin Strategy** for blue would be selecting **CI**, the **Nash Equilibrium** is for **RS**, but if the other player picked **RS**, then there would be no profit  
	This strategy is good for unpredictable or "stupid" players

## Examples
> Examples of **Nash Equilibrium**  
> ![400](attachments/Pasted%20image%2020240305132607.png) ![400](attachments/Pasted%20image%2020240305132812.png) ![350](attachments/Pasted%20image%2020240305134453.png)  
> 	For Table 12.2  
> 		The options with checks are best decisions given the other player's moves  
> 		Here, when blue selects RS, and red selects CI, selecting another option would decrease their profit, thus, the **Nash Equilibrium** is the box with two checks  
> 	For Grocery Mart and Food4U  
> 		The middle is the **Nash Equilibrium**  
> 		Here, blue has a **Dominant Strategy** (middle column)  
> 		Red does *not* have a dominant strategy  
> 	For Table 12.5  
> 		There is no **Nash Equilibrium**, therefore is a **Mixed Strategy**


# Repeated Games
**Repeated Games** are games with a Nash equilibrium played multiple times  
	Following games are for a [Prisoners Dilemma](Prisoners%20Dilemma)  
	For some games, repeated games may encourage cooperation  
	However, if both players know when the game will end, the best option for them will always be to cheat  
	For **Infinitely Repeating Games** however, the players can try to cooperate.  
		They can try to cooperate, but the moment the other player breaks the agreement, then both will end up cheating against each other  
		We can calculate if cooperating is a viable strategy

**Backward Induction** is a strategy for solving a multistep game  
	Involves solving the last step and then working backward


> Why finite repeated games do not induce cooperation  
>![500](attachments/Pasted%20image%2020240305140307.png)  
>	This logic carries for as many repeated games there are.  
>	If there are 50 played games, the players will realize that its best to cheat on the 50th game, meaning that it would be the best to cheat on the 49th game, and so on and so on  
>	This is an example of **Backwards Induction**

## Repeating Games Strategies
The **Grim Trigger/Grim Reaper Strategy** in an infinitely repeating game is when:  
	The players cooperate, but cooperative play ends permanently when one player cheats

The **Tit-for-tat Strategy** is when:  
	The player mimics their opponent's prior period action in each round  
	More reflective of reality

# Sequential Games
**Sequential Games** are situations where players do not make their moves at the same time, they take turns.  
	Sequential games do not work with the decision matrix, instead they use a **Decision Tree**

Sequential games eliminates **Multiple Equilibriums**, but the outcome is still a **Nash Equilibrium**

## Examples
> Decision Tree Examples  
> ![425](attachments/Pasted%20image%2020240305141621.png) ![450](attachments/Pasted%20image%2020240305142328.png) ![400](attachments/Pasted%20image%2020240305142824.png)  
> 	Example 1  
> 		The first example is the same as the one before with multiple equilibrium  
> 		Now, since the game is sequential, *Warner Brothers* has a **First Movers Advantage**  
> 		There is no longer multiple equilibrium  
> 	Example 2  
> 		There is no first mover advantage here, both firms have a **Dominant Strategy**

# Strategic Moves
**Strategic Moves** are actions taken early in the game to influence the outcome in a way that benefits the player  
	Such as: Side payments, commitments, reputation building  
	**Side Payments** are a type of *bribe* that influences the outcome of a strategic game  
	**Commitments** are actions a player takes which guarantees that a player will have to take a particular choice in the future  
		**Commitments** serve as sort of a *threat*, that a player will take an option, forcing the opponent to pick another option  
	**Reputations** themselves can be sources of commitment  
		If a player joins a market, and the leading player does not fight them off, then other players will know that they are not willing to fight a price war

One application of strategic moves is a company trying to deter new competitors from entering industry.  
	Players can use **Commitments** which guarantee that they will fight a price war if a new player joins the market  
	Thus players are incentivized not to join the market, as they will be priced out in a price war

## Examples
> Example of Side Payments  
> ![400](attachments/Pasted%20image%2020240305142824.png) ![500](attachments/Pasted%20image%2020240305142945.png) ![450](attachments/Pasted%20image%2020240305143025.png)  
> 	In Example 1, The best move is for *Danica* to do play.  
> 	Example 2 shows the change in dominant strategy with a promised side payment  
> 	Example 3 shows a punishment for non-cooperation

> Example of **Commitments**  
> ![Pasted image 20240305143527](attachments/Pasted%20image%2020240305143527.png) ![400](attachments/Pasted%20image%2020240305155408.png) ![425](attachments/Pasted%20image%2020240305155430.png)  
> 	Example 1  
> 		For both players, both opening in may would be detrimental, so there were two **Nash Equilibrium** for May, and December.  
> 		One player however, makes a commitment, threatening to do May no matter what.  
> 			This is a **Credible Threat** because they've made a commitment for May  
> 			If they pick December now, they will face greater losses  
> 	Example 2+3  
> 		In example 2, Samsung wants to join the market, because they know Apple's best interest is not to fight them  
> 		In example 3, Apple makes a commitment, so that if Samsung joins the market, then Apple's best interest is to fight them  
> 		In that scenario, Samsung knows it will lose money if it joins, thus it will not join
