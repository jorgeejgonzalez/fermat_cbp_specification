Story: Crypto Broker Identity Creation

In order to use a Crypto Broker Wallet
  I need to create an Identity as a Crypto Broker
  Using the Crypto Broker SubApp

Scenario: First Crypto Broker Identity
Given I don't have any Crypto Broker Identities in Fermat
When I want to create an Identity
  And I provide an Alias
  And I provide an Image
Then Fermat should Create a Private Key
  And Derive a Public Key
  And associate them with the Alias

Scenario: Multiple Crypto Broker Identities
Given I have already created a Crypto Broker Identity
When I want to create an Identity
  And I provide an Alias
  And I provide an Image
  And the Alias has not been used before in my device
Then Fermat should Create a Private Key
  And Derive a Public Key
  And associate them with the Alias

Scenario: Multiple Crypto Broker Identities
Given I have already created a Crypto Broker Identity
When I want to create an Identity
  And I provide an Alias
  And I provide an Image
  And the Alias has already been used in my device
Then I should not be able to create a new Crypto Broker Identity
