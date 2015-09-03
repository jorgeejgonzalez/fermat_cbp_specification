Story: Crypto Broker Crypto Stocking

In order to sell crypto currencies to Customers in the Fermat plataform
Using the Crypto Broker Wallet
  I need to stock my Crypto Broker Wallet
Using the Stock Crypto Plugin
  And the Receive Crypto Plugin

Scenario: First Crypto Stocking
Given I dont have made any Crypto Stocking before
When I want to stock an amount of any Crypto Currencies in the Crypto Broker Wallet
  And I provide the quantity of crypto currencie to stock
  And I provide the wallet address where I have the given amount of crypto currency
Then Fermat make the reception of the crypto currencies through the Blockchain.
  And Fermat register this amount has a stocking

Scenario: First Crypto Stocking
Given I dont have made any Crypto Stocking before
When I want to stock an amount of any Crypto Currencies in the Crypto Broker Wallet
  And I provide the quantity of crypto currencie to stock
  And I provide the wallet address where I have the given amount of crypto currency
  And I dont have the amount of crypto currency specified
Then Fermat will notify me the the given address dont have enough crypto currency to make the operation


Scenario: New Crypto Stocking
Given I have made before a Crypto Stocking
When I want to stock an amount of any Crypto Currencies in the Crypto Broker Wallet
  And I provide the quantity of crypto currencie to stock
  And I provide the wallet address where I have the given amount of crypto currency
Then Fermat make the reception of the crypto currencies through the Blockchain.
  And Fermat register this amount has a stocking

Scenario: New Crypto Stocking
Given I have made before a Crypto Stocking
When I want to stock an amount of any Crypto Currencies in the Crypto Broker Wallet
  And I provide the quantity of crypto currencie to stock
  And I provide the wallet address where I have the given amount of crypto currency
  And I dont have the amount of crypto currency specified
Then Fermat will notify me the the given address dont have enough crypto currency to make the operation	