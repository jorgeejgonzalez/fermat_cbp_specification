Story: Crypto Broker Buy

In order to make a buy
  I need discover another wholesale or retail Broker
    And make an purchase request
Using the Crypto Broker SubApp
  And the Crypto Broker Identity Crypto Broker
  And the Crypto Broker SubApp Module
  And the Crypto Broker Agent
  And the Crypto Broker Business Transaction
  And the Crypto Broker Wallet Crypto Broker
  And the Crypto Broker Network Services

Scenario: I wish to make a purchase
Given I contact to another wholesale or retail Broker to perform a purchase request
When I will do a negotiation with the another wholesale or retail broker
    And Fermat assess and notify  not lose money
    And if both agree a transaction is initiated
Then Fermat monitors the transaction
    And the change of status to be available
    And a balance is carried out by state
    And if something fails is canceled
