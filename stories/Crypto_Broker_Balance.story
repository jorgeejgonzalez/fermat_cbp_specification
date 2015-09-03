Story: Crypto Broker Balance

In order process a balance of my transactions
  I need to get the balance option
Using the Crypto Broker Wallet Module Crypto Broker
  And the Crypto Broker Wallet Crypto Broker
  And the Crypto Broker Identity Crypto Broker

Scenario: see a balance of my transactions
Given I go to balance option
When Fermat shows the balances consolidated, available, booked and forescast
Then Fermat gives me the option to print or share
