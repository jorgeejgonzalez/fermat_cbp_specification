Story: Crypto Broker Fiat Bank Stock Replenishment

In order to Sell the Fiat merchandise
  I need to supply my stock with Fiat Currency
Using the Crypto Broker Wallet Android plugin
  And the Crypto Broker Wallet Module Java plugin
  And the Stock Fiat Bank Java plugin

Scenario: Initial Replenishment
Given I haven't stocked any Fiat Bank merchandise
When I register that I have Fiat Bank Account with the value of 1
  And that the Fiat Bank Account Number is 12345678901234567890
  And that the Fiat Bank is in the Bank "DUMMY BANK"
Then my Crypto Broker Wallet Fiat Bank Stock should be 1

Scenario: Replenishment over an existing Stock
Given my Crypto Broker Wallet Fiat Bank Stock is 2
When I register that I have Fiat Bank Account with the value of 1
  And that the Fiat Bank Account Number is 12345678901234567890
  And that the Fiat Bank is in the Bank "DUMMY BANK"
Then my Crypto Broker Wallet Fiat Bank Stock should be 3

Scenario: Replenishment Stock over Multiple Accounts
Given my Crypto Broker Wallet Fiat Bank Stock is 2
  And this value was registered to the Fiat Bank Account Number 012345678901234567890
When I register that I have Fiat Bank Account with the value of 1
  And that the Fiat Bank Account Number is 98765432109876543210
  And that the Fiat Bank is in the Bank "DUMMY BANK"
Then my Crypto Broker Wallet Fiat Bank Stock should be 3
