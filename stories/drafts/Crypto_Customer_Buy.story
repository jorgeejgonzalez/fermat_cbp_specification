Story: Crypto Customer Buy

In order to make a buy
  I need discover a Broker
    And make an purchase request
Using the Crypto Broker SubApp
  And the Crypto Broker Identity Crypto Customer
  And the Crypto Broker SubApp Module
  And the Crypto Broker Agent
  And the Crypto Broker Business Transaction
  And the Crypto Broker Wallet Customer Broker
  And the Crypto Broker Network Services

Scenario: I make a purchase
Given I contact to a Broker to perform a purchase request
When I will do a negotiation with the broker
    And Fermat assess and notify  not lose money
    And if both agree a transaction is initiated
Then Fermat monitors the transaction
    And the change of status to be available
    And a balance is carried out by state
    And if something fails is canceled
