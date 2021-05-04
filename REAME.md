# Bank Tech Test

## Specification

### Requirements

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)

Deposits, withdrawal.

Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

**Acceptance criteria**

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### User Stories

As a customer
So I can manage my money
I would like to be able to add money to my account

As a customer
So I can manage my money
I would like to see the date I have deposited money and the amount

As a customer
So i can use my money
I would like to be able to withdraw money

As a customer
So I can manage my money
I would like to see what date I withdrew money and the amount

As a customer
So I can see my whole account transaction
I would like to be able to view my deposit and withdrawal history together

## Planning

I decided to build a simple initial model of what I would test for and what my very simple skeleton structure would be.

I decided against doing too much planning as I wanted the tests to somewhat dictate the structure of the algorithm although I decided in advance that I wanted to program to be split into 2 classes - account and balance.

Since the requirements dictated an irb app i decided to use ruby as this would h be the simplest approach.

#### Input/Output table


Input            |         Output
0                |        Credit || 0
1                |        Credit || 1
1, 10            |        Credit || 11
1                |        Credit || 1 || Balance || 1
1, 2             |        Credit || 1 || Balance || 1
0                |        Debit || 0 Credit || Balance || 0
1                |        Debit || 1 Credit || Balance || 1
1, 10            |        Debit || 11 Credit || Balance || 11


#### Domain Modelling
