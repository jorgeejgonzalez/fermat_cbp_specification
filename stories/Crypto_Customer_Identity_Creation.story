Story: Crypto Customer Identity Creation

In order to use any Crypto Customer Wallet
  I need to have an Identity as a Crypto Customer
Using the Crypto Customer SubApp
  And the Crypto Customer Identity Plugin

Scenario: First Crypto Customer Identity
  Given I don't have any Crypto Customer Identities in Fermat
  When I want to create an Identity
    And I provide an Alias
    And I provide a Photo
  Then Fermat should Create a Private Key
    And Derive a Public Key
    And associate them with the Alias and the Photo
