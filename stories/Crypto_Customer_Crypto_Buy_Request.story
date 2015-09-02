Story: Crypto Customer Crypto Buy Request
In order para comprar una cantidad de Crypto monedas
  I need realizar una solicitud de compra de Crypto monedas a un Crypto Broker
Using la Crypto Customer Wallet
  And plugin Quotes
  And plugin Actor Crypto Broker

Scenario: Crear Solicitud de Compra a Crypto Broker
Given deseo comprar una cantidad de crypto monedas
  And ya tengo en mi lista de contactos un Crypto Broker
When selecciono el Crypto Broker con el que deseo hacer negocio en la Crypto Customer Wallet 
  And le indico la cantidad de crypto monedas que deseo comprar
  And le indico la moneda que voy a usar como pago (FIAT o Crypto)
  And le indico el modo de pago (cash, bank, crypto)
  And le indico la direccion a donde debe realizar la transferencia de la mercaderia si se concreta la compra
Then la Wallet Crypto Customer envia una notificacion a la Wallet del Crypto Broker
  And se anexa una nueva solicitud en la lista de solicitudes en la Wallet del Crypto Broker
  And se anexa la solicitud en la lista de compras en espera en la Wallet del Crypto Customer

Scenario: Respuesta a solicitud de compra Positiva
Given el Crypto Broker al que le realice la solicitud de compra crypto respondio la solicitud
When El Crypto Broker acepta la solicitud de compra
Then Fermat procede a crear un proceso de negociacion donde el Customer y el Broker han establecen el pago definitivo
  
Scenario: Respuesta a solicitud de compra Negativa
Given el Crypto Broker al que le realice la solicitud de compra crypto respondio la solicitud
When El Crypto Broker rechaza la solicitud de compra
Then La Crypto Customer Wallet me envia una notificacion indicando que el vendedor rechazo la compra