Story: Crypto Broker Fiat Cash Stocking

In order to Sell the Fiat merchandise
  I need to supply my stock with Fiat Currency
Using the Crypto Broker Wallet Android plugin
  And the Crypto Broker Wallet Module Java plugin
  And the Stock Fiat Cash Java plugin

Scenario: Initial Fiat Cash Stocking
Given I haven't stocked any Fiat Cash merchandise
When I register that I have Fiat Cash with the value of 1
Then my Crypto Broker Wallet Fiat Cash Stock should be 1

Scenario: Fiat Cash Stocking over a Stock
Given my Crypto Broker Wallet Fiat Cash Stock is 2
When I register that i have Fiat Cash with the value of 1
Then my Crypto Broker Wallet Fiat Cash Stock should be 3
