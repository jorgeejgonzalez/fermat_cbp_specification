Story: Crypto Broker Crypto Stock Replenishment

In order to Sell the Crypto merchandise
  I need to supply my stock with Crypto Currency
Using the Crypto Broker Wallet Android plugin
  And the Crypto Broker Wallet Module Java plugin
  And the Stock Crypto Java plugin

Scenario: Initial Replenishment
Given I haven't stocked any Crypto merchandise
  And the Crypto Broker Wallet provides me with a Public Address
When I receive the value of 1 coin to the Public Address
Then my Crypto Broker Wallet Crypto Stock should be 1 Crypto

Scenario: Replenishment over an existing Stock
Given my Crypto Broker Wallet Crypto Stock for the Crypto Currency is 2
  And the Crypto Broker Wallet provides me with a Public Address
When I receive a value of 1 coin to the Public Address
Then the Crypto Broker Wallet Crypto Stock for the Crypto Currency should be 3
