Story: Crypto Broker Negotiation Process
In order concretar o no la venta de una cantidad de cryto monedas entre un Broker y un Customer
  I need el Broker interactue con el Customer para indicar cuanto va a ser la tasa definitiva de venta
  And plugin Quotes
  And plugin Actor Crypto Customer

Scenario: El Broker recibe una notificacion del Customer
Given El Crypto Broker recibe una notificacion del Customer indicando el rechaso de la compra
Then Fermat cancela el proceso de negociacion
  And Fermat notifica al Customer que se cancelo la compra

Scenario: El Broker recibe una notificacion del Customer
Given El Crypto Broker recibe una notificacion del Customer indicando que acepta el precio
Then Fermat envia una notificacion a la wallet del Crypto Customer indicando que se acepto la ofeta
	And se realiza el proceso de envio y recepcion del capital

Scenario: El Broker recibe una notificacion del Customer
Given El Crypto Broker recibe una notificacion del Customer indicando una contra oferta para el precio de venta
When El Crypto Broker hace una contra aumentando el precio de venta
Then Fermat envia una notificacion a la wallet del Crypto Customer indicando la contra ofeta

Scenario: El Broker recibe una notificacion del Customer
Given El Crypto Broker recibe una notificacion del Customer indicando una contra oferta para el precio de venta
When El Crypto Broker rechasa la venta
Then Fermat cancela el proceso de negociacion
  And Fermat notifica al Customer que se cancelo la compra

Scenario: El Broker recibe una notificacion del Customer
Given El Crypto Broker recibe una notificacion del Customer indicando una contra oferta para el precio de venta
When El Crypto Broker acepta la oferta
Then Fermat envia una notificacion a la wallet del Crypto Customer indicando que se acepto la ofeta
	And se realiza el proceso de envio y recepcion del capital