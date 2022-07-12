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

At the beginning of month 0 (when the credit card statement arrives), assume you owe an amount we will call (b for balance; subscript 0 to indicate this is the balance at month 0).

Any payment you make during that month is deducted from the balance. Let's call the payment you make in month 0, . Thus, your **unpaid balance** for month 0, , is equal to

.

At the beginning of month 1, the credit card company will charge you interest on your unpaid balance. So if your annual interest rate is , then at the beginning of month 1, your new balance is your previous unpaid balance , plus the interest on this unpaid balance for the month. In algebra, this new balance would be

In month 1, we will make another payment, . That payment has to cover some of the interest costs, so it does not completely go towards paying off the original charge. The balance at the beginning of month 2, , can be calculated by first calculating the unpaid balance after paying , then by adding the interest accrued:

If you choose just to pay off the minimum monthly payment each month, you will see that the compound interest will dramatically reduce your ability to lower your debt.

Let's look at an example. If you've got a $5,000 balance on a credit card with 18% annual interest rate, and the minimum monthly payment is 2% of the current balance, we would have the following repayment schedule if you only pay the minimum payment each month: