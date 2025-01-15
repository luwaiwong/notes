#statistics 
#uoft/sta237 


Suppose the events $C_{1},C_{2},...,C_{m}$ are disjoint, and $C_{1}\cup C_{2}\cup ... \cup C_{m} =\Omega$. The conditional probability of $C_{i}$, given an arbitrary event *A*, can be expressed as: $$P(C_{i}|A) = \frac{P(A|C_{i})\cdot P(C_{i})}{P(A|C_{1})P(C_{1})+P(A|C_{2})P(C_{2})+...+P(A|C_{m})P(C_{m})}$$
Or also 
If *P(A) > 0* and *P(C) > 0* then
$$P(C|A) = \frac{P(A|C)P(C)}{P(A)}$$

Works because it is a rewriting of [[Conditional Probability]]
$$P(A|C) \ = \ \frac{P(A\cap C)}{P(C)}$$
$$P(A|C)P(C) \ = P(A\cap C)$$$$\frac{P(A|C)P(C)}{P(A)} \ = \frac{P(A\cap C)}{P(A)}$$By conditional probability, $$P(C|A) = \frac{P(A|C)P(C)}{P(A)}$$
Is also a rewriting of the [[Multiplication Rule]]

P(B) = prior probability (probability of B under no conditions)
P(B|A) = posterior probability (probability of B quantified after observed under conditions)

The top formula is essentially the second formula, with The [[Law of total probability]] substituted into the bottom section of the equation
