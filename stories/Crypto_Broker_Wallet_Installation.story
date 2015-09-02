Story: Crypto Broker Wallet Installation

In order to perform activities of money brokerage through Fermat
 I need to install a Crypto Broker Wallet
Using the Wallet Store

Scenario: First Crypto Broker Wallet Installation
Given I haven't installed any Crypto Broker Wallet
  And I haven't installer any Crypto Customer Wallet
When I want to install a Crypto Broker Wallet
Then Fermat should install the selected Crypto Broker Wallet
 And the Crypto Broker SubApp
 And the Customers SubApp
 And the Wallet Manager SubApp
 And the SubApp Manager SubApp

Scenario: Crypto Broker Wallet Installation for an existing Crypto Customer
Given I haven't installed any Crypto Broker Wallet
  And I have already installed a Crypto Customer Wallet
When I want to install a Crypto Broker Wallet
Then Fermat should install the selected Crypto Broker Wallet
  And the Customers SubApp

Scenario: Following Crypto Broker Wallet Installations
Given I have already installed one or more Crypto Broker Wallets
When I want to install a different Crypto Broker Wallet
Then Fermat should install the selected Crypto Broker Wallet
