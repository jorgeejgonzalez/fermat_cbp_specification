Story: Crypto Broker Discovery

In order to buy merchandise from a Crypto Broker
  I need to get a list of available Crypto Brokers
Using the Crypto Broker SubApp Android plugin
  And the Crypto Broker SubApp Module Java plugin
  And the Crypto Broker Actor Java plugin
  And the Crypto Broker Network Service Java plugin

Scenario: Crypto Customer selects a Crypto Broker
  Given I am visualizing the list of discovered Crypto Brokers
  When I select a Crypto Broker from the list
    And I confirm my selection
  Then Fermat should set the selected Crypto Broker as my Broker for Business Transactions
