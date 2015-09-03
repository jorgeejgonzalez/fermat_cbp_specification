Story: Crypto Broker Sell Notificacion
In atender una solicitud de compra por parte de un Crypto Customer
  I need enviar una notificacion indicando el monto a cobrar
Using la Crypto Broker Wallet
  And plugin Quotes
  And plugin Actor Crypto Customer

Scenario: Enviar Notificacion de Venta a Crypto Customer
Given un Customer desea comprame una cantidad de dinero 
When selecciono el Crypto Customer que le deseo vender
Then la Wallet Crypto Broker envia una notificacion a la Wallet del Crypto Customer

Scenario: Respuesta a la Notificacion Positiva
Given el Crypto Customer al que le envie la notificacion respondio la solicitud
When El Crypto Customer acepta la solicitud de compra
Then Fermat procede a crear un proceso de negociacion donde el Customer y el Broker han establecen el pago definitivo
  
Scenario: Respuesta a la Notificacion Negativa
Given el Crypto Customer al que le envie la notificacion respondio la solicitud
When El Crypto Customer rechaza la solicitud de compra
Then La Crypto Customer Wallet me envia una notificacion indicando que el vendedor rechazo la compra