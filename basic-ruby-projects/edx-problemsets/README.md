# **MITx 6.00.1x's Introduction to Computer Science and Programming Using Python** *(but actually using Ruby)*

This folder will contain all the problem sets done in [MITx 6.00.1x's Introduction to Computer Science and Programming Using Python](https://learning.edx.org/course/course-v1:MITx+6.00.1x+2T2022/home), only resolved using Ruby (which is pretty much exactly what the title of this Readme told you).

The goal is to practice Ruby sintax and try a little more problem solving as I plan to redo all the challenges from scratch.

---

## Problem Set 1

### Problem 1

Assume `s` is a string of lower case characters.

Write a program that counts up the number of vowels contained in the string `s`. Valid vowels are: 'a', 'e', 'i', 'o', and 'u'. For example, if `s = 'azcbobobegghakl'`, your program should print:

`Number of vowels: 5`

### Problem 2

Assume `s` is a string of lower case characters.

Write a program that prints the number of times the string `'bob'` occurs in s. For example, if `s = 'azcbobobegghakl'`, then your program should print

`Number of times bob occurs is: 2`

### Problem 3

Assume `s` is a string of lower case characters.

Write a program that prints the longest substring of `s` in which the letters occur in alphabetical order. For example, if `s = 'azcbobobegghakl'`, then your program should print

`Longest substring in alphabetical order is: beggh`

In the case of ties, print the first substring. For example, if `s = 'abcbcd'`, then your program should print

`Longest substring in alphabetical order is: abc`

---

## Problem Set 2

### Introduction

Each month, a credit card statement will come with the option for you to pay a minimum amount of your charge, usually 2% of the balance due. However, the credit card company earns money by charging interest on the balance that you don't pay. So even if you pay credit card payments on time, interest is still accruing on the outstanding balance.

Say you've made a $5,000 purchase on a credit card with an 18% annual interest rate and a 2% minimum monthly payment rate. If you only pay the minimum monthly amount for a year, how much is the remaining balance?

You can think about this in the following way.

At the beginning of month 0 (when the credit card statement arrives), assume you owe an amount we will call `b{0}` (b for *balance*; subscript *0* to indicate this is the balance at month 0).

Any payment you make during that month is deducted from the balance. Let's call the payment you make in month 0, `p{0}`. Thus, your **unpaid balance** for month 0, `ub{0}`, is equal to `b{0} - p{0}`

At the beginning of month 1, the credit card company will charge you interest on your unpaid balance. So if your annual interest rate is `r`, then at the beginning of month 1, your new balance is your previous unpaid balance `ub{0}`, **plus** the interest on this unpaid balance for the month. In algebra, this new balance would be

`b{1} = ub{0} + r/12.0 * ub{0}`

In month 1, we will make another payment, `p{1}`. That payment has to cover some of the interest costs, so it does not completely go towards paying off the original charge. The balance at the beginning of month 2, `b{2}`, can be calculated by first calculating the unpaid balance after paying `p{1}`, then by adding the interest accrued:

`ub{1} = b{1} - p{1}`

`b{2} = ub{1} + r/12.0 * ub{1}`

If you choose just to pay off the minimum monthly payment each month, you will see that the compound interest will dramatically reduce your ability to lower your debt.

Let's look at an example. If you've got a $5,000 balance on a credit card with 18% annual interest rate, and the minimum monthly payment is 2% of the current balance, we would have the following repayment schedule if you only pay the minimum payment each month:

| Month | Balance                     | Minimum Payment          | Unpaid Balance              | Interest                      |
|-------|-----------------------------|--------------------------|-----------------------------|-------------------------------|
| 0     | 5000.00                     | 100 (= 5000 * 0.02)      | 4900 (= 5000 - 100)         | 73.50 (= 0.18/12.0 * 4900)    |
| 1     | 4973.50 (= 4900 + 73.50)    | 99.47 (= 4973.50 * 0.02) | 4874.03 (= 4973.50 - 99.47) | 73.11 (= 0.18/12.0 * 4874.03) |
| 2     | 4947.14 (= 4874.03 + 73.11) | 98.94 (= 4947.14 * 0.02) | 4848.20 (= 4947.14 - 98.94) | 72.72 (= 0.18/12.0 * 4848.20) |

You can see that a lot of your payment is going to cover interest, and if you work this through month 12, you will see that after a year, you will have paid $1165.63 and yet you will still owe $4691.11 on what was originally a $5000.00 debt. Pretty depressing!

### Problem 1 - Paying Debt off in a Year

Write a program to calculate the credit card balance after one year if a person only pays the minimum monthly payment required by the credit card company each month.

The following variables contain values as described below:

1. `balance` - the outstanding balance on the credit card
2. `annualInterestRate` - annual interest rate as a decimal
3. `monthlyPaymentRate` - minimum monthly payment rate as a decimal

For each month, calculate statements on the monthly payment and remaining balance. At the end of 12 months, print out the remaining balance. Be sure to print out no more than two decimal digits of accuracy - so print

`Remaining balance: 813.41`

instead of

`Remaining balance: 813.4141998135`

So your program only prints out one thing: the remaining balance at the end of the year in the format:

Remaining balance: 4784.0

A summary of the required math is found below:

**Monthly interest rate**= (Annual interest rate) / 12.0
**Minimum monthly payment** = (Minimum monthly payment rate) x (Previous balance)
**Monthly unpaid balance** = (Previous balance) - (Minimum monthly payment)
**Updated balance each month** = (Monthly unpaid balance) + (Monthly interest rate x Monthly unpaid balance)

### Problem 2 - Paying Debt Off in a Year

Now write a program that calculates the minimum **fixed** monthly payment needed in order pay off a credit card balance within 12 months. By a fixed monthly payment, we mean a single number which does not change each month, but instead is a constant amount that will be paid each month.

In this problem, we will not be dealing with a minimum monthly payment rate.

The following variables contain values as described below:

1. `balance` - the outstanding balance on the credit card
2. `annualInterestRate` - annual interest rate as a decimal

The program should print out one line: the lowest monthly payment that will pay off all debt in under 1 year, for example:

`Lowest Payment: 180`

Assume that the interest is compounded monthly according to the balance at the end of the month (after the payment for that month is made). The monthly payment must be a multiple of $10 and is the same for all months. Notice that it is possible for the balance to become negative using this payment scheme, which is okay. A summary of the required math is found below:

**Monthly interest rate** = (Annual interest rate) / 12.0

**Monthly unpaid balance** = (Previous balance) - (Minimum fixed monthly payment)

**Updated balance each month** = (Monthly unpaid balance) + (Monthly interest rate x Monthly unpaid balance)

### Problem 3 - Using Bisection Search to Make the Program Faster

You'll notice that in Problem 2, your monthly payment had to be a multiple of $10. Why did we make it that way? You can try running your code locally so that the payment can be any dollar and cent amount (in other words, the monthly payment is a multiple of $0.01). Does your code still work? It should, but you may notice that your code runs more slowly, especially in cases with very large balances and interest rates. (Note: when your code is running on our servers, there are limits on the amount of computing time each submission is allowed, so your observations from running this experiment on the grading system might be limited to an error message complaining about too much time taken.)

Well then, how can we calculate a more accurate fixed monthly payment than we did in Problem 2 without running into the problem of slow code? We can make this program run faster using a technique introduced in lecture - bisection search!

The following variables contain values as described below:

1. `balance` - the outstanding balance on the credit card
2. `annualInterestRate` - annual interest rate as a decimal

To recap the problem: we are searching for the smallest monthly payment such that we can pay off the entire balance within a year. What is a reasonable **lower bound** for this payment value? $0 is the obvious answer, but you can do better than that. If there was no interest, the debt can be paid off by monthly payments of one-twelfth of the original balance, so we must pay at least this much every month. One-twelfth of the original balance is a good lower bound.

What is a good **upper bound**? Imagine that instead of paying monthly, we paid off the entire balance at the end of the year. What we ultimately pay must be greater than what we would've paid in monthly installments, because the interest was compounded on the balance we didn't pay off each month. So a good upper bound for the monthly payment would be one-twelfth of the balance, after having its interest compounded monthly for an entire year.

In short:

**Monthly interest rate** = (Annual interest rate) / 12.0
**Monthly payment lower bound** = Balance / 12
**Monthly payment upper bound** = (Balance x (1 + Monthly interest rate)12) / 12.0

Write a program that uses these bounds and bisection search (for more info check out [the Wikipedia page on bisection search](https://en.wikipedia.org/wiki/Bisection_method)) to find the smallest monthly payment to the cent (no more multiples of $10) such that we can pay off the debt within a year. Try it out with large inputs, and notice how fast it is (try the same large inputs in your solution to Problem 2 to compare!). Produce the same return value as you did in Problem 2.

---

## Problem Set 3

### Introduction - Hangman

For this problem, you will implement a variation of the classic wordgame Hangman. For those of you who are unfamiliar with the rules, you may read all about it [here](https://en.wikipedia.org/wiki/Hangman_(game)). In this problem, the second player will always be the computer, who will be picking a word at random.

In this problem, you will implement a **function**, called hangman, that will start up and carry out an interactive Hangman game between a player and the computer. Before we get to this function, we'll (*actually, this time I will*) first implement a few helper functions to get you going.

**Requirements:**

Here are the requirements for your game:

1. The computer must select a word at random from the list of available words that was provided in `words.txt`. The functions for loading the word list and selecting a random word have already been provided for you in `ps3_hangman.rb`.
2. The game must be interactive; the flow of the game should go as follows:

   - At the start of the game, let the user know how many letters the computer's word contains.
   - Ask the user to supply one guess (i.e. letter) per round.
   - The user should receive feedback immediately after each guess about whether their guess appears in the computer's word.
   - After each round, you should also display to the user the partially guessed word so far, as well as letters that the user has not yet guessed.

3. Some additional rules of the game:

   - A user is allowed 8 guesses. Make sure to remind the user of how many guesses s/he has left after each round. Assume that players will only ever submit one character at a time (A-Z).
   - A user loses a guess only when s/he guesses incorrectly.
   - If the user guesses the same letter twice, do not take away a guess - instead, print a message letting them know they've already guessed that letter and ask them to try again.
   - The game should end when the user constructs the full word or runs out of guesses. If the player runs out of guesses (s/he "loses"), reveal the word to the user when the game ends.
