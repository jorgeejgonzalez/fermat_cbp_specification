Story: Crypto Broker Discovery

In order to buy merchandise from a Crypto Broker
  I need to get a list of available Crypto Brokers
Using the Crypto Broker SubApp Android plugin
  And the Crypto Broker SubApp Module Java plugin
  And the Crypto Broker Actor Java plugin
  And the Crypto Broker Network Service Java plugin

Scenario: Crypto Customer has not bought merchandise
Given I haven't performed any Business Transactions with a Crypto Broker
When I access the list of Crypto Brokers
Then I should get a list of the Crypto Brokers sorted by proximity to my location
  And I should visualize the Photo of the Crypto Broker
  And I should visualize the Alias of the Crypto Broker
  And I should visualize the latest Crypto Sale price of the Crypto Broker
  And I should visualize the lastest Fiat Sale price of the Crypto Broker

Scenario: Crypto Customer has already bought merchandise
Given I have already performed one Business Transactions with a Crypto Broker
When I access the list of Crypto Brokers
Then I should get 2 lists of Crypto Brokers
  And the first list should be of the Crypto Brokers I've already bought from
  And the second list should be of all the Crypto Brokers sorted by proximity to my location
  And in each list I should visualize the Photo of the Crypto Broker
  And I should visualize the Alias of the Crypto Broker
  And I should visualize the latest Crypto Sale price of the Crypto Broker
  And I should visualize the lastest Fiat Sale price of the Crypto Broker
