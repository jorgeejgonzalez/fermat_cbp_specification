Story: Crypto Customer Send And Revice Process
In order Completar el proceso de compra despues de la negociacion entre el Customer y el Broker
  I need enviar la cantidad de dinero negociado al Broker
    And recibir del Broker la cantidad de dinero negociado
Using Crypto Customer Wallet
  And plugin Give Fiat Cash On Hand
  And plugin Send Fiat Cash Delivery
  And plugin Make Offline Fiat Bank Deposit
  And plugin Wallet Crypto Customer
  And plugin Send Crypto
  And plugin Fiat Index

Scenario: Envio del pago en Crypto
Given el modo de pago acordado es Crypto
When Fermat procede a realizar el envio del dinero
Then Fermat envia la cantidad acordada de crypto a la direccion de la wallet del Broker
  And Fermat actualiza el balance de crypto monedas que le quedan de esa denominacion a negativo
  And Fermat recibe la cantidad crypto monedas acordada con el Broker
  And Fermat actualiza el balance de crypto monedas que le quedan de esa denominacion a positivo

Scenario: Envio del pago en Cash
Given el modo de pago acordado es Cash
When El usaurio ha echo entrega del dinero en efectivo al broker
Then Fermat recibe la cantidad crypto monedas acordada con el Broker
  And Fermat actualiza el balance de crypto monedas que le quedan de esa denominacion a positivo
  And El usuario registra la cantidad de dinero en efectivo entregado el broker
  And Fermat actualiza el balance de dinero en cash a negativo

Scenario: Envio del pago en Transferencia Bancaria
Given el modo de pago acordado es  Transferencia Bancaria
When Se realiza el deposito en el banco y el Broker confirma dicho deposito
Then Fermat recibe la cantidad crypto monedas acordada con el Broker
  And Fermat actualiza el balance de crypto monedas que le quedan de esa denominacion a positivo
  And El usuario registra la cantidad de dinero entregado por transferencia bancaria
  And Fermat actualiza el balance de dinero en cash a negativo
  