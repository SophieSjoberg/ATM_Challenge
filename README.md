# My ATM Challenge at CraftAcademy bootcamp week 1


## Assignment
Create an app that simulates an ATM machine with withdraw and deposit functions.

## Install
I added `rspec`to Gemfile and ran `$ bundle install`

## How to use application

Open irb in your terminal and run the following commands:

`load './lib/atm.rb'`

`load './lib/person.rb'`

Create Person
`person = Person.new({name: 'Sophie'})`

Create Account
`account = person.create_account`

Create ATM
`atm = Atm.new`

Deposit money 
`person.deposit(100)`

Withdraw money (using pin generated from creating account)

`person.withdraw({amount:50, account:account, atm:atm, pin:'1234'})`

Check balance account
`account.balance`

Check balance of the ATM
`atm.funds`


## Resources
CraftAcademy course material, coaches, google and Stackoverflow.
