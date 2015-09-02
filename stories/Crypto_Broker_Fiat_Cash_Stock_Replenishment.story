Story: Crypto Broker Fiat Cash Stock Replenishment

In order to Sell the Fiat merchandise
  I need to supply my stock with Fiat Currency
Using the Crypto Broker Wallet Android plugin
  And the Crypto Broker Wallet Module Java plugin
  And the Stock Fiat Cash Java plugin

Scenario: Initial Replenishment
Given I haven't stocked any Fiat Cash merchandise
When I register that I have Fiat Cash with the value of 1
Then my Crypto Broker Wallet Fiat Cash Stock should be 1

Scenario: Replenishment over an existing Stock
Given my Crypto Broker Wallet Fiat Cash Stock is 2
When I register that i have Fiat Cash with the value of 1
Then my Crypto Broker Wallet Fiat Cash Stock should be 3
