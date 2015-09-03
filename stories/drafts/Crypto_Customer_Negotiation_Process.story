Story: Crypto Customer Negotiation Process
In order concretar o no la compra de una cantidad de cryto monedas entre un Customer y un Broker
  I need el customer interactue con el broker para indicar cuanto va a pagar finalmente por crypto que solicito
Using Wallet Crypto Customer
  And plugin Quotes
  And plugin Actor Crypto Broker

Scenario: El Customer recibe una notificacion del broker
Given El Crypto Customer recibe una notificacion del broker indicando el precio de venta
When El Crypto Customer rechaza la negociacion
Then Fermat cancela el proceso de negociacion

Scenario: El Customer recibe una notificacion del broker
Given El Crypto Customer recibe una notificacion del broker indicando el precio de venta
When El Crypto Customer hace una contra oferta disminuyendo el precio a pagar
Then Fermat envia una notificacion a la wallet del Crypto Broker indicando la contra ofeta

Scenario: El Customer recibe una notificacion del broker
Given El Crypto Customer recibe una notificacion del broker indicando el precio de venta
When El Crypto Customer acepta la oferta
Then Fermat envia una notificacion a la wallet del Crypto Broker indicando que se acepto la ofeta
	And se realiza el proceso de envio y recepcion del capital