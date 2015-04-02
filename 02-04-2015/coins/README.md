# Minimum coins required

A classic example of an optimization with recursion problem involves making change using the fewest coins. Suppose you are a programmer for a coins vending machine manufacturer. Your company wants to streamline effort by giving out the fewest possible coins in change for each transaction. Suppose a customer puts in a rupees bill and purchases an item for 37 rupees. What is the smallest number of coins you can use to make change?

The answer is five coins: three ten rupees, one five rupees, and one two rupees coins. How did we arrive at the answer of five coins? We start with the largest coin in our arsenal (a ten rupees coin) and use as many of those as possible, then we go to the next lowest coin value and use as many of those as possible. This first approach is called a greedy method because we try to solve as big a piece of the problem as possible right away.

NOTE: We have following valid coins in our system.
10 Rupees
5 Rupees
2 Rupees
1 Rupee
50 paise
25 paise

Your program must use a recursive function to achieve this.

Your program should allow float numbers with appropriate value where any of these coins can be used.

Push your files named as per following convention:
- coins-<your name>.txt